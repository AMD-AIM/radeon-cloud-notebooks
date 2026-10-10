#!/usr/bin/env bash
set -euo pipefail

# Keep an existing workspace copy: persistent volumes may contain user edits.
mkdir -p /workspace
for notebook in /opt/course/*.ipynb; do
    target="/workspace/$(basename "$notebook")"
    if [[ ! -e "$target" ]]; then cp "$notebook" "$target"; fi
done
cd /workspace

if [[ $(id -u) != 0 ]]; then
    echo "The default entrypoint needs root to start sshd; use a platform entrypoint for other users." >&2
    exit 1
fi
mkdir -p /run/sshd /root/.ssh
chmod 700 /root/.ssh
if [[ -n "${SSH_AUTHORIZED_KEYS_FILE:-}" ]]; then
    install -m 600 "$SSH_AUTHORIZED_KEYS_FILE" /root/.ssh/authorized_keys
fi
# Host keys are unique to each container, never part of the built image.
ssh-keygen -A

# SSH sessions and Jupyter kernels must see the same selected GPU and mirrors.
ssh_environment=()
for key in HF_ENDPOINT HF_HOME PIP_INDEX_URL UV_DEFAULT_INDEX ROCR_VISIBLE_DEVICES HIP_VISIBLE_DEVICES CUDA_VISIBLE_DEVICES; do
    if [[ -n "${!key:-}" ]]; then
        if [[ "${!key}" =~ [[:space:]] ]]; then
            echo "Unsupported whitespace in $key" >&2; exit 1
        fi
        ssh_environment+=("$key=${!key}")
    fi
done
/usr/sbin/sshd -D -e -o PasswordAuthentication=no -o KbdInteractiveAuthentication=no \
    -o PermitRootLogin=prohibit-password -o "SetEnv=${ssh_environment[*]}" &
sshd_pid=$!
"$@" &
service_pid=$!
cleanup() {
    trap - EXIT TERM INT
    kill -TERM "$service_pid" "$sshd_pid" 2>/dev/null || true
    wait "$service_pid" "$sshd_pid" 2>/dev/null || true
}
trap cleanup EXIT
trap 'exit 143' TERM
trap 'exit 130' INT
# Stop the container if either service dies; do not leave a half-working image.
set +e
wait -n "$service_pid" "$sshd_pid"
status=$?
set -e
exit "$status"
