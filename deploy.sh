#!/bin/bash
set -euo pipefail

IMAGE="ghcr.io/acapiv1337/portfolio-website"
VERSION=$(node -p "require('./package.json').version")
REMOTE_HOST="192.168.100.169"
REMOTE_PATH="/home/acap/apps/portfolio-website"

echo "Building $IMAGE:latest (also tagged :$VERSION)..."
docker build -t "$IMAGE:latest" -t "$IMAGE:$VERSION" .

echo "Pushing images..."
docker push "$IMAGE:latest"
docker push "$IMAGE:$VERSION"

echo "Deploying on $REMOTE_HOST..."
ssh "$REMOTE_HOST" "cd $REMOTE_PATH && docker compose up -d --pull always --force-recreate"

echo "Done. Live at https://acapans.com"
