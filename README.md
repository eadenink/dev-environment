# My development environment

> This is my dev environment. There are many like it, but this one is mine.

Properly designed development environment is a crucial part of your workflow that will help you be more productive, write applications faster, become a real 10x developer and bla bla bla... To be honest, I do mine because it's helluva fun, combining all these little crumbles into a beautiful pile of features that somehow works(or don't). All this setup may seem pretty complicated at the start but it's pretty simple and easy to maintain. You can try it yourself and reach me out if you liked it or not!

## Motivation

As I said above - it's all about fun! But besides that, I hate using mouse, so I created mouseless environment inside my tty - everything you need is under tips of your fingers!

## What's inside

My setup is based on the combination of neovim and tmux. Besides that I use ghostty as my tty and zsh combined with starship as my shell.

## Installation

Clone repository into your home directory. Because your home directory won't be empty use this little workaround and resolve merging conflicts if they arise:

```sh
git init
git remote add origin <repository-url>
git fetch origin
git checkout -t origin/main
```

After cloning, execute quick setup script for your system, it will install all required and extra packages, login you into github cli(skippable) and setup a Google Drive folder with automatic sync(skippable):

#### Arch Linux

```sh
./scripts/setup/arch.sh
```

#### Mac OS

```sh
./scripts/setup/osx.sh
```

If you're using another linux distibutive you can easily update Arch Linux script, most likely the only thing that you'll need to change is a package manager.

### Further steps

Reboot your shell and everything must work! The only thing that left is to open neovim and install required plugins using `:Lazy` and LSPs using `:Mason`!

## List of used packages

#### Core
- [neovim](https://github.com/neovim/neovim)
- [tmux](https://github.com/tmux/tmux)
- [tpm](https://github.com/tmux-plugins/tpm)
- [ghostty](https://github.com/ghostty-org/ghostty)
- [zsh](https://zsh.sourceforge.io/)
- [starship](https://starship.rs/)

#### Package Managers
- [yay](https://github.com/Jguer/yay) (Arch Linux)
- [homebrew](https://brew.sh/) (Mac OS)

#### CLI Tools
- [fzf](https://github.com/junegunn/fzf)
- [grep](https://www.gnu.org/savannah-checkouts/gnu/grep/manual/grep.html)
- [thefuck](https://github.com/nvbn/thefuck)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [eza](https://github.com/eza-community/eza)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [cronie](https://github.com/cronie-crond/cronie) (Arch Linux)

#### Development Tools
- [docker](https://www.docker.com/)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [postgresql](https://www.postgresql.org/)

#### CLI Clients
- [github-cli](https://cli.github.com/)
- [google-cloud-cli](https://cloud.google.com/cli)

#### Desktop Applications
- [obsidian](https://obsidian.md/)
- [postman](https://www.postman.com/)

#### Programming Languages
- [golang](https://go.dev/)
- [python](https://www.python.org/)

#### Fonts
- [ttf-jetbrains-mono-nerd](https://www.jetbrains.com/lp/mono/)

