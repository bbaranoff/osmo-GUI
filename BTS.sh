#!/bin/bash
set -x
set -e

byobu list-sessions | grep BTS || byobu new-session -d -s BTS

byobu list-windows -t BTS | grep start-script || byobu new-window -t BTS -n 'start-script'

byobu send-keys -t BTS:start-script "cd /root/osmo-GUI && ./TurnOnBTS.sh" C-m
<<<<<<< HEAD

=======
>>>>>>> a2c5b3f45748b8c280ce73823f3ac7aa08b41b02
