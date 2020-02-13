#!/bin/bash
set -x
set -e

byobu new-window -t root:4 -n 'TRX'
byobu send-keys -t TRX "cd /root/osmo-GUI && ./TurnOnTRX.sh" C-m
