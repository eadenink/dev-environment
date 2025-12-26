#!/bin/bash

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
