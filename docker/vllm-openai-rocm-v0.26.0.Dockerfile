ARG BASE_IMAGE=vllm/vllm-openai-rocm@sha256:5709fafe47123becb2f5e61c32d0b97beff1a629bb40bb753c15464f69a97a18
FROM ${BASE_IMAGE}

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
