#!/bin/bash
set -x
set -e

byobu new-window -t root:1 -n USB0
byobu send-keys -t USB0 "cd /root/osmo-GUI && ./osmoUSB0.sh" C-m
