#!/bin/bash
if [ -f /etc/modprobe.d/vfio.conf ]; then
    notify-send "Laptop je vec u hybrid modu!"
else
    sudo mv /etc/modprobe.d/vfio.conff /etc/modprobe.d/vfio.conf
    #postavlja laptop u hybrid mode
    sudo /home/kestrel/Programs/Toolkit/LenovoLegionLinux/python/legion_linux/legion_linux/legion_cli.py hybrid-mode-enable
    notify-send "Ukljucena integrisana graficka, restartuj komp"
fi
