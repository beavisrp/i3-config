#!/bin/bash


volume_muted=`amixer -D pulse | grep Playback | tail -1 | awk '{print $6}' | grep on`
#volume_perc=`amixer -D pulse | grep Playback | tail -1 | awk '{print $5}'`
#echo $volume_muted $volume_perc

if [ -z $volume_muted ]
then
echo 1
else
echo 0
fi