pacman -S vim git chromium wine base-devel jdk8-openjdk mariadb rfkill vlc python-pip frcon

sudo systemctl start fcron.service
sudo systemctl enable fcron.service
sudo systemctl start mysql.service
sudo systemctl enable mysql.service

#other stuff
pacaur -S nodejs-jshint
pip install flake8
