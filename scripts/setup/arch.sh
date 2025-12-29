#!/bin/bash
source "~/scripts/utils/ask_yes_no.sh"

echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../

echo "Installing packages from official repository..."
sudo pacman -S neovim fzf grep tmux zsh ghostty obsidian github-cli go lazygit lazydocker rclone eza zoxide docker kubectl ttf-jetbrains-mono-nerd cronie postgresql uv
echo "Installing packages from AUR..."
yay -S postman google-cloud-cli

echo "Installing python using uv"
uv python install --default

echo "Installing StarShip..."
curl -sS https://starship.rs/install.sh | sh

echo "Installing tmux plugin manager..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Enable services..."
sudo systemctl enable docker.service
sudo systemctl enable cronie.service
sudo systemctl enable postgresql.service


if ask_yes_no "Do you want to login to GitHub CLI?" "y"; then
    gh auth login
else
    echo "Skipping GitHub CLI login."
fi

if ask_yes_no "Do you want to setup Google Drive folder using rclone?" "y"; then
		mkdir gdrive
		rclone config

		echo "Running initial sync..."
		~/scripts/rclone/sync.sh

		echo "Setting up cron job to sync Google Drive every 10 minutes..."
		(crontab -l 2>/dev/null; echo "*/10 * * * * ~/scripts/rclone/timer.sh") | crontab -
else
    echo "Skipping Google Drive setup."
fi
