# This script has not been tested.

sudo apt-get update
sudo apt-get install neovim -y
sudo apt-get install git -y

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd ~/.config || mkdir ~/.config && cd ~/.config
rm -rf nvim || echo "Tried to delete nvim directory, but already doesn't exist."
git clone "https://github.com/JaxonBest/NeoVim" nvim
cd nvim || echo "Installed the files but couldn't enter."
nvim init.vim || echo "Neovim may not be installed correctly!"
