ifeq ($(OS),Windows_NT)     # is Windows_NT on XP, 2000, 7, Vista, 10...
    detected_OS := Windows
else
    detected_OS := $(shell uname)  # same as "uname -s"
endif

os:
	echo $(detected_OS)

copy-current-files:
	cp ~/.zshrc ./dotfiles/
	cp ~/.config/starship.toml ./dotfiles/
	cp ~/.p10k.zsh ./dotfiles/
	cp ~/.tmux.conf ./dotfiles/
	cp ~/.config/kitty/kitty.conf ./dotfiles/
	cp ~/.config/kitty/kitty.conf ./dotfiles/
	cp ~/.ideavimrc ./dotfiles/

install-current-files:
	cp ./dotfiles/.zshrc ~/
	cp ./dotfiles/starship.toml ~/
	cp ./dotfiles/.p10k.zsh ~/
	cp ./dotfiles/.tmux.conf ~/
	cp ./dotfiles/kitty.conf ~/.config/kitty/
	cp ./dotfiles/alacritty/alacritty.toml ~/.config/alacritty/
	cp ./dotfiles/.ideavimrc ~/

machintosh-install:
	sh ./setup-brew.sh
	sh ./setup-nerd-fonts.sh
	sh ./setup-omz.sh
	sh ./setup-neovim.sh
	sh ./setup-tmux.sh
	sh ./setup-kitty.sh
	sh ./setup-alacritty.sh
	sh ./setup-touchid-term.sh
