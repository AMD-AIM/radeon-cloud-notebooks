ARG BASE_IMAGE=shailensobhee1/agentic-ai-adk-tutorial@sha256:5805bb99b7a6e9056dcc0eba7a5d295cf1645720f656f8ebc83b490babf5bf37
FROM ${BASE_IMAGE}

ARG PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/

# Jupyter proxy for accessing the lab application.
RUN python3 -m pip install --no-cache-dir jupyter-server-proxy

# OpenSSH for Radeon Cloud access and debugging.
RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-server \
    && rm -rf /var/lib/apt/lists/*

# JupyterLab for running notebooks and interactive exercises.
RUN python3 -m pip install --no-cache-dir jupyterlab ipykernel ipywidgets

# Basic settings and startup reset for local validation; Radeon Cloud manages runtime settings.
WORKDIR /workspace
EXPOSE 8888 22
ENTRYPOINT []
CMD []
