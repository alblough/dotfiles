dotfiles
--------
A collection of my latest, known-good, dotfiles used to configure a bash session.

Includes dotfile configurations for
- profile
- (g)Vim
- ctags
- aliases

Installation
============
Download the repository, make sure to use the recursive argument to pull down
the submodules as well_::

    $ git clone --recursive https://github.com/alblough/dotfiles.git

Run the initialization script, which will backup all current copies of the
configuration files it is replacing, and soft link to the files in this repo to
your $HOME directory_::

    $ ./init.sh

You are now ready to run!
