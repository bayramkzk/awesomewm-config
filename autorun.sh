#!/usr/bin/env sh

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run ~/.config/awesome/mouse_config.sh

