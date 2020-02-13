#!/bin/bash
set -x
set -e

byobu new-window -t root:1 -n 'USB1'
byobu send-keys -t USB1 "cd /root/osmo-GUI && ./osmoUSB0.sh" C-m
