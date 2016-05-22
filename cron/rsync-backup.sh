BACKUPDIR="/run/media/rooxo/a03d2c3e-258b-462f-a360-1b397db1f607/"

rsync -a --delete ~/Documents $BACKUPDIR/Documents
rsync -a --delete ~/Music $BACKUPDIR/Music
rsync -a --delete ~/Apps $BACKUPDIR/Apps
rsync -a --delete ~/Games $BACKUPDIR/Games
rsync -a --delete ~/Pictures $BACKUPDIR/Pictures
rsync -a --delete ~/Videos $BACKUPDIR/Videos
