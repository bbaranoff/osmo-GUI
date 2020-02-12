#!/bin/bash
set -x
set -e

byobu list-sessions | grep USB0 || byobu new-session -d -s USB0

byobu list-windows -t USB0 | grep start-script || byobu new-window -t USB0 -n 'start-script'

byobu send-keys -t USB0:start-script "cd /root/osmo-GUI && ./osmoUSB0.sh" C-m

