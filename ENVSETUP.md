# Environment Setup

This repo ships a devcontainer (`.devcontainer/devcontainer.json`) with Terraform and Azure CLI preinstalled, so you don't need to install anything locally.

## Option A: Open in VSCode (recommended)

1. Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) in VSCode.
2. Open this repo in VSCode.
3. Command Palette (`Ctrl+Shift+P`) -> **Dev Containers: Reopen in Container**.
4. Once it attaches, the integrated terminal runs inside the container - use `az`, `terraform`, `make`, etc. directly with no prefix.

## Option B: Use the devcontainer from your host terminal (dcx)

If you'd rather stay in your host terminal, `scripts/dcx.sh` runs any command inside the devcontainer:

```bash
./scripts/dcx.sh az account show
./scripts/dcx.sh terraform plan
./scripts/dcx.sh make fmt
```

For a shorter `dcx` alias, source the provided aliases file once per terminal session:

```bash
source scripts/aliases.sh
dcx az account show
dcx terraform plan
```

To have the alias available in every new terminal automatically, add this line to your shell rc file (e.g. `~/.bashrc`):

```bash
source /path/to/alz-terraform-accelerator/scripts/aliases.sh
```

## Azure login

Sign in from inside the container (device-code flow, since the container has no browser):

```bash
dcx az login
```

If your tenant requires MFA and the plain `az login` fails with an `AADSTS50076` error, target the tenant explicitly:

```bash
dcx az login --tenant <TENANT_ID>
```

Follow the printed URL and code in your host browser to complete sign-in, then verify with:

```bash
dcx az account show
```
