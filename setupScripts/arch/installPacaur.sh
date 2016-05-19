pacman -S --needed base-devel
curl https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz > pacaur.tar.gz
tar -xvf pacaur.tar.gz
cd pacaur/
makepkg -sri
cd ../
rm -rf pacaur/
