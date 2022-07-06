#!/bin/bash
id=$(xdotool search --onlyvisible --name terminal)
#If we do not start __un__-maximized, we need to find a working alternative for
# the next line
#wmctrl -ir $id -b remove,maximized_vert,maximized_horz
w=1080
h=1080
xdotool windowsize $id $w $h
x=500
y=900
t=1
stp=1
while true
do
    let xpos="x+t*stp"
    let ypos="y-t*stp"
    xdotool windowmove $id $xpos $ypos
    let t++
    sleep .1
done
