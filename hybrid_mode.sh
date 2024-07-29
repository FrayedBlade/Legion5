#!/bin/bash
if [ -f /etc/modprobe.d/vfio.conf ]; then
    notify-send "Laptop already in hybrid mode!"
else
    sudo mv /etc/modprobe.d/vfio.conff /etc/modprobe.d/vfio.conf
    
    #turns on hybrid mode in LLL
    sudo /home/kestrel/Programs/Toolkit/LenovoLegionLinux/python/legion_linux/legion_linux/legion_cli.py hybrid-mode-enable
    notify-send "Igpu - ON, Restart required."
fi
