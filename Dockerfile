# Imperial Body Avatar — MimicMotion + body intelligence (cinema-grade, lean)
# Engineered by HELIOS | 2026-04-27
# Strategy: install custom nodes only; let workflows auto-download checkpoints
# on first call. Saves ~30 GB image size + 30 min build time.
FROM runpod/worker-comfyui:5.8.5-base
RUN comfy-node-install ComfyUI-MimicMotionWrapper comfyui-videohelpersuite comfyui_controlnet_aux comfyui_ipadapter_plus
RUN echo "imperial-body-avatar v1 (HELIOS 2026-04-27)" > /imperial-build-info.txt
LABEL imperial.role=body-avatar
LABEL imperial.version=1.0.0
