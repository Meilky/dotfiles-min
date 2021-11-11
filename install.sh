sudo apt install -y git neovim zsh

# install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

wget -O ~/.oh-my-zsh/themes/palenight.zsh-theme \
https://raw.githubusercontent.com/jenssegers/palenight.zsh-theme/master/palenight.zsh-theme

# install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# npm install
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

source ~/.nvm/nvm.sh

nvm install --latest-npm

npm install -g prettier

cp -r ./.config ./.bashrc ./.zshrc ~/
