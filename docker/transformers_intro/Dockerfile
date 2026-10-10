# Upstream AI Academy: vllm/vllm-openai-rocm:v0.26.0
# Build from the repository root. Override BASE_IMAGE only to change registry access.
ARG BASE_IMAGE=vllm/vllm-openai-rocm@sha256:5709fafe47123becb2f5e61c32d0b97beff1a629bb40bb753c15464f69a97a18
FROM ${BASE_IMAGE}
USER root
ENV HF_ENDPOINT=https://hf-mirror.com \
    HF_HOME=/workspace/.cache/huggingface \
    PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/ \
    UV_DEFAULT_INDEX=https://mirrors.aliyun.com/pypi/simple/
LABEL org.opencontainers.image.source="https://github.com/AMD-AIM/radeon-cloud-notebooks" \
      org.opencontainers.image.description="AI Academy Transformers on AMD Radeon Cloud" \
      ai.academy.source.commit="0aad57d5e22939be393d8a520e46a5ef39ac9175" \
      ai.academy.base.digest="sha256:5709fafe47123becb2f5e61c32d0b97beff1a629bb40bb753c15464f69a97a18"

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && rm -f /etc/ssh/ssh_host_*
COPY docker/transformers_intro/platform-requirements.lock.txt \
     docker/transformers_intro/compute-baseline.json \
     docker/transformers_intro/pip-check-baseline.txt \
     docker/transformers_intro/verify-compute.py /opt/course-platform/
# This locks the original Academy startup supplement, not a new compute environment.
RUN python3 -m pip install --no-cache-dir --no-deps --require-hashes \
        -r /opt/course-platform/platform-requirements.lock.txt \
    && python3 /opt/course-platform/verify-compute.py \
    && python3 -m ipykernel install --prefix=/usr/local --name=python3 --display-name="Python 3 (course)"
COPY transformers_intro.ipynb /opt/course/transformers_intro.ipynb
COPY docker/transformers_intro/start-services.sh /usr/local/bin/start-course-services
RUN chmod 755 /usr/local/bin/start-course-services
WORKDIR /workspace
EXPOSE 8888 22
ENTRYPOINT ["/usr/local/bin/start-course-services"]
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--ServerApp.root_dir=/workspace"]
