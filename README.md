#stuff 

The configs and scripts running on my laptop running arch

##Directories:

* configs: files i use to save my settings like bashrc and vimrc
* utils: some bash scripts that do some useful things
* setupscripts: scripts that install various things

###utils:

* killexe.sh kills all processes started by wine
* listScripts.sh lists the script in the directory it's in(used because utils/ is in $PATH)
* nodepend.sh lists all the installed packages that nothing depends on or removes orphans
* scrotclear.sh clears scrot screenshots
* restartFRITZwifi.sh restarts my home wifi, because my router is broken
* unisonsync.sh syncs some folders to external hard drive(mount point specified in file)

###configs:

* bashrc
* vimrc
* Xresources (rofi color scheme)
* i3
* conky.sh conkyrc, conky for i3bar
* workspaces/ saved workspaces for i3
* compton.conf
* unison.prf
* termite

####workspaces

* msg contains messaging Apps telegram and discord
* rss contains rss reader liferea

all of those are linked to the right places with installConfs.sh(unison.prf is copied, otherwise it doesn't work)

###setupScripts

* installConfs.sh links the configs above in the right directories
* vimplugins.sh installs all the vimplugins I use

which are: base16, pathogen and rust for vim

##other stuff I used:

* https://github.com/tpope/vim-pathogen
* https://github.com/chriskempson/base16 (Xresources and vim version)
* https://npmjs.com/package/i3-style

###used programs

* vim
* bash
* i3 
* compton
* conky 
* termite
* rofi
* unison
* telegram desktop
* discord 
* liferea
