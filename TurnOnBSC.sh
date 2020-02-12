<<<<<<< HEAD
#!/bin/bash
/root/osmo-GUI/osmo-nitb -c ~/.osmocom/open-bsc.cfg -P -m -C --debug=DRLL:DCC:DMM:DRR:DRSL:DNM
=======
#!/usr/bin/env bash
exec "bash -c \"osmo-nitb -c ~/.osmocom/open-bsc.cfg -l ~/.osmocom/hlr.sqlite3 -P -m -C --debug=DRLL:DCC:DMM:DRR:DRSL:DNM;"
>>>>>>> a2c5b3f45748b8c280ce73823f3ac7aa08b41b02
