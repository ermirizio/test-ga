#!/bin/bash
set -exo pipefail

LOCALIP=${1:-'localhost'}
RANDOM_USER=$(echo $RANDOM | md5sum | head -c 10 | tr -dc a-z0-9)

ORGDATA="{"Status":"OK","Message":"Org created","Meta":"6204181723e7f200019a462e"}"

ORGID=$(echo $ORGDATA | python -c 'import json,sys;obj=json.load(sys.stdin);print(obj["Meta"])')

echo $ORGID