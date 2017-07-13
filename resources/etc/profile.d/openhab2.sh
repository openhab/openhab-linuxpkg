#!/bin/sh

## This file sets the environment variables for any user.
## If you need to edit these, edit the file /etc/default/openhab2.

if [ -r /etc/default/openhab2 ]; then
  . /etc/default/openhab2
fi

if [ -z "${OPENHAB_HTTP_PORT}" ];  then OPENHAB_HTTP_PORT=8080; fi
if [ -z "${OPENHAB_HTTPS_PORT}" ]; then OPENHAB_HTTPS_PORT=8443; fi
if [ -z "${OPENHAB_HOME}" ];       then OPENHAB_HOME="/usr/share/openhab2"; fi
if [ -z "${OPENHAB_CONF}" ];       then OPENHAB_CONF="/etc/openhab2"; fi
if [ -z "${OPENHAB_RUNTIME}" ];    then OPENHAB_RUNTIME="${OPENHAB_HOME}/runtime"; fi
if [ -z "${OPENHAB_USERDATA}" ];   then OPENHAB_USERDATA="/var/lib/openhab2"; fi
if [ -z "${OPENHAB_LOGDIR}" ];     then OPENHAB_LOGDIR="/var/log/openhab2"; fi
if [ -z "${OPENHAB_USER}" ];       then OPENHAB_USER="openhab"; fi
if [ -z "${OPENHAB_GROUP}" ];      then OPENHAB_GROUP="openhab"; fi

export OPENHAB_HTTP_PORT
export OPENHAB_HTTPS_PORT
export OPENHAB_HOME
export OPENHAB_CONF
export OPENHAB_RUNTIME
export OPENHAB_USERDATA
export OPENHAB_LOGDIR
export OPENHAB_USER
export OPENHAB_GROUP

