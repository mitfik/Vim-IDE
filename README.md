## How to use it

Install vim :)
and then:

    git clone https://github.com/mitfik/Vim-IDE.git ~/.vim

symlink .vimrc:

    ln -s ~/.vim/extras/.vimrc ~/.vimrc

For managing plugins using Vundle (included as submodule)

First time:

    git submodule update --init --recursive
    
To update

    git submodule update --recursive --remote
