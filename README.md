# Sensu Plugins


Instructions

  git clone ssh://gitolite@inception/sensu-plugins
  ksu
  cd ~
  scp -r <username>@rainbow:~/sensu-plugins/ ./
  cd sensu-plugins
  bash sensu-plugins/install-sensu-client-fedora.sh

The plugins directory contains the sud-dirs with the channel plugins
The server files for the module definitions are in the moddefs dir in plugins
There is script to make moddefs in there
