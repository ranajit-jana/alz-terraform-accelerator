# Source this file to get the `dcx` alias for this repo's devcontainer, e.g.:
#   source scripts/aliases.sh
#   dcx az account show
#   dcx terraform plan
alias dcx="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/scripts/dcx.sh"
