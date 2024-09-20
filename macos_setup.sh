#!/bin/bash
# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap homebrew/cask-versions

# Download LensOCR from lensocr.app
brew install --cask temurin17 iterm2
# brew install --cask obsidian # Should visit https://obsidian.md/download instead
brew install maven wget npx gh jq ripgrep bat neofetch azure-cli shellcheck \
 glow fd zsh-autosuggestions zsh-syntax-highlighting autojump fzf nvm node
# brew install imagemagick asciinema gifsicle

# zsh plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
echo '[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh' >> "$HOME/.zshrc"
echo 'source <(fzf --zsh)' >> "$HOME/.zshrc"

# Node packages
npm install -g asciicast2gif npm-check-updates tldr

# Set up JAVA_HOME
echo 'export PATH=$PATH:/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home' >> "$HOME/.zshrc"

# Setup GitHub cli
gh auth login  # Can upload SSH key as well

source common_dev_setup.sh
