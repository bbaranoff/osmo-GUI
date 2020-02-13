#!/bin/bash
/root/trx/src/host/osmocon/osmocon -m c123xor -p /dev/ttyUSB0 -s /tmp/osmocom_l2 -c /root/trx/src/target/firmware/board/compal_e88/trx.highram.bin -r 99 &
