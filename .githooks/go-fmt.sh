#!/bin/bash
set -e
echo "-> Running gofmt and goimports"
if ! command -v goimports &>/dev/null; then
echo "goimports not installed. Run scripts/install-go-tools.sh"
exit 1
fi
FILES=$(gofmt -l .)
if [ -n "$FILES" ]; then
echo "gofmt found unformatted files:";
echo "$FILES";
exit 1
fi
# check goimports
M=$(goimports -l .)
if [ -n "$M" ]; then
echo "goimports found issues:";
echo "$M";
exit 1
fi