#!/bin/bash
BACKUPDIR="/run/media/rooxo/db11eff6-a95b-4f2f-b0be-004acdcda4f8"

echo Studium
unison ~/Documents/Studium $BACKUPDIR/Documents/Studium -auto
echo Konto
unison ~/Documents/Konto $BAKCKUPDIR/Documents/Konto -auto
echo ebooks
unison ~/Documents/ebooks $BACKUPDIR/Documents/ebooks -auto
echo Pictures
unison ~/Pictures $BACKUPDIR/Pictures -auto
echo rssfeeds
unison ~/Documents/feedlist.opml $BACKUPDIR/Documents/feedlist.opml -auto
echo bookdb
mysqldump -u root BOOKS > $BACKUPDIR/bookdb.sql
