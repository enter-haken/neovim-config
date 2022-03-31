FROM ubuntu:20.04

# setup devbox user
RUN useradd -g sudo -ms /bin/bash devbox 
RUN echo 'devbox:devbox' | chpasswd

# set up locale for elixir
# at least one utf8 locale is needed

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install -y --no-install-recommends locales \
  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
  && dpkg-reconfigure --frontend=noninteractive locales \
  && update-locale LANG=en_US.UTF-8 \
  && locale-gen \
  && apt-get install -y --no-install-recommends git unzip curl build-essential \
  libxml2 xsltproc autoconf automake m4 libncurses5-dev libssh-dev python3-pip \
  htop vim tmux tree ranger man-db sudo silversearcher-ag tar gpg gpg-agent \
  libreadline-dev

USER devbox
WORKDIR /home/devbox

COPY bash_aliases ./.bash_aliases
COPY .tool-versions .

RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
RUN git clone https://github.com/enter-haken/neovim-config ~/.config/nvim


RUN echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
RUN echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc

# using plug as plugin manager for neovim
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# required for neovim
RUN pip3 install pynvim requests virtualenv --user

RUN export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH" && \
  export KERL_BUILD_DOCS=yes && \
  export KERL_INSTALL_HTMLDOCS=no && \
  export KERL_INSTALL_MANPAGES=no && \
  export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac" && \
  for i in $(cat .tool-versions | awk '{ print $1 }'); do asdf plugin add $i; done && \
  asdf install

# setup elixir language server
# see: https://github.com/elixir-lsp/elixir-ls#local-setup
RUN git clone https://github.com/elixir-lsp/elixir-ls .elixir-ls
WORKDIR /home/devbox/.elixir-ls
RUN PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH" && \
  mix do local.hex --force, \
  local.rebar --force, \
  deps.get, \
  elixir_ls.release -o release

WORKDIR /home/devbox
RUN mkdir -p ./src/other/complete

WORKDIR /home/devbox/src/

RUN curl https://raw.githubusercontent.com/enter-haken/scripts/master/clone_or_pull.py | python3 - -u enter-haken

RUN ln -s /home/devbox/src/enter-haken/scripts/clone_or_pull.py /home/devbox/.local/bin/clone_or_pull

WORKDIR /home/devbox

# find system wide unknown plugins and versions
RUN for i in $(find . -name ".tool-versions"); do cat $i; done | sort | uniq > ~/versions && \
  cat ~/versions | awk '{ print $1 }' | uniq > ~/plugins 

# preinstall all used plugins and different versions, having a `.tool-versions` file
RUN export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH" && \
  export KERL_BUILD_DOCS=yes && \
  export KERL_INSTALL_HTMLDOCS=no && \
  export KERL_INSTALL_MANPAGES=no && \
  export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac" && \
  (cat ~/plugins | while read i; do asdf plugin add $i; done || true) && \
  (cat ~/versions | while read i; do asdf install $i; done || true)

# install all plugs
RUN PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH" && \
  nvim +PlugInstall +qa
