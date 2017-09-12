dotfiles
--------
A collection of my latest, known-good, dotfiles used to configure a bash session.

Includes dotfile configurations for
- bash
- (g)Vim
- ctags

Installation
============
Download the repository, make sure to use the recursive argument to pull down
the submodules as well:

> $ git clone --recursive https://github.com/alblough/dotfiles.git

Run the initialization script, which will backup all current copies of the
configuration files it is replacing, and soft link to the files in this repo to
your $HOME directory:

> $ ./init.sh

Manually add the following to your local .bashrc file:

```bash
if [ -f ${HOME}/.bashrc.${USER} ]; then
    . ${HOME}/.bashrc.${USER}
fi
```

You are now ready to run!
