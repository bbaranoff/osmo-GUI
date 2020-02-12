#!/bin/bash
set -x
set -e
<<<<<<< HEAD
=======

>>>>>>> a2c5b3f45748b8c280ce73823f3ac7aa08b41b02
byobu list-sessions | grep USB1 || byobu new-session -d -s USB1

byobu list-windows -t USB1 | grep start-script || byobu new-window -t USB1 -n 'start-script'

byobu send-keys -t USB1:start-script "cd /root/osmo-GUI && ./osmoUSB1.sh" C-m
<<<<<<< HEAD

=======
>>>>>>> a2c5b3f45748b8c280ce73823f3ac7aa08b41b02
