# !/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Binaries
binaries=(
  #### language
  python
  go
  dep
  homebrew/core/php
  node@8
  nvm
  java
  adoptopenjdk/openjdk/adoptopenjdk8
  #### database
  mysql
  # mongodb
  #### security
  sqlmap

  graphviz
  dos2unix
  wget
  ctags
  grc
  ccat
  git-flow
  tree
  telnet
  pass
  gnupg
  gpg
  mackup
  mas
  z
  tmux
  htop
  trash
  proxychains-ng
  pyenv
  gettext
  netcat
  gdb
  gcc
  ninja
  syncthing
  httpie
  pstree
  privoxy
  textql
  libconfig
  glog
  librdkafka
  apache-arrow
  protobuf
  # kafka
  nmap
  zmap
  imagemagick
  composer
  wrk
  automake
  autoconf
  curl
  pcre
  bison
  mhash
  libtool
  icu4c
  jpeg
  openssl
  libxml2
  mcrypt
  gmp
  libevent
  cppcheck
  
  maven
  apache-flink
  # apache-spark
  hive
  zlib
  solidity
  grpc
  # automake 
  berkeley-db4 
  # libtool 
  # flutter
  boost
  rocksdb
  miniupnpc 
  # openssl 
  pkg-config 
  protobuf 
  qt5 
  # libevent
  librsvg
  tldr
  buf
  # /usr/local/Cellar/php/7.2.5/bin/pecl install swoole
  # /usr/local/Cellar/php/7.2.5/bin/pecl install xdebug
  hiredis
  consul-template
  # CI / CD
  earthly
  # jenkins
  # jenkins-x/jx/jx
  kubernetes-helm
  # nginx
  # hub
  # legit
  # ssh-copy-id
  cocoapods
  # grin
)

# Apps
apps=(
  #### browsers
  google-chrome
  firefox
  #### ide
  android-studio
  pycharm-ce
  intellij-idea 
  iterm2 # 加强版终端
  #### note
  evernote
  notion
  # workflowy-beta
  boostnote
  #### devops
  docker
  minikube
  #### editor
  sublime-text
  visual-studio-code
  typora
  #### password manager
  macpass
  1password
  #### database client
  # sequel-pro  # mysql8 或者 一些 奔溃原因
  homebrew/cask-versions/sequel-pro-nightly
  another-redis-desktop-manager
  robo-3t
  ##### other
  the-unarchiver
  mockoon
  ngrok
  xmind
  licecap # 录屏gif软件
  appcleaner # 卸载软件
  grandperspective # 磁盘空间分析软件
  charles
  android-file-transfer
  nutstore
  calibre
  gpg-suite
  postman
  wireshark
  neteasemusic
  # slack
  zoomus
  virtualbox
  fork
  # rdm
  #####
  # 
  # 手动安装：
  # beyond-compare # 对比软件
  #
  # Apple store:
  # pocket
  # helm
  #####
  # 付费软件：
  # reeder3
  # alfred
  # phpstorm
  # goland
)

# Fonts
fonts=(
  # font-roboto
  font-source-code-pro
)

echo "Update Homebrew..."
# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

brew tap ethereum/ethereum
brew tap bufbuild/buf
brew tap jenkins-x/jx

brew link --force openssl
brew link --force libxml2

echo "Installing binaries..."
brew install ${binaries[@]}

echo "Installing fonts..."
brew install ${fonts[@]}

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing apps..."
brew install --appdir="/Applications" ${apps[@]}

# clean things up
brew cleanup

exit 0
