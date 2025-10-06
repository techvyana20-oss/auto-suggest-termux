# Auto Suggestion for Termux – TechVyana  

This script enables **auto-suggestions** and **syntax highlighting** in Termux using the Fish shell.  
It gives you a modern shell experience similar to Zsh / Oh-My-Zsh on Linux.

---

## ✨ Features  
- Auto-suggestions while typing commands  
- Syntax highlighting  
- Easy setup with one script  
- Works on any fresh Termux install  

---

## 📥 Installation  

1. **Clone the repository**  
```bash
git clone https://github.com/yourusername/auto-suggest-termux.git
cd auto-suggest-termux
Make the script executable
chmod +x auto-suggest-termux.sh
Run the script

bash
Copy code
./auto-suggest-termux.sh
Restart Termux

📝 Script Content (auto-suggest-termux.sh)
bash
Copy code
#!/data/data/com.termux/files/usr/bin/bash

# Update Termux
pkg update -y && pkg upgrade -y

# Install Fish shell
pkg install -y fish

# Change default shell to fish
chsh -s fish

echo "✅ Auto-suggestions enabled. Restart Termux to apply changes."
🐟 Usage
Once you restart Termux, you’ll see:

Command suggestions in grey as you type

Syntax highlighting

History-based completions

To go back to Bash or Zsh:

bash
Copy code
chsh -s bash
# or
chsh -s zsh
📢 Credits

Made with ❤️ by TechVyana
