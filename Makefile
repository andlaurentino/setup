machintosh-brew-install:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

machintosh-install-depencies:
	brew install git zsh neovim wget
	brew install qemu colima docker docker-completion docker-compose kubernetes-cli helm terraform terragrunt
	brew install go node yarn rustup-init python@3.12 openjdk@11 maven sbt scala@2.12

neovim-configure:
	mv ~/.config/nvim{,.bak}
	git clone https://github.com/alaurentinoofficial/nvim ~/.config/nvim

oh-my-zsh:
	sudo chsh -s $(which zsh) $USER
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cp dotfiles/.zshrc ~/.zshrc
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	cp dotfiles/.p10k.zsh ~/.p10k.zsh

machintosh-install: machintosh-brew-install machintosh-install-depencies oh-my-zsh neovim-configure

