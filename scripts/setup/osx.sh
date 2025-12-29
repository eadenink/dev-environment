#!/bin/bash
source "~/scripts/utils/ask_yes_no.sh"

# Install brew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

echo "Installing cli tools..."
brew install neovim tmux tpm fzf grep zsh ghostty go lazygit lazydocker eza zoxide docker kubernetes-cli postgresql starship gh uv
echo "Installing gui apps..."
brew install --cask obsidian postman gcloud-cli font-jetbrains-mono-nerd-font google-drive

echo "Installing python using uv"
uv python install --default

echo "Starting services..."
brew services start docker
brew services start postgresql

if ask_yes_no "Do you want to login to GitHub CLI?" "y"; then
    gh auth login
else
    echo "Skipping GitHub CLI login."
fi
