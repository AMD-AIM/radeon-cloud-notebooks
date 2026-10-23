ARG BASE_IMAGE=vllm/vllm-openai-rocm@sha256:5709fafe47123becb2f5e61c32d0b97beff1a629bb40bb753c15464f69a97a18
ARG BENCHMARK_IMAGE=nmanohar441/llms-benchmark@sha256:8302c6a7d21d0f74f2cfebcf80a76780c71ec52393551ad94462f8fb0954b78c
FROM ${BENCHMARK_IMAGE} AS benchmark
FROM ${BASE_IMAGE}

# Preserve the original course benchmark outside the platform workspace.
COPY --from=benchmark /workspace/GPU-Optimization-for-LLM-Inference /opt/GPU-Optimization-for-LLM-Inference

# OpenSSH for Radeon Cloud access and debugging.
RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-server \
    && rm -rf /var/lib/apt/lists/*

# JupyterLab for running notebooks and interactive exercises.
ARG PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/
RUN python3 -m pip install --no-cache-dir jupyterlab ipykernel ipywidgets

# Basic settings and startup reset for local validation; Radeon Cloud manages runtime settings.
ENV SHELL=/bin/bash
WORKDIR /workspace
EXPOSE 8888 22
ENTRYPOINT []
CMD []
