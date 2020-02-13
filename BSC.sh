#!/bin/bash
set -x
set -e

byobu new-window -t root:3 -n 'BSC'
byobu send-keys -t BSC "cd /root/osmo-GUI && ./TurnOnBSC.sh" C-m
