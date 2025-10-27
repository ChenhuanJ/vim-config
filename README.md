# 🧠 My Vim Config

A lightweight, organized Vim configuration for smooth editing with automatic indentation, plugin management, and a clean color scheme.  
Designed for quick setup on any new machine or VM.

---

## 📁 Repository Structure
vim-config/<br>
├── .vimrc<br>
├── autoclose.vim<br>
├── plugin-config.vim<br>
└── plugins.vim<br>

---

## 📄 File Descriptions
- **.vimrc** — Main configuration file; loads other `.vim` scripts.  
- **plugins.vim** — Lists all Vim plugins using [vim-plug](https://github.com/junegunn/vim-plug).  
- **plugin-config.vim** — Custom configurations for installed plugins.  
- **autoclose.vim** — Custom mappings for auto-closing brackets and quotes.  

---

## 🚀 Quick Install

If you want to set it up instantly on a fresh system, run the one-line command below.  
*(Requires **bash** — most systems can run it with `bash` even if another shell is active.)*

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/ChenhuanJ/vim-config/main/setup.sh)
```

This script will:

1. Clone or update the config in ~/vim-config
2. Copy .vimrc to your home directory
3. Copy all .vim scripts into ~/.vim/
4. Install vim-plug if not
5. Automatically install all plugins

Or install manually:
1. Clone this repository
```bash
git clone https://github.com/ChenhuanJ/vim-config.git ~/vim-config
```

2. Copy configuration files
```bash
cp ~/vim-config/.vimrc ~/.vimrc
mkdir -p ~/.vim
cp ~/vim-config/*.vim ~/.vim/
```

3. Install vim-plug if necessary
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

4. Install plugins from within Vim
```bash
vim +PlugInstall +qall
```

