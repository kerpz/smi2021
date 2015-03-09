smi2021
=============

Somagic EasyCap Linux Kernel Driver

How to use
---------

Build

    make -C /lib/modules/`uname -r`/build M=`pwd` KMYDIR=`pwd`

Install

    mkdir /lib/modules/`uname -r`/kernel/drivers/media/usb/smi2021
    cp -afv smi2021.ko /lib/modules/`uname -r`/kernel/drivers/media/usb/smi2021/smi2021.ko
    depmod

Load

    rmmod smi2021
    modprobe smi2021
