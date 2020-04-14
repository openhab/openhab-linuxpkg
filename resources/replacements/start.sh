#!/bin/sh

echo Launching the openHAB runtime...

if [ -r /etc/profile.d/openhab2.sh ]; then
  . /etc/profile.d/openhab2.sh
elif [ -r /etc/default/openhab2 ]; then
  . /etc/default/openhab2
fi

if [ ! -z ${OPENHAB_RUNTIME} ]; then
    RUNTIME=${OPENHAB_RUNTIME}
else
    RUNTIME="$(dirname "$0")/runtime"
fi

exec "${RUNTIME}/bin/karaf" "${@}"
