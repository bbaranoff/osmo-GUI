#!/usr/bin/env bash
tmux
exec "bash -c \"'/root/trx/src/host/layer23/src/transceiver/transceiver' -a 114 -2 -r 99; exec bash\""

