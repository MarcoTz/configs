#installs important packages, requires root
pacman -S vim git wine base-devel jdk8-openjdk mariadb rfkill vlc python-pip frcon virtualbox

systemctl start fcron.service
systemctl enable fcron.service
systemctl start mysql.service
systemctl enable mysql.service

#other stuff
pacaur -S nodejs-jshint
pip install flake8
