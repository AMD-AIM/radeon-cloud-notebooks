ARG BASE_IMAGE=crpi-ygzb1jbfyj9pjrm6.cn-shenzhen.personal.cr.aliyuncs.com/images_hana/ai-academy_in_radeon-cloud@sha256:d64e05e0bbc307f12eaa26be17359845ec2a6dbed49cc8d47b18796d89946047
ARG OLLAMA_IMAGE=m.daocloud.io/docker.io/ollama/ollama@sha256:b64e5bb0aa2432a0911c95b3ad4b63018818955e791df02c02276d9f225a9366
FROM ${OLLAMA_IMAGE} AS ollama
FROM ${BASE_IMAGE}

ARG PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/

# Course application dependencies and the default notebook kernel.
COPY docker/agentic-ai-adk-tutorial-native-tools.requirements.txt /tmp/ai-academy-app-requirements.txt
RUN python3 -m venv /opt/ai-academy-app \
    && uv pip install --no-cache --python /opt/ai-academy-app/bin/python --only-binary=:all: --index-url "${PIP_INDEX_URL}" -r /tmp/ai-academy-app-requirements.txt \
    && /opt/ai-academy-app/bin/python -m pip check \
    && /opt/ai-academy-app/bin/python -m ipykernel install --prefix=/usr/local --name=python3 --display-name="Python 3 (ipykernel)" \
    && rm /tmp/ai-academy-app-requirements.txt

# Ollama runtime.
RUN rm -rf /usr/local/lib/ollama
COPY --from=ollama /usr/bin/ollama /usr/local/bin/ollama
COPY --from=ollama /usr/lib/ollama/ /usr/local/lib/ollama/
