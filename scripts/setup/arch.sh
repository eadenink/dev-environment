#!/bin/bash

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../

# Install packages
sudo pacman -S neovim fzf grep tmux zsh ghostty obsidian github-cli go python python-pip lazygit lazydocker rclone eza zoxide docker kubectl ttf-jetbrains-mono-nerd cronie postgresql
yay -S postman google-cloud-cli

# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Enable services
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
		sh scripts/rclone/sync.sh
		(crontab -l 2>/dev/null; echo "*/10 * * * * ~/scripts/rclone/timer.sh") | crontab -
else
    echo "Skipping GitHub CLI login."
fi

ask_yes_no() {
	local prompt="$1"
	local default="${2:-y}"

	if [[ "$default" == "y" ]]; then
		prompt="$prompt [Y/n]: "
	else
		prompt="$prompt [y/N]: "
	fi

	read -p "$prompt" -n 1 -r
	echo

	if [[ -z "$REPLY" ]]; then
		[[ "$default" == "y" ]]
	else
		[[ $REPLY =~ ^[Yy]$ ]]
	fi
}
