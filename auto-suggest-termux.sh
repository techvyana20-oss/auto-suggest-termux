#!/data/data/com.termux/files/usr/bin/bash
# TechVyana Auto-suggestion Setup Script for Termux

echo "[*] Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "[*] Installing required packages..."
pkg install -y zsh git curl

echo "[*] Installing Oh-My-Zsh..."
# run installer without changing shell immediately
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install autosuggestions plugin
echo "[*] Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install syntax highlighting plugin
echo "[*] Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# update plugins list in .zshrc
echo "[*] Configuring plugins..."
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# set nice prompt
echo "PROMPT='%F{green}[TechVyana@termux]%f %F{cyan}%~%f %# '" >> ~/.zshrc

echo "[*] Changing default shell to zsh..."
chsh -s zsh || true

echo
echo "[*] Done! Close and reopen Termux, then type:"
echo "    zsh"
echo "to start using auto-suggestions and syntax highlighting."
