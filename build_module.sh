#!/bin/sh                                                 

make -C /lib/modules/`uname -r`/build M=`pwd` KMYDIR=`pwd`

# install
mkdir /lib/modules/`uname -r`/kernel/drivers/media/usb/smi2021
cp -afv smi2021.ko /lib/modules/`uname -r`/kernel/drivers/media/usb/smi2021/smi2021.ko
depmod

rmmod smi2021
modprobe smi2021

# gst-launch-0.10 -vvv v4l2src device=/dev/video1 ! autovideosink
# /sources/AP/MPlayer-1.1.1/mplayer -tv driver=v4l2:device=/dev/video1:width=640:height=480:norm=NTSC:input=0 tv://
# /sources/somagic-easycap_1.1/somagic-capture -n -c -i 1 | /sources/AP/MPlayer-1.1.1/mplayer -demuxer rawvideo -rawvideo "ntsc:format=uyvy:fps=30000/1001" -aspect 4:3 -