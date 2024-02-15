# These are the steps that you should follow for stuff to work properly.

- Installing curl and stuff
```bash
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install curl wget clang stow tmux unzip zip pytohn3-venv fuse gpg -y
```

- Installing fish (LOGOUT AND LOGIN FOR CHANGES TO APPLY)
```bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install fish
sudo chsh -s $(which fish)
```

- Installing nerd font
```bash 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaCode.zip
mkdir ~/.fonts
unzip CascadiaCode.zip -d ~/.fonts
fc-cache -fv
```

- Installing Eza
```bash 
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
```

- Stowing things properly
```bash
cd dotfiles
stow --adopt
git restore
```

- For tmux and nvim to work
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm --depth 1
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

- Installing neovim
```bash
wget -O ~/.neovim/nvim.appimage https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo mkdir /usr/local/bin
chmmod +x nvim.appimage
sudo ln -s nvim.appimage /usr/local/bin/nvim 
```
