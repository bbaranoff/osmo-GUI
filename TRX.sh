#!/bin/bash
set -x
set -e
<<<<<<< HEAD
=======

>>>>>>> a2c5b3f45748b8c280ce73823f3ac7aa08b41b02
byobu list-sessions | grep TRX || byobu new-session -d -s TRX

byobu list-windows -t TRX | grep start-script || byobu new-window -t TRX -n 'start-script'

byobu send-keys -t TRX:start-script "cd /root/osmo-GUI && ./TurnOnTRX.sh" C-m
<<<<<<< HEAD

=======
>>>>>>> a2c5b3f45748b8c280ce73823f3ac7aa08b41b02
