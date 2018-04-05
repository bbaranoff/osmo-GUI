#!/usr/bin/env bash
gnome-terminal -e "bash -c \"osmo-nitb -c ~/.osmocom/open-bsc.cfg -l ~/.osmocom/hlr.sqlite3 -P -m -C --debug=DRLL:DCC:DMM:DRR:DRSL:DNM; exec bash\""
