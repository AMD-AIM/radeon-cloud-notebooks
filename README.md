# Radeon Cloud Notebooks

本仓库包含面向 AMD Radeon Cloud 单卡 48GB W7900D 的实践课程，基于 AMD AI Academy Notebook 逐步适配。

## 原始来源

- 原始仓库：<https://github.com/AMD-ROCm-Internal/ai-academy-internal>
- 来源 commit：`0aad57d5e22939be393d8a520e46a5ef39ac9175`
- 固定版本：<https://github.com/AMD-ROCm-Internal/ai-academy-internal/tree/0aad57d5e22939be393d8a520e46a5ef39ac9175>
- 原始 Notebook 归档：[upstream-ai-academy 分支](https://github.com/AMD-AIM/radeon-cloud-notebooks/tree/upstream-ai-academy)
- Radeon 适配分支：`radeon`（默认分支）

## Lab Index

以固定来源 commit 约定的课程镜像为基础；`None (uses default)` 已解析为上游默认镜像 `vllm/vllm-openai-rocm:v0.26.0`。Radeon Cloud 镜像必须预装 JupyterLab，本项目同时安装 sshd 以支持 SSH 调试。按镜像环境使用独立 Dockerfile 补齐平台组件，兼容的课程可以共用；基础镜像或计算环境出现明确问题后，再讨论支持 Radeon 的对应版本或较新的 ROCm 镜像。

| 课程 | Notebook | 上游镜像 | Radeon 镜像 | Dockerfile | 状态 |
| --- | --- | --- | --- | --- | --- |
| Agents 101 | [build_airbnb_agent_mcp.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/build_airbnb_agent_mcp.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| Agents 201 | [Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/Tutorial_Powering_Google_ADK_on_AMD_Platform_and_Local_LLMs.ipynb) | `shailensobhee1/agentic-ai-adk-tutorial:20260317` | 待确认 | 待选择 | 待整理 |
| AI on AMD | [chatbot_vllm.ipynb](chatbot_vllm.ipynb) | `vllm/vllm-openai-rocm:v0.16.0` | `10.5.10.12:1808/radeon-cloud-global/ai-academy_in_radeon-cloud:vllm-openai-rocm-v0.16.0` | [Dockerfile](docker/vllm-openai-rocm-v0.16.0.Dockerfile) | 第 1 层通过；Harbor 已发布；Cloud/UI 待验；原 4B、128K 上下文 |
| Diffusion Models - Image Generation | [diffusion-models_image-generation-lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/diffusion-models_image-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| Diffusion Models - Video Generation | [diffusion-models_video-generation-lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/diffusion-models_video-generation-lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| Finetuning Your Own R1 Reasoning Model on Unsloth | [unsloth_Llama3_1_8B_GRPO.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/unsloth_Llama3_1_8B_GRPO.ipynb) | `rocm/vllm-dev:main` | 待确认 | 待选择 | 待整理 |
| GPU Optimization for LLM Inference - Lab 1 | [GPU-Optimization-for-LLM-inference/Lab1.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GPU-Optimization-for-LLM-inference/Lab1.ipynb) | `nmanohar441/llms-benchmark:v1` | 待确认 | 待选择 | 待整理 |
| GPU Optimization for LLM Inference - Lab 2 | [GPU-Optimization-for-LLM-inference/Lab2.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GPU-Optimization-for-LLM-inference/Lab2.ipynb) | `nmanohar441/llms-benchmark:v1` | 待确认 | 待选择 | 待整理 |
| HF on AMD | [transformers_intro.ipynb](transformers_intro.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | `10.5.10.12:1808/radeon-cloud-global/ai-academy_in_radeon-cloud:vllm-openai-rocm-v0.26.0` | [Dockerfile](docker/vllm-openai-rocm-v0.26.0.Dockerfile) | 第 1 层通过；Harbor 已发布；Cloud/UI 待验 |
| LLM Serving Inference with vLLM and MI300X GPUs | [mi300x-vllm-serving.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/mi300x-vllm-serving.ipynb) | `rocm/vllm-dev:open-mi300-08052025` | 待确认 | 待选择 | 待整理 |
| Reinforcement Learning with LLMs | [GSPO/GSPO-notebook.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/GSPO/GSPO-notebook.ipynb) | `tgiantso/gspo-lab:v1.0.0` | 待确认 | 待选择 | 待整理 |
| Triton Kernel Development on AMD Instinct GPUs | [ai_academy_triton_kernel_development.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/ai_academy_triton_kernel_development.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| CUDA-to-HIP Conversion | [CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/CUDA_to_HIP_Conversion_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| HIP Programming Basics | [CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/HIP_Programming_Basics_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| HIP Kernel Programming | [CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/HIP_Kernel_Programming_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| GPU Debugging with ROCgdb | [CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/GPU_Debugging_with_ROCgdb_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |
| GPU Profiling with rocprof | [CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb](https://github.com/AMD-AIM/radeon-cloud-notebooks/blob/upstream-ai-academy/CUDA-to-HIP_Migration_Labs/GPU_Profiling_with_rocprof_Lab.ipynb) | `vllm/vllm-openai-rocm:v0.26.0` | 待确认 | 待选择 | 待整理 |

课程顺序与原始 AI Academy 一致；尚未引入 Radeon 分支的 Notebook 链接指向原始归档。Transformers 与 Chatbot 的当前默认阿里云 ARG 版本已重新构建，通过第 1 层并在用户 review/授权后发布到表内 Harbor 地址。Radeon Cloud 与用户 UI 验收尚未开始。其余课程以表格状态为准。

“Radeon 镜像”记录最终 Cloud 运行镜像的 tag/digest 及必要运行说明。Dockerfile 按基础镜像名称和版本命名；环境兼容且分别通过验证的课程可以共用。未迁移课程标为“待选择”，确认后再填写文件链接。

镜像准备尽量保留上游计算环境和原 Notebook；具体依赖及启动配置逐课确认。当前待确认项尚未完成验证；第 1 层通过仍需 Radeon Cloud 容器和用户 Jupyter UI 验收，三层通过后才标为“已验证”。

## 已建立的课程镜像

从仓库根目录构建对应 Dockerfile（`docker build -f docker/<镜像名称>-<版本>.Dockerfile -t <本地镜像名> .`）。国内构建通过 `--build-arg BASE_IMAGE=m.daocloud.io/docker.io/vllm/vllm-openai-rocm@sha256:<Dockerfile 中的固定 digest>` 获取同一上游镜像。保留原计算包，仅补充 openssh-server 和不指定版本的 jupyterlab、ipykernel、ipywidgets；实际安装版本随验证记录留档。Dockerfile 末尾统一放 SSH、JupyterLab 和基础设置/reset 三块；课程专用调整按需放在前部。

Dockerfile 不设置 HF_ENDPOINT、HF_HOME、PIP_INDEX_URL 或 UV_DEFAULT_INDEX 的运行时 ENV。构建下载源使用 `ARG PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/`，默认阿里云，可用 `--build-arg PIP_INDEX_URL=<索引地址>` 覆盖；该设置不保留到容器默认环境，运行时网络配置由用户提供。

运行时只分配一张 GPU；Chatbot 使用 `HIP_VISIBLE_DEVICES`，不在镜像中固化宿主机卡号。镜像显式设置 `ENTRYPOINT []` 和 `CMD []`，由 Radeon Cloud 提供启动命令；本地可先指定保持进程再进入启动 JupyterLab。沿用上游默认用户，不额外处理 SSH 密钥。镜像不内置单课 Notebook，文件由 gallery 下发或挂载到 `/workspace`。SSH 使用 Cloud 的 Profile 公钥机制，实际启动、认证及挂载在 Cloud 层验证。

Chatbot 保留原 `Qwen/Qwen3-4B-Instruct-2507`，将 `max_model_len` 从默认 262144 减半为 131072，以适应单卡 KV cache 容量；这是上下文上限，未做满长度压测。Transformers 保留原模型、参数和全部计算代码。两课已有的当前硬件与云平台描述已同步为 W7900D / Radeon Cloud。

表内两镜像已在用户 review 和明确授权后上传阿里云及 Radeon Cloud Harbor，并回读核对 manifest/config/layers 与已测镜像一致。用户手动 enable、创建 gallery/启动实例后，继续 Cloud 容器及 Jupyter UI 验证。镜像仅提供环境，Notebook 文件由 gallery 下发或挂载。

| Tag | Aliyun OCI index digest | Harbor linux/amd64 manifest digest |
| --- | --- | --- |
| `vllm-openai-rocm-v0.26.0` | `sha256:9e42756926d6709955501f1a9fbb1faf9d3c7a2895b1ed1b99619725ac30aa36` | `sha256:bdbdb97c73ee92015afa5103243ca3b63b17f90d7cfc0362e8a982f251692ba3` |
| `vllm-openai-rocm-v0.16.0` | `sha256:d538db1293dc9162ea7152692e623ec7b03171e74a1bafaf69e2da6704adee32` | `sha256:f92b31ded5f262e2ec3e3cbc9c6905eb52504afb1e47139a07ca9612606bb1e2` |
