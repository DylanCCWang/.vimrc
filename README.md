## Screenshot
![image](https://github.com/DylanCCWang/.vimrc/blob/master/Screenshot.png)

## Installation
### 1. Install Vim-Plug:
    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
Using **vim**, and then enter **":PlugInstall"**

### 2. Install YouCompleteMe:
   ##### for Ubuntu 16.04 and Later:
       $ sudo apt install build-essential cmake python3-dev
       $ cd .vim/plugged/YouCompleteMe/
       $ python3 install.py
   ##### for MacOS:
       $ brew install cmake go npm macvim
       $ cd .vim/plugged/YouCompleteMe/
       $ ./install.py (./install.py --all)
