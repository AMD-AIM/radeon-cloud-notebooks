# AI Academy Labs

This repository contains hands-on labs for AMD AI Academy courses.

The default image is: `vllm/vllm-openai-rocm:v0.26.0`.

## Lab Index

Check the production server for the latest updates: https://github.com/ROCm/jupyterServer.

| Course Name | Notebook | Docker Image |
|-------------|----------|--------------|
| Agents 101 | `build_airbnb_agent_mcp.ipynb` | None (uses default) |
| Agents 201 | `Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb` | `shailensobhee1/agentic-ai-adk-tutorial:20260317` |
| AI on AMD | `chatbot_vllm.ipynb` | `vllm/vllm-openai-rocm:v0.16.0` |
| Diffusion Models - Image Generation | `diffusion-models_image-generation-lab.ipynb` | None (uses default) |
| Diffusion Models - Video Generation | `diffusion-models_video-generation-lab.ipynb` | None (uses default) |
| Finetuning Your Own R1 Reasoning Model on Unsloth | `unsloth_Llama3_1_8B_GRPO.ipynb` | `rocm/vllm-dev:main` |
| GPU Optimization for LLM Inference - Lab 1 | `GPU-Optimization-for-LLM-inference/Lab1.ipynb` | `nmanohar441/llms-benchmark:v1` |
| GPU Optimization for LLM Inference - Lab 2 | `GPU-Optimization-for-LLM-inference/Lab2.ipynb` | `nmanohar441/llms-benchmark:v1` |
| HF on AMD | `transformers_intro.ipynb` | None (uses default) |
| LLM Serving Inference with vLLM and MI300X GPUs | `mi300x-vllm-serving.ipynb` | `rocm/vllm-dev:open-mi300-08052025` |
| Reinforcement Learning with LLMs | `GSPO/GSPO-notebook.ipynb` | `tgiantso/gspo-lab:v1.0.0` |
| Triton Kernel Development on AMD Instinct GPUs | `ai_academy_triton_kernel_development.ipynb` | None (uses default) |
| CUDA-to-HIP Conversion | `CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb` | None (uses default) |
| HIP Programming Basics | `CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb` | None (uses default) |
| HIP Kernel Programming | `CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb` | None (uses default) |
| GPU Debugging with ROCgdb | `CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb` | None (uses default) |
| GPU Profiling with rocprof | `CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb` | None (uses default) |
## IMPORTANT
In order to update the base image, you need to update the jupyter server. See an example commit here: https://github.com/indianspeedster/jupyterServer/commit/3928c138ceadadfa49878403051c7acff5a7f1ac.
