#!/bin/bash
set -e
if ! command -v golangci-lint &>/dev/null; then
echo "golangci-lint not installed. Run scripts/install-go-tools.sh"
exit 1
fi


echo "-> Running golangci-lint"
golangci-lint run --config ../rules/golangci.yml