if [ -d ~/.tmux/plugins/tpm ]; then
	mv ~/.config/nvim{,.bak}
fi

git clone https://github.com/alaurentinoofficial/nvim ~/.config/nvim
