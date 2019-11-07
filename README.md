# Installation
1. Install Vim-Plug:<br />
    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\<br />
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim<br /><br />
    Using vim, then enter ":PlugInstall"<br />

2. Install YouCompleteMe:<br />
   for Ubuntu 16.04 and Later:<br />
       $ sudo apt install build-essential cmake python3-dev<br />
       $ cd .vim/plugged/YouCompleteMe/<br />
       $ python3 install.py<br />
   for MacOS:<br />
       $ brew install cmake macvim<br />
       $ cd .vim/plugged/YouCompleteMe/<br />
       $ ./install.py or ./install.py --all<br />
