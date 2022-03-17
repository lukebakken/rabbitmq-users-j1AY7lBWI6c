#!/bin/sh
set -e
unset RABBITMQ_LOGS
exec /usr/local/bin/docker-entrypoint.sh "$@"
