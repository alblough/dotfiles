#!/bin/bash

echo "MAPPING DOTFILES"
echo "----------------"
./scripts/mapdotfiles.sh

echo "CONFIGURING GIT HOOKS"
echo "---------------------"
./scripts/gittaghooks.sh

echo "CLEARING FONT CACHE"
echo "-------------------"
fc-cache -f ~/.fonts > ./init.log 2>&1
echo "Complete!"

echo "UPDATING SUBMODULES"
echo "-------------------"
echo "Attempting to download multiple vim plugins, this could take several minutes..."
git submodule init   > ./init.log 2>&1
git submodule update > ./init.log 2>&1
if [ $? -ne 0 ]; then
   echo "ERROR! Submodule update not completed successfully!"
   echo "Verify your proxy settings are correct..."
else
   echo "Completed!"
fi
echo "Please start a new terminal session to use the new dotfiles for your environment"
