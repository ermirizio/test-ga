#!/bin/bash
set -exo pipefail

LOCALIP=${1:-'localhost'}
RANDOM_USER=$(echo $RANDOM | md5sum | head -c 10 | tr -dc a-z0-9)
