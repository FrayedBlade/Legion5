#!/bin/bash
if [ -f /etc/modprobe.d/vfio.conff ]; then
    notify-send "Laptop already in dedicated mode!"
else
    sudo mv /etc/modprobe.d/vfio.conf /etc/modprobe.d/vfio.conff
    
    #turns on dedicated mode in LLL
    sudo /home/kestrel/Programs/Toolkit/LenovoLegionLinux/python/legion_linux/legion_linux/legion_cli.py hybrid-mode-disable
    notify-send "Nvidia - ON, Restart required."
fi
