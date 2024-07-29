#!/bin/bash
if [ -f /etc/modprobe.d/vfio.conff ]; then
    notify-send "Laptop je vec u dedicated modu!"
else
    sudo mv /etc/modprobe.d/vfio.conf /etc/modprobe.d/vfio.conff
    #postavlja grafu u dedicated mode
    sudo /home/kestrel/Programs/Toolkit/LenovoLegionLinux/python/legion_linux/legion_linux/legion_cli.py hybrid-mode-disable
    notify-send "Ukljucena Nvidia grafa, integrusa ugasena, restartuj komp"
fi
