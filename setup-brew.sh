if ! command -v brew &> /dev/null
then
    echo "brew could not be found"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

xargs brew install < dependencies/brew.txt
