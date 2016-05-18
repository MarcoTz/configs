pacman -S --needed base-devel
curl aur.archlinux.org/cgit/snapshot/pacaur.tar.gz
tar -xvf pacaur.tar.gz
cd pacaur/
makepgk -sri
cd ../
rm -rf pacaur/
