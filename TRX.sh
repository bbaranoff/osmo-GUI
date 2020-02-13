#!/bin/bash
set -x
set -e
byobu list-sessions | grep TRX || byobu new-session -d -s TRX

byobu list-windows -t TRX | grep start-script || byobu new-window -t TRX -n 'start-script'

byobu send-keys -t TRX:start-script "cd /root/osmo-GUI && ./TurnOnTRX.sh" C-m

