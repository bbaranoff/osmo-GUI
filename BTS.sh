#!/bin/bash
set -x
set -e

byobu new-window -t root:5 -n 'BTS'
byobu send-keys -t BTS "cd /root/osmo-GUI && ./TurnOnBTS.sh" C-m
