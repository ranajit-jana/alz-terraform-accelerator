#!/usr/bin/env bash
# Run a command inside this repo's devcontainer, e.g.:
#   ./scripts/dcx.sh az account show
#   ./scripts/dcx.sh terraform plan
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

exec devcontainer exec --workspace-folder "$repo_root" "$@"
