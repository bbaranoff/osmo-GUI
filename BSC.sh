#!/bin/bash
set -x
set -e

byobu list-sessions | grep BSC || byobu new-session -d -s BSC

byobu list-windows -t BSC | grep start-script || byobu new-window -t BSC -n 'start-script'

byobu send-keys -t BSC:start-script "cd /root/osmo-GUI && ./TurnOnBSC.sh" C-m
