#!/bin/bash
BACKUPDIR="/run/media/rooxo/db11eff6-a95b-4f2f-b0be-004acdcda4f8"

unison ~/Apps $BACKUPDIR/Apps -auto
unison ~/Documents $BACKUPDIR/Documents -auto
unison ~/Games $BACKUPDIR/Games -auto
unison ~/Music $BACKUPDIR/Music -auto
unison ~/Pictures $BACKUPDIR/Pictures -auto
unison ~/Videos $BACKUPDIR/Videos -auto
