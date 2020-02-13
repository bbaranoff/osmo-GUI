#!/bin/bash
set -e
set -x
byobu new-session -s root -d
modprobe snd_pcm_oss
modprobe snd_mixer_oss
modprobe mISDN_core
modprobe mISDN_dsp
byobu new-session -s root -d
node /root/osmo-GUI/index.js
