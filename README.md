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

To make all the definitions for the server from the given modules

  ./add-all-defs.sh <channel>
  
Then you can copy all the modules to the server.
Note: I picked a default interval for the checks of 20

One Ohter Note: I have resulted to running the sensu-client service as root,
I am having realy bad problems with permisions of things.
