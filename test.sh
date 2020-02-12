#!/bin/bash
set -x
set -e

byobu list-sessions | grep my-app || byobu new-session -d -s my-app

byobu list-windows -t my-app | grep start-script || byobu new-window -t my-app -n 'start-script'

byobu send-keys -t my-app:start-script "cd /home/username/scripts/ && python userscript1.py" C-m
