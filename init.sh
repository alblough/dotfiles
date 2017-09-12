#!/bin/bash

echo -ne "           (0%) - Mapping dotfiles            \r"
./scripts/mapdotfiles.sh > ./init.log 2>&1

echo -ne "##         (20%) - Configuring git hooks      \r"
./scripts/gittaghooks.sh > ./init.log 2>&1

echo -ne "####       (40%) - Clearing font cache        \r"
fc-cache -f ~/.fonts > ./init.log 2>&1

echo -ne "######     (60%) - Initializing git submodules\r"
git submodule init   > ./init.log 2>&1

echo -ne "########   (80%) - Updating git submodules    \r"
git submodule update > ./init.log 2>&1

if [ $? -ne 0 ]; then
   echo -ne "\n"
   echo "ERROR! Submodule update not completed successfully!"
   echo "Verify your proxy settings are correct..."
else
   echo -ne "########## (100%) - Complete!                 \r"
   echo -ne "\n"
   echo -e "\033[33;5;7mNOTE!\033[0m"
   echo "Manually add the following lines to the end of your '~/.bashrc' to complete setup:"
   echo 'if [ -f ${HOME}/.bashrc.${USER} ]; then'
   echo '    . ${HOME}/.bashrc.${USER}'
   echo 'fi'
fi

