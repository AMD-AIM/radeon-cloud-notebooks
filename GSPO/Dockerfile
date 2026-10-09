FROM rocm/vllm:rocm7.0.0_vllm_0.11.2_20251210
WORKDIR /workspace

ENV TOKENIZERS_PARALLELISM=false
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies with compatible NumPy version
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    "numpy<2.0" \
    transformers \
    datasets \
    trl \
    matplotlib \
    accelerate \
    safetensors \
    jupyter \
    ipykernel

CMD ["/bin/bash"]



