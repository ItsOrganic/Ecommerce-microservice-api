#!/bin/bash
set -e
# Optional check for openapi spec if present
if [ -f openapi.yaml ] || [ -f openapi.yml ]; then
echo "Validating openapi..."
# Use spectral if installed
if command -v spectral &>/dev/null; then
spectral lint openapi.yaml || spectral lint openapi.yml || true
fi
fi