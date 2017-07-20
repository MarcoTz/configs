#stuff 

The configs and scripts running on my laptop running arch

##Directories:

* configs: files i use to save my settings like bashrc and vimrc
	(used with symlinks)
* utils: some bash scripts that do some useful things
	(folder in PATH)
* setupscripts: scripts that install various things
	(including a script that makes the links for my config files)

###utils:

* killexe.sh kills all processes started by wine
* listScripts.sh lists the script in the directory it's in(used because utils/ is in $PATH)
* nodepend.sh lists all the installed packages that nothing depends on or removes orphans
* restartFRITZwifi.sh restarts my home wifi, because my router is broken
* unisonsync.sh syncs some folders to external hard drive(mount point specified in file)
* pacclear.sh clears pacman and pacaur cache completely
* rotate.sh rotates the screen and the touchscreen 

###configs:

* bashrc
* vimrc
* Xresources (rofi color scheme)
* i3
* conky.sh, conkyrc conky for i3bar
* unison.prf
* menutrayschema.pl (schema file for menutray)

all of those are linked to the right places with installConfs.sh(unison.prf is copied, otherwise it won't work)

###setupScripts

* installConfs.sh links the configs above in the right directories
* vimplugins.sh installs all the vimplugins I use

which are: base16 and pathogen

##other stuff I used:

* https://github.com/tpope/vim-pathogen
* https://github.com/chriskempson/base16 (Xresources and vim version)
* https://npmjs.com/package/i3-style

### used programs

* vim 
* bash
* conky 
* i3
* rofi
* menutray
* termite
* unison
