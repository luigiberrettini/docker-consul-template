#!/bin/sh
set -e

if [ "$1" == 'render' ]; then
    exec /bin/consul-template -consul consul:8500 -template "/work/input.ctmpl:/work/output.config"
fi

exec "$@"