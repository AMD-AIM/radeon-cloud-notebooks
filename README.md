# Radeon Cloud Notebooks

Hands-on notebooks for AMD Radeon Cloud on a single AMD Radeon™ PRO W7900D (48GB), adapted from [AI Academy](https://notebooks.amd.com/ai-academy).

Source: [AMD AI Academy](https://github.com/AMD-ROCm-Internal/ai-academy-internal). Original notebooks are preserved in the [upstream-ai-academy branch](https://github.com/AMD-AIM/radeon-cloud-notebooks/tree/upstream-ai-academy).

## Lab Index

| Course | Notebook | AI Academy base image | Dockerfile |
| --- | --- | --- | --- |
| Agents 101 | [build_airbnb_agent_mcp.ipynb](build_airbnb_agent_mcp.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| Agents 201 | [Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb](Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb) | `shailensobhee1/agentic-ai-adk-tutorial:20260317` | [Dockerfile](docker/agentic-ai-adk-tutorial-20260317.Dockerfile) |
| AI on AMD | [chatbot_vllm.ipynb](chatbot_vllm.ipynb) | `vllm/vllm-openai-rocm:v0.16.0` | [Dockerfile](docker/vllm-openai-rocm-v0.16.0.Dockerfile) |
| Diffusion Models - Image Generation | [diffusion-models_image-generation-lab.ipynb](diffusion-models_image-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| Diffusion Models - Video Generation | [diffusion-models_video-generation-lab.ipynb](diffusion-models_video-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0-web.Dockerfile) |
| Finetuning Your Own R1 Reasoning Model on Unsloth | [unsloth_Llama3_1_8B_GRPO.ipynb](unsloth_Llama3_1_8B_GRPO.ipynb) | `rocm/vllm-dev:main` | [Dockerfile](docker/unsloth-rocm-20261013.Dockerfile) |
| GPU Optimization for LLM Inference - Lab 1 | [GPU-Optimization-for-LLM-inference/Lab1.ipynb](GPU-Optimization-for-LLM-inference/Lab1.ipynb) | `nmanohar441/llms-benchmark:v1` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0-benchmark.Dockerfile) |
| GPU Optimization for LLM Inference - Lab 2 | [GPU-Optimization-for-LLM-inference/Lab2.ipynb](GPU-Optimization-for-LLM-inference/Lab2.ipynb) | `nmanohar441/llms-benchmark:v1` | [Dockerfile](docker/llms-benchmark-v1.Dockerfile) |
| HF on AMD | [transformers_intro.ipynb](transformers_intro.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| LLM Serving Inference with vLLM and MI300X GPUs | [mi300x-vllm-serving.ipynb](mi300x-vllm-serving.ipynb) | `rocm/vllm-dev:open-mi300-08052025` | [Dockerfile](docker/vllm-openai-rocm-v0.16.0.Dockerfile) |
| Reinforcement Learning with LLMs | [GSPO/GSPO-notebook.ipynb](GSPO/GSPO-notebook.ipynb) | `tgiantso/gspo-lab:v1.0.0` | [Dockerfile](docker/gspo-lab-v1.0.0.Dockerfile) |
| Triton Kernel Development on AMD Instinct GPUs | [ai_academy_triton_kernel_development.ipynb](ai_academy_triton_kernel_development.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| CUDA-to-HIP Conversion | [CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb](CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| HIP Programming Basics | [CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb](CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| HIP Kernel Programming | [CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb](CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| GPU Debugging with ROCgdb | [CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb](CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
| GPU Profiling with rocprof | [CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb](CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) |
