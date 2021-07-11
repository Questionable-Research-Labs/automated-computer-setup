# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvmsudo
nvm install 14.17.3
nvm use 14.17.3
node -v

# Yarn and usefull global packages
npm install -g yarn
yarn global add nodemon
yarn global add loopback-cli
yarn global add forever
yarn global add ungit
yarn global add gulp-cli
yarn global add generator-angular-fullstack
yarn global add caprover

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup-setup.sh
sh rustup-setup.sh -y
rm rustup-setup.sh

cargo install cargo-update
cargo install bat

# Anaconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda -u

eval "$(${HOME}/miniconda/bin/conda shell.bash hook)"
conda init
conda config --set auto_activate_base false

# GrapeJuice (Roblox)

sudo apt install -y git python3-pip python3-setuptools python3-wheel python3-dev pkg-config libcairo2-dev gtk-update-icon-cache desktop-file-utils xdg-utils libgirepository1.0-dev gir1.2-gtk-3.0
git clone https://gitlab.com/brinkervii/grapejuice.git /tmp/grapejuice
cd /tmp/grapejuice
python3 ./install.py

grapejuice gui