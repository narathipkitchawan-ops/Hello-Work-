#!/usr/bin/env bash
set -euo pipefail

# Install Google's official Gemini CLI package from the npm registry.

if ! command -v node >/dev/null 2>&1; then
  echo "Error: Node.js is required. Install Node.js 20 or newer, then try again." >&2
  exit 1
fi

if ! command -v npm >/dev/null 2>&1; then
  echo "Error: npm is required. Install Node.js 20 or newer (npm is included), then try again." >&2
  exit 1
fi

node_major="$(node -p "Number(process.versions.node.split('.')[0])")"
if (( node_major < 20 )); then
  echo "Error: Node.js 20 or newer is required; found $(node --version)." >&2
  exit 1
fi

echo "Installing Google's official Gemini CLI..."
npm install --global @google/gemini-cli

echo "Installation complete. Run 'gemini' to start Gemini CLI."
