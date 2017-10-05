#!/bin/bash
if [ -z "$(synclient | grep TouchpadOff | grep 1)" ]; then
    synclient TouchpadOff=1
    unclutter -idle 0 &
else
    synclient TouchpadOff=0
    unclutter -idle 5 &
fi
