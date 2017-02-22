#!/usr/intel/bin/tcsh

echo "\nMAPPING DOTFILES"
echo   "----------------"
set dotfiles=(".gvimrc" ".vimrc")
set dotdirs=(".vim")
source ./scripts/mapdotfiles.csh
echo "\nPlease start a new terminal session to use the new dotfiles for your environment\n"
