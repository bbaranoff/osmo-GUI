#!/bin/bash
set -x
set -e

byobu list-sessions | grep BTS || byobu new-session -d -s BTS

byobu list-windows -t BTS | grep start-script || byobu new-window -t BTS -n 'start-script'

byobu send-keys -t BTS:start-script "cd /root/osmo-GUI && ./TurnOnBTS.sh" C-m

