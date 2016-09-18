BACKUPDIR="/run/media/rooxo/a03d2c3e-258b-462f-a360-1b397db1f607/"

rsync -a --delete ~/Documents $BACKUPDIR
rsync -a --delete ~/Music $BACKUPDIR
rsync -a --delete ~/Apps $BACKUPDIR
rsync -a --delete ~/Games $BACKUPDIR
rsync -a --delete ~/Pictures $BACKUPDIR
rsync -a --delete ~/Videos $BACKUPDIR
rsync -a --delete ~/Desktop $BACKUPDIR
