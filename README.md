# Radeon Cloud Notebooks

本仓库包含面向 AMD Radeon Cloud 单卡 48GB W7900D 的实践课程，基于 AMD AI Academy Notebook 逐步适配。

## 原始来源

- 原始仓库：<https://github.com/AMD-ROCm-Internal/ai-academy-internal>
- 来源 commit：`0aad57d5e22939be393d8a520e46a5ef39ac9175`
- 固定版本：<https://github.com/AMD-ROCm-Internal/ai-academy-internal/tree/0aad57d5e22939be393d8a520e46a5ef39ac9175>
- 原始 Notebook 归档：[upstream-ai-academy 分支](https://github.com/AMD-AIM/radeon-cloud-notebooks/tree/upstream-ai-academy)
- Radeon 适配分支：`radeon`（默认分支）

## Lab Index

以固定来源 commit 约定的课程镜像为基础；`None (uses default)` 已解析为上游默认镜像 `vllm/vllm-openai-rocm:v0.26.0`。Radeon Cloud 镜像必须预装 JupyterLab，本项目同时安装 sshd 以支持 SSH 调试。逐课使用 Dockerfile 补齐平台组件；基础镜像或计算环境出现明确问题后，再讨论支持 Radeon 的对应版本或较新的 ROCm 镜像。

| 课程 | Notebook | 上游镜像 | Radeon 镜像 | Dockerfile | 状态 |
| --- | --- | --- | --- | --- | --- |
| Agents 101 | [build_airbnb_agent_mcp.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/build_airbnb_agent_mcp.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/build_airbnb_agent_mcp/Dockerfile`（待建立） | 待整理 |
| Agents 201 | [Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb) | `shailensobhee1/agentic-ai-adk-tutorial:20260317` | 待确认 | `docker/Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs/Dockerfile`（待建立） | 待整理 |
| AI on AMD | [chatbot_vllm.ipynb](chatbot_vllm.ipynb) | `vllm/vllm-openai-rocm:v0.16.0` | 本地 `radeon-cloud-notebooks:chatbot-stage1-20261010-03` | [Dockerfile](docker/chatbot_vllm/Dockerfile) | 第 1 层通过；原 4B 模型、128K 上下文 |
| Diffusion Models - Image Generation | [diffusion-models_image-generation-lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/diffusion-models_image-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/diffusion-models_image-generation-lab/Dockerfile`（待建立） | 待整理 |
| Diffusion Models - Video Generation | [diffusion-models_video-generation-lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/diffusion-models_video-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/diffusion-models_video-generation-lab/Dockerfile`（待建立） | 待整理 |
| Finetuning Your Own R1 Reasoning Model on Unsloth | [unsloth_Llama3_1_8B_GRPO.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/unsloth_Llama3_1_8B_GRPO.ipynb) | `rocm/vllm-dev:main` | 待确认 | `docker/unsloth_Llama3_1_8B_GRPO/Dockerfile`（待建立） | 待整理 |
| GPU Optimization for LLM Inference - Lab 1 | [GPU-Optimization-for-LLM-inference/Lab1.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GPU-Optimization-for-LLM-inference/Lab1.ipynb) | `nmanohar441/llms-benchmark:v1` | 待确认 | `docker/GPU-Optimization-for-LLM-inference/Lab1/Dockerfile`（待建立） | 待整理 |
| GPU Optimization for LLM Inference - Lab 2 | [GPU-Optimization-for-LLM-inference/Lab2.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GPU-Optimization-for-LLM-inference/Lab2.ipynb) | `nmanohar441/llms-benchmark:v1` | 待确认 | `docker/GPU-Optimization-for-LLM-inference/Lab2/Dockerfile`（待建立） | 待整理 |
| HF on AMD | [transformers_intro.ipynb](transformers_intro.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 本地 `radeon-cloud-notebooks:transformers-stage1-20261010-02` | [Dockerfile](docker/transformers_intro/Dockerfile) | 第 1 层通过；仅环境文案适配 |
| LLM Serving Inference with vLLM and MI300X GPUs | [mi300x-vllm-serving.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/mi300x-vllm-serving.ipynb) | `rocm/vllm-dev:open-mi300-08052025` | 待确认 | `docker/mi300x-vllm-serving/Dockerfile`（待建立） | 待整理 |
| Reinforcement Learning with LLMs | [GSPO/GSPO-notebook.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GSPO/GSPO-notebook.ipynb) | `tgiantso/gspo-lab:v1.0.0` | 待确认 | `docker/GSPO/GSPO-notebook/Dockerfile`（待建立） | 待整理 |
| Triton Kernel Development on AMD Instinct GPUs | [ai_academy_triton_kernel_development.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/ai_academy_triton_kernel_development.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/ai_academy_triton_kernel_development/Dockerfile`（待建立） | 待整理 |
| CUDA-to-HIP Conversion | [CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab/Dockerfile`（待建立） | 待整理 |
| HIP Programming Basics | [CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab/Dockerfile`（待建立） | 待整理 |
| HIP Kernel Programming | [CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab/Dockerfile`（待建立） | 待整理 |
| GPU Debugging with ROCgdb | [CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab/Dockerfile`（待建立） | 待整理 |
| GPU Profiling with rocprof | [CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | `docker/CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab/Dockerfile`（待建立） | 待整理 |

课程顺序与原始 AI Academy 一致；尚未引入 Radeon 分支的 Notebook 链接指向原始归档。Transformers 与 Chatbot 的最终适配版本已通过 W7900D 单卡容器的第 1 层验证；Radeon Cloud 与用户 UI 验收尚未开始。其余课程以表格状态为准。

“Radeon 镜像”记录最终 Cloud 运行镜像的 tag/digest 及必要运行说明。先按每个 Notebook 一个 Dockerfile 管理，在逐课迁移时创建；表内“待建立”为规划路径，文件创建后改成链接。后续环境一致且完成相应验证的课程可以共用 Dockerfile，并同步各行引用。

镜像准备尽量保留上游计算环境和原 Notebook；具体依赖及启动配置逐课确认。当前待确认项尚未完成验证；第 1 层通过仍需 Radeon Cloud 容器和用户 Jupyter UI 验收，三层通过后才标为“已验证”。

## 已建立的课程镜像

从仓库根目录构建对应 Dockerfile。国内构建通过 `--build-arg BASE_IMAGE=m.daocloud.io/docker.io/vllm/vllm-openai-rocm@sha256:<Dockerfile 中的固定 digest>` 获取同一上游镜像。平台补充依赖固定版本与 SHA256，保留原计算包；预装 JupyterLab/kernel、ipywidgets、ihighlight、jupyter-server-proxy 与 openssh-server。

运行时只分配一张 GPU；Chatbot 的 Ray/vLLM 栈使用 `HIP_VISIBLE_DEVICES` 做单卡选择，不在镜像中固化宿主机卡号。默认入口启动 JupyterLab（8888）和 SSH（22），首次将内置 Notebook 复制到 `/workspace`，已有文件保留。Jupyter 保留 token 认证；SSH 公钥在运行时提供（可设置 `SSH_AUTHORIZED_KEYS_FILE`），主机密钥在容器启动时生成。默认服务入口以 root 运行；Cloud 的实际入口、用户、认证注入和挂载在接入时另行核验。

Chatbot 保留原 `Qwen/Qwen3-4B-Instruct-2507`，将 `max_model_len` 从默认 262144 减半为 131072，以适应单卡 KV cache 容量；这是上下文上限，未做满长度压测。Transformers 保留原模型、参数和全部计算代码。两课已有的当前硬件与云平台描述已同步为 W7900D / Radeon Cloud。

表内“本地”镜像仅存在于 W7900D-proxy，还未推送 registry，不能作为 gallery 的远程拉取地址。最终发布 tag/digest 及 Cloud 验收结果待确认后更新。
