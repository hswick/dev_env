apt update && apt upgrade

# Emacs installation
apt install emacs -y
echo 'alias e="emacs -nw"' >> $HOME/.bashrc
cp ./.emacs $HOME/.
cp ./mistyday-theme.el $HOME/.emacs.d/.

# Ruby
apt install ruby -y

# Postgres
apt install postgresql postgresql-client -y

# Go installation
wget https://dl.google.com/go/go1.12.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.12.3.linux-amd64.tar.gz
echo '# Golang env' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc

# Nodejs installation
curl -L https://git.io/n-install -y
source $HOME/.bashrc
n stable

# Elm installation
npm install -g elm

# Rust installation
curl https://sh.rustup.rs -sSf | sh
echo '# Rust env' >> $HOME/.bashrc
echo 'export PATH=$PATH:$HOME/.cargo/bin' >> $HOME/.bashrc

# Refresh bash after changes
source $HOME/.bashrc
