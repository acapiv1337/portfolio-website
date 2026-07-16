---
title: Pose Monkey Detection
description: Real-time pose classification web app — captures webcam frames, runs YOLOv8s-pose for keypoint extraction + XGBoost for gesture classification. 4 classes: heart-attack, idea, stand, think.
tech: Python, YOLOv8, XGBoost, FastAPI, Vue 3, WebSocket, Docker, Nginx
status: live
published: true
---

Real-time pose classification web app. Captures webcam frames via WebSocket, runs **YOLOv8s-pose** for keypoint extraction + **XGBoost** for gesture classification (4 classes: heart-attack, idea, stand, think).

### Features

- **Real-time streaming** — WebSocket-based pipeline: webcam → canvas capture → base64 JPEG → YOLO keypoints → XGBoost classification → overlay
- **Two input modes** — 📷 Live webcam stream + 📁 Upload single image
- **Dual-panel layout** — Webcam/image left, classification result + reference monkey pose right
- **Login gate** — Native `window.prompt()` password protection
- **Canvas-based** frame capture at ~6.5 FPS, 320×240 resolution

### Architecture

```
Vue 3 + Vite (port 5173) ← WebSocket/base64-jpeg → FastAPI + YOLOv8 + XGBoost (port 8001)
                   ↕ Nginx reverse proxy                          
```

- **Frontend:** Vue 3 + Vite, Comic Neue font, full-screen `bg.jpeg` background
- **Backend:** FastAPI, YOLOv8s-pose, XGBoost (22 upper-body COCO keypoint features), CPU-only
- **Infrastructure:** Docker Compose, Nginx proxy (/ws, /predict, /static), GitHub Actions deploy

### Deploy

Self-hosted runner on gensokyo. Push to `main` → `docker compose -f docker-compose.yml -f docker-compose.server.yml up -d --build --force-recreate`.
