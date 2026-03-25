sudo apt install -yy \
    python3-dev \
    ghidra \
    autojump \
    openjdk-21-jdk \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    jq \
    fd-find \
    npm \
    nodejs \
    strace \
    gdb \
    python3-pwntools \
    python3-numpy \
    sshuttle \
    feroxbuster \
    gobuster \
    wget \
    seclists \
    python3-cryptodome \
    xh \
    zoxide \
    pandoc \
    poppler-utils \
    ffmpeg \
    wine64 \
    winetricks \
    certipy-ad \
    ligolo-ng \
    chisel \
    trivy \
    keepass2 \
    golang-go \
    qemu-utils \
    guestfs-tools \
    docker.io \
    bc
# Download ripgrep-all: https://github.com/phiresky/ripgrep-all/releases

# Install uv for Python package management
curl -LsSf https://astral.sh/uv/install.sh | sh

ln -s $(which fdfind) ~/.local/bin/fd
source /usr/share/autojump/autojump.zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install tealdeer ripgrep bat du-dust

# Download/install tools from sources
wget https://github.com/SpecterOps/bloodhound-cli/releases/latest/download/bloodhound-cli-linux-amd64.tar.gz  # bloodhound-cli install
curl -fsSL https://raw.githubusercontent.com/opengrep/opengrep/main/install.sh | bash  # opengrep
# git clone https://github.com/opengrep/opengrep-rules


# Download VS Code
# Download obsidian

echo 'ROCKYOU=/usr/share/wordlists/rockyou.txt' >> ~/.zshrc
