# bashScripts

Some random bash scripts I made for various things

##Directories:

* configs: files i use to save my settings like bashrc and vimrc
	(used with symlinks)
* utils: some bash scripts that do some useful things
	(folder in PATH)
* setupscripts: scripts that install various things
	(including a script that makes the links for my config files)
* alarm: an alarm script
* cron: cron jobs

##The Scripts:

###utils:

* caesar.sh takes the argument and caesar ciphers/deciphers it
* cleanupLatex.sh removes the leftover files from pdflatex
* killexe.sh kills all processes started by wine
* listScripts.sh lists the script in the directory it's in(used because utils/ is in $PATH)
* nodepend.sh lists all the installed packages that nothing depends on or removes orphans
* removeSpaces.sh removes all spaces in files in folder and subfolders, replacing them with _
* restartFRITZwifi.sh restarts my home wifi, because my router is broken

###configs:

* bashrc
* vimrc
* Xresources
* flake8 config for flake8

all of those are linked to the right places with installConfs.sh

###cron 

* rsync-backup.sh daily backup of my home folders

also installed with installConfs.sh

###setupScripts

* installConfs.sh links the configs above in the right directories
* vimplugins.sh installs all the vimplugins i use

those are: base16, syntastic, nerdtree and pathogen

####arch

* installPacaur.sh installs pacaur
* importantstuff.sh installs the most important packages(and some not so important ones), not complete

###alarm
* alarm.sh an alarm script

##other repos I used:

* https://github.com/tpope/vim-pathogen
* https://github.com/scrooloose/nerdtree
* https://github.com/chriskempson/base16 (Xresources and vim version)
