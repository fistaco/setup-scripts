sudo apt install -yy \
    python3-dev \
    ghidra \
    autojump \
    openjdk-21-jdk \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    jq \
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
    xh \
    zoxide \
    pandoc \
    poppler-utils \
    ffmpeg \
    wine64 \
    certipy-ad \
    ligolo-ng \
    chisel \
    trivy \
    keepass2 \
    golang-go \
    qemu-utils \
    guestfs-tools \
    docker.io \
    bc \
    cmake \
    duf \
    ripgrep-all \
    btop \
    choose \
    obsidian \
    fzf \
    payloadsallthethings
# Download ripgrep-all: https://github.com/phiresky/ripgrep-all/releases

# Install uv for Python package management
curl -LsSf https://astral.sh/uv/install.sh | sh

ln -s $(which fdfind) ~/.local/bin/fd
source /usr/share/autojump/autojump.zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install tealdeer ripgrep bat du-dust fd-find nfswolf
cargo install xan starship tickrs --locked

# Tool init
tldr --update

# Download/install tools from sources
wget https://github.com/SpecterOps/bloodhound-cli/releases/latest/download/bloodhound-cli-linux-amd64.tar.gz  # bloodhound-cli install
curl -fsSL https://raw.githubusercontent.com/opengrep/opengrep/main/install.sh | bash  # opengrep
# git clone https://github.com/opengrep/opengrep-rules
# Avalonia ILSpy: https://github.com/icsharpcode/AvaloniaILSpy/releases (consider the VS Code extension as well)
go install github.com/schollz/croc/v10@latest

# Download VS Code
curl -L -o vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install ./vscode.deb
cat vscode_extensions.txt | xargs -n1 code --install-extension

# Install the Espanso build matching the active display server.
# Stop first so a package replacement cannot leave the old executable running.
if command -v espanso >/dev/null 2>&1; then
    espanso stop || true
fi
if [ "${XDG_SESSION_TYPE:-x11}" = "wayland" ]; then
    ESPANSO_DEB="espanso-debian-wayland-amd64.deb"
    dpkg-query -W espanso >/dev/null 2>&1 && sudo apt remove -y espanso
else
    ESPANSO_DEB="espanso-debian-x11-amd64.deb"
    dpkg-query -W espanso-wayland >/dev/null 2>&1 && sudo apt remove -y espanso-wayland
fi
wget -O "$ESPANSO_DEB" "https://github.com/espanso/espanso/releases/latest/download/$ESPANSO_DEB"
sudo apt install -y "./$ESPANSO_DEB"
espanso service register
espanso start

# Install ghostty if desired: https://ghostty.org/docs/install/binary
