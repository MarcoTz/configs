#!/bin/bash
BACKUPDIR="/mnt/"

unison ~/Apps $BACKUPDIR/Apps -auto
unison ~/Documents $BACKUPDIR/Documents -auto
unison ~/Games $BACKUPDIR/Games -auto
unison ~/Music $BACKUPDIR/Music -auto
unison ~/Pictures $BACKUPDIR/Pictures -auto
unison ~/Videos $BACKUPDIR/Videos -auto
