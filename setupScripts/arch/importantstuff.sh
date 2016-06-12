#installs important packages, requires root
pacman -S vim git chromium wine base-devel jdk8-openjdk mariadb rfkill vlc python-pip frcon virtualbox

systemctl start fcron.service
systemctl enable fcron.service
systemctl start mysql.service
systemctl enable mysql.service

#windows image for virtualbox
cd ~
wget "https://az792536.vo.msecnd.net/vms/VMBuild_20160322/VirtualBox/MSEdge/MSEdge.Win10TH2.VirtualBox.zip"
unzip MSEdge.Win10TH2.VirtualBox.zip
rm MSEdge.Win10TH2.VirtualBox.zip

#other stuff
pacaur -S nodejs-jshint
pip install flake8
