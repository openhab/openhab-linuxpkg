#!/bin/sh

echo Launching the openHAB runtime...

if [ -r /etc/profile.d/openhab.sh ]; then
  . /etc/profile.d/openhab.sh
fi

if [ ! -z ${OPENHAB_RUNTIME} ]; then
    RUNTIME=${OPENHAB_RUNTIME}
else
    RUNTIME="$(dirname "$0")/runtime"
fi

exec "${RUNTIME}/bin/karaf" "${@}"
