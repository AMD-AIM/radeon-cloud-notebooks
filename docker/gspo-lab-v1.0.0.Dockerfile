ARG BASE_IMAGE=tgiantso/gspo-lab@sha256:cdb7777bd26c785c882d0e1e872edd5326955a911d684752df44fe7cf4442a9a
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
