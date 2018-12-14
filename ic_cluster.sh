# make sure conda and vim are installed

# git config
git config --global user.email "martin.mathias.mueller@gmail.com"
git config --global user.name "Martin Müller"

# install stuff
conda install rsync tmux -y -c conda-forge 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# sync profiles
rsync ./bash_profile ~/.bash_profile
rsync ./aliases ~/.aliases
rsync ./functions ~/.functions
source ~/.bash_profile

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rsync ./vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'


