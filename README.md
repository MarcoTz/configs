# Configs

The configs and scripts running on my laptop running arch

## Directories:

* configs: files i use to save my settings like bashrc and vimrc
* utils: some bash scripts that do some useful things
* setupscripts: scripts that install various things

### utils:

* listScripts.sh lists the script in the directory it's in(used because utils/ is in $PATH)
* nodepend.sh lists all the installed packages that nothing depends on or removes orphans

### configs:

* bashrc
* vimrc

all of those are linked to the right places with installConfs.sh

### setupScripts

* installConfs.sh links the configs above in the right directories
* vimplugins.sh installs all the vimplugins I use

which are just base16 now

## other stuff I used:

* https://github.com/chriskempson/base16 (vim version)

###used programs

* vim
* bash
