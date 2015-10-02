if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi
export PATH=/usr/local/bin:$PATH
#Force path to include path to git installed by brew instead of default git
export PATH=/usr/local/Cellar/git/2.6.0/bin:$PATH
