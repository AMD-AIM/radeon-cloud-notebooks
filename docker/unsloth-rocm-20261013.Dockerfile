ARG BASE_IMAGE=unsloth/unsloth-rocm@sha256:006962fd770846bb1cd0ce3bf3c1e1fe7b343a491bac99f31771fa9b7d2d4a3c
FROM ${BASE_IMAGE}

# OpenSSH for Radeon Cloud access and debugging.
RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-server \
    && rm -rf /var/lib/apt/lists/*

# JupyterLab for running notebooks and interactive exercises.
ARG PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/
RUN python3 -m pip install --no-cache-dir jupyterlab ipykernel ipywidgets

# Basic settings and startup reset for local validation; Radeon Cloud manages runtime settings.
WORKDIR /workspace
EXPOSE 8888 22
ENTRYPOINT []
CMD []
