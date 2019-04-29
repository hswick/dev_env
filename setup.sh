apt update && sudo apt upgrade

BASE=$HOME/.bashrc

# Emacs installation
sudo apt install emacs -y
echo '' >> $BASE
echo 'alias e="emacs -nw"' >> $BASE
cp ./.emacs $HOME/.

# Have to automate creating .emacs.d (TODO: try making .emacs.d
#cp ./mistyday-theme.el $HOME/.emacs.d/.

# Rust installation
curl https://sh.rustup.rs -sSf | sh -s -- -y
echo '' >> $BASE
echo '# Rust env' >> $BASE
echo 'export PATH=$PATH:$HOME/.cargo/bin' >> $BASE

# Ruby
sudo apt install ruby -y

# Go installation
wget https://dl.google.com/go/go1.12.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.12.3.linux-amd64.tar.gz
echo '# Golang env' >> $BASE
echo 'export PATH=$PATH:/usr/local/go/bin' >> $BASE

# Nodejs installation
curl -L https://git.io/n-install -y
source $BASE
n stable

# Elm installation
npm install -g elm

# Refresh bash after changes
source BASE
