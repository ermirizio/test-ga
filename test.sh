#!/bin/bash
set -exo pipefail

LOCALIP=${1:-'localhost'}
RANDOM_USER=$(env tr -dc "a-z0-9" < /dev/urandom | head -c 10)
