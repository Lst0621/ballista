#!/bin/bash
setxkbmap -option ctrl:swapcaps
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape;Control_L=Escape;Control_R=Escape'
