#!/bin/bash
set -x
set -e

byobu new-window -t root:2 -n 'USB1'
byobu send-keys -t USB1 "cd /root/osmo-GUI && ./osmoUSB1.sh" C-m
