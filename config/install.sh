#!/bin/bash -e

mkdir -p /target/home/p/.config/autostart
chmod 777 -R /target/home/p/.config

echo '[Desktop Entry]
Type=Application
Exec=gnome-terminal -x bash --login -c /install.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
' > /target/home/p/.config/autostart/install.desktop

echo '#!/bin/bash -e
# export DEBIAN_FRONTEND=noninteractive
sudo true; wget -q -O- https://github.com/paul-nechifor/dotfiles/raw/master/install.sh | bash -s - infect
# rm -f /install.sh
rm -f /home/p/.config/autostart/install.desktop
' > /target/install.sh
chmod +x /target/install.sh

echo 'p ALL=(ALL) NOPASSWD: ALL' >> /target/etc/sudoers
