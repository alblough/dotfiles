#!/bin/bash 
dotfiles=(".bash_aliases" ".bindings" ".ctags" ".gvimrc" ".vimrc" ".git-completion.bash")
dotfiles_user=(".bashrc")
dotdirs=(".vim" ".git_template" ".fonts" ".fonts.conf.d")

success=1

backupdir="backup-`date +%s`"

mkdir $backupdir

echo "Backing up dotfiles to $backupdir.tgz"

for dotfile in "${dotfiles[@]}"
do
   if [ -e $HOME/$dotfile ]; then 
      echo "- $dotfile found"
      cp $HOME/$dotfile $backupdir
      if [ $? = 1 ]; then
         success=0
      fi
   else
      echo "- $dotfile not found"
   fi
done

for dotfile in "${dotfiles_user[@]}"
do
   if [ -e $HOME/$dotfile.$USER ]; then 
      echo "- $dotfile.$USER found"
      cp $HOME/$dotfile.$USER $backupdir
      if [ $? = 1 ]; then
         success=0
      fi 
   else
      echo "- $dotfile.$USER not found"
   fi
done

for dotdir in "${dotdirs[@]}"
do
   if [ -d $HOME/$dotdir ]; then 
      echo "- $dotdir/ found"
      mv $HOME/$dotdir $backupdir
      if [ $? = 1 ]; then
         success=0
      fi
   else
      echo "- $dotdir/ not found"
   fi
done

tar czf $backupdir.tgz $backupdir
if [ $? != 0 ]; then
   success=0
fi
rm -rf $backupdir
if [ $? != 0 ]; then
   success=0
fi

if [ $success = 0 ]; then
   echo "Failed to archive dotfiles, exiting"
#  exit 1
else
   echo "Sucessfully archived dotfiles"
fi

curdir=`pwd`
echo "Creating softlinks out to ${HOME}"

for dotfile in "${dotfiles[@]}"
do
   ln -fs $curdir/$dotfile $HOME
   if [ $? != 0 ]; then
      success = 0
   fi
done

for dotfile in "${dotfiles_user[@]}"
do
   ln -fs $curdir/$dotfile.user $HOME/${dotfile}.${USER}
   if [ $? != 0 ]; then
      success = 0
   fi
done

for dotdir in "${dotdirs[@]}"
do
   if [ -h $HOME/$dotdir ]; then
       rm $HOME/$dotdir
   fi
   ln -fs $curdir/$dotdir $HOME/$dotdir
   if [ $? != 0 ]; then
      success = 0
   fi
done

if [ $success = 0 ]; then
   echo "Failed to replace dotfiles"
   exit 1
else
   echo "Sucessfully replaced dotfiles"
fi
