# Upstream AI Academy: vllm/vllm-openai-rocm:v0.16.0
# Build from the repository root. Override BASE_IMAGE only to change registry access.
ARG BASE_IMAGE=vllm/vllm-openai-rocm@sha256:4566dbfa83e2769394d8e1191638549f19a48ae63a96e0cbfe4b12c06d38bb09
FROM ${BASE_IMAGE}
USER root
ENV HF_ENDPOINT=https://hf-mirror.com \
    HF_HOME=/workspace/.cache/huggingface \
    PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/ \
    UV_DEFAULT_INDEX=https://mirrors.aliyun.com/pypi/simple/
LABEL org.opencontainers.image.source="https://github.com/AMD-AIM/radeon-cloud-notebooks" \
      org.opencontainers.image.description="AI Academy Chatbot with vLLM on AMD Radeon Cloud" \
      ai.academy.source.commit="0aad57d5e22939be393d8a520e46a5ef39ac9175" \
      ai.academy.base.digest="sha256:4566dbfa83e2769394d8e1191638549f19a48ae63a96e0cbfe4b12c06d38bb09"

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && rm -f /etc/ssh/ssh_host_*
COPY docker/chatbot_vllm/platform-requirements.lock.txt \
     docker/chatbot_vllm/compute-baseline.json \
     docker/chatbot_vllm/pip-check-baseline.txt \
     docker/chatbot_vllm/verify-compute.py /opt/course-platform/
# This locks the original Academy startup supplement, not a new compute environment.
RUN python3 -m pip install --no-cache-dir --no-deps --require-hashes \
        -r /opt/course-platform/platform-requirements.lock.txt \
    && python3 /opt/course-platform/verify-compute.py \
    && python3 -m ipykernel install --prefix=/usr/local --name=python3 --display-name="Python 3 (course)"
COPY chatbot_vllm.ipynb /opt/course/chatbot_vllm.ipynb
COPY docker/chatbot_vllm/start-services.sh /usr/local/bin/start-course-services
RUN chmod 755 /usr/local/bin/start-course-services
WORKDIR /workspace
EXPOSE 8888 22
ENTRYPOINT ["/usr/local/bin/start-course-services"]
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--ServerApp.root_dir=/workspace"]
