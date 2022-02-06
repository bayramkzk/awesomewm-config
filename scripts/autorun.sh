#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Input
xinput set-prop 14 296 -1
xinput set-prop 16 308 1
xinput set-prop 16 285 1
xset led

# Sound
pulseaudio --start

# Programs
run picom
run flameshot
