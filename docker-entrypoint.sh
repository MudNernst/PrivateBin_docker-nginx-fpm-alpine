#!/bin/sh

set -e

if [ ! -e "/srv/IS_INSTALLED" ]; then
  cp -r /src/srv/. /srv/
  touch /srv/IS_INSTALLED
fi

exec "$@"