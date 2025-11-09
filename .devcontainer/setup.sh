#!/usr/bin/env bash
set -euo pipefail
# Remember where the script started (repo root when postCreateCommand runs)
START_DIR="$(pwd)"


echo "[setup] Ensuring docker CLI is present (feature provides daemon + group)"
if ! command -v docker >/dev/null 2>&1; then
  sudo apt-get update && sudo apt-get install -y docker.io
fi

# The Dev Container feature already handles docker group; just verify:
if ! groups | grep -q docker; then
  echo "[setup] Adding $(whoami) to docker group"
  sudo usermod -aG docker "$(whoami)" || true
fi

