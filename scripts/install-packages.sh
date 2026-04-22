#!/usr/bin/env bash
# Install the system packages gud-tmux expects: tmux itself plus the clipboard
# bridge for the platform. TPM plugins are submodules and need no system
# packages.
#
# Safe to re-run: brew/apt both skip packages that are already present.

set -euo pipefail

PACKAGES_MACOS=(
    tmux
    reattach-to-user-namespace   # referenced in tmux.conf default-command guard
)

PACKAGES_DEBIAN=(
    tmux
    xclip                        # clipboard fallback used by OSC52 chain
)

die() { printf 'install-packages: %s\n' "$*" >&2; exit 1; }

case "$(uname -s)" in
    Darwin)
        command -v brew >/dev/null 2>&1 || die "brew not found. Install Homebrew first: https://brew.sh"
        echo "==> brew install ${PACKAGES_MACOS[*]}"
        brew install "${PACKAGES_MACOS[@]}"
        ;;
    Linux)
        if ! command -v apt-get >/dev/null 2>&1; then
            die "only apt-based distros are handled. Your PM is not apt."
        fi
        echo "==> apt-get install ${PACKAGES_DEBIAN[*]}"
        sudo apt-get update
        sudo apt-get install -y "${PACKAGES_DEBIAN[@]}"
        ;;
    *)
        die "unsupported OS: $(uname -s)"
        ;;
esac
