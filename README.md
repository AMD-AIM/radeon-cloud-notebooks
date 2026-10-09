# Radeon Cloud Notebooks

本仓库包含面向 AMD Radeon Cloud 单卡 48GB W7900D 的实践课程，基于 AMD AI Academy Notebook 逐步适配。

## 原始来源

- 原始仓库：<https://github.com/AMD-ROCm-Internal/ai-academy-internal>
- 来源 commit：`0aad57d5e22939be393d8a520e46a5ef39ac9175`
- 固定版本：<https://github.com/AMD-ROCm-Internal/ai-academy-internal/tree/0aad57d5e22939be393d8a520e46a5ef39ac9175>
- 原始 Notebook 归档：[upstream-ai-academy 分支](https://github.com/AMD-AIM/radeon-cloud-notebooks/tree/upstream-ai-academy)
- Radeon 适配分支：`radeon`（默认分支）

## Lab Index

先使用固定来源 commit 的上游课程镜像验证；`None (uses default)` 已解析为上游默认镜像 `vllm/vllm-openai-rocm:v0.26.0`。只有上游镜像出现明确问题后，才评估支持 Radeon 的对应版本或较新的 ROCm 镜像，确认方案后再适配和复验。

| 课程 | Notebook | 上游镜像 | Radeon 镜像 | 状态 |
| --- | --- | --- | --- | --- |
| Agents 101 | [build_airbnb_agent_mcp.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/build_airbnb_agent_mcp.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| Agents 201 | [Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb) | `shailensobhee1/agentic-ai-adk-tutorial:20260317` | 待确认 | 待整理 |
| AI on AMD | [chatbot_vllm.ipynb](chatbot_vllm.ipynb) | `vllm/vllm-openai-rocm:v0.16.0` | 待确认 | 待整理 |
| Diffusion Models - Image Generation | [diffusion-models_image-generation-lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/diffusion-models_image-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| Diffusion Models - Video Generation | [diffusion-models_video-generation-lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/diffusion-models_video-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| Finetuning Your Own R1 Reasoning Model on Unsloth | [unsloth_Llama3_1_8B_GRPO.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/unsloth_Llama3_1_8B_GRPO.ipynb) | `rocm/vllm-dev:main` | 待确认 | 待整理 |
| GPU Optimization for LLM Inference - Lab 1 | [GPU-Optimization-for-LLM-inference/Lab1.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GPU-Optimization-for-LLM-inference/Lab1.ipynb) | `nmanohar441/llms-benchmark:v1` | 待确认 | 待整理 |
| GPU Optimization for LLM Inference - Lab 2 | [GPU-Optimization-for-LLM-inference/Lab2.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GPU-Optimization-for-LLM-inference/Lab2.ipynb) | `nmanohar441/llms-benchmark:v1` | 待确认 | 待整理 |
| HF on AMD | [transformers_intro.ipynb](transformers_intro.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 第 1 层准备中 |
| LLM Serving Inference with vLLM and MI300X GPUs | [mi300x-vllm-serving.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/mi300x-vllm-serving.ipynb) | `rocm/vllm-dev:open-mi300-08052025` | 待确认 | 待整理 |
| Reinforcement Learning with LLMs | [GSPO/GSPO-notebook.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GSPO/GSPO-notebook.ipynb) | `tgiantso/gspo-lab:v1.0.0` | 待确认 | 待整理 |
| Triton Kernel Development on AMD Instinct GPUs | [ai_academy_triton_kernel_development.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/ai_academy_triton_kernel_development.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| CUDA-to-HIP Conversion | [CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| HIP Programming Basics | [CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| HIP Kernel Programming | [CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| GPU Debugging with ROCgdb | [CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |
| GPU Profiling with rocprof | [CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待整理 |

课程顺序与原始 AI Academy 一致；尚未引入 Radeon 分支的 Notebook 链接指向原始归档。当前课程均未完成 Radeon 适配及实机验证，后续根据实际验证结果补充运行环境与必要说明。

“Radeon 镜像”记录最终采用的镜像；沿用上游时明确注明，发生适配时记录版本、digest 及必要运行说明。当前待确认项尚未完成验证；第 1 层通过仍需 Radeon Cloud 容器和用户 Jupyter UI 验收，三层通过后才标为“已验证”。
