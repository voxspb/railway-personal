#!/usr/bin/env bash
set -euo pipefail

# Ensure OpenClaw is installed
if ! command -v openclaw >/dev/null 2>&1; then
  npm install -g openclaw@latest
fi

# Run gateway
openclaw gateway --port "$PORT" --bind lan --allow-unconfigured
