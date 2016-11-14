#some Code 

Some random stuff I made for various things

##Directories:

* configs: files i use to save my settings like bashrc and vimrc
	(used with symlinks)
* utils: some bash scripts that do some useful things
	(folder in PATH)
* setupscripts: scripts that install various things
	(including a script that makes the links for my config files)
* cron: cron jobs
* stuff: some random code, not neccessarily useful

##The Scripts:

* crontab.cron my crontab

###utils:

* caesar.sh takes the argument and caesar ciphers/deciphers it
* cleanupLatex.sh removes the leftover files from pdflatex
* killexe.sh kills all processes started by wine
* listScripts.sh lists the script in the directory it's in(used because utils/ is in $PATH)
* nodepend.sh lists all the installed packages that nothing depends on or removes orphans
* removeSpaces.sh removes all spaces in files in folder and subfolders, replacing them with _
* restartFRITZwifi.sh restarts my home wifi, because my router is broken
* rsync-backup.sh backups home folder to external hard drive(mount point specified in file)

###configs:

* bashrc
* vimrc
* Xresources

all of those are linked to the right places with installConfs.sh

also installed with installConfs.sh

###setupScripts

* installConfs.sh links the configs above in the right directories
* vimplugins.sh installs all the vimplugins I use

which are: base16 ,nerdtree and pathogen

###stuff 
* alarm.sh an alarm script, needs alarm.mp3 in the same folder
* brainfuck.c a brainfuck interpreter in C
* caesar.h encodes or decodes text in ceasar cipher
* snek.cpp snake in the terminal in c++

##other repos I used:

* https://github.com/tpope/vim-pathogen
* https://github.com/scrooloose/nerdtree
* https://github.com/chriskempson/base16 (Xresources and vim version)
