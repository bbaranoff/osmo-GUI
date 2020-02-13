#!/bin/bash
set -x
set -e

byobu rename-window -t root:0 'USB0'
byobu send-keys -t USB0 "cd /root/osmo-GUI && ./osmoUSB0.sh" C-m
