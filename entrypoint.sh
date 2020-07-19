#!/bin/bash
set -e

if [ "$1" = 'tika' ]; then
    shift
    exec java -jar /tika-app-${TIKA_VERSION}.jar "$@"
fi

exec "$@"
