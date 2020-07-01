#!/bin/sh

## This file sets the environment variables for any user.
## If you need to edit these, edit the file /etc/default/openhab.

if [ -r /etc/default/openhab ]; then
  . /etc/default/openhab
fi

if [ -z "${OPENHAB_HTTP_PORT}" ];  then OPENHAB_HTTP_PORT=8080; fi
if [ -z "${OPENHAB_HTTPS_PORT}" ]; then OPENHAB_HTTPS_PORT=8443; fi
if [ -z "${OPENHAB_HOME}" ];       then OPENHAB_HOME="/usr/share/openhab"; fi
if [ -z "${OPENHAB_CONF}" ];       then OPENHAB_CONF="/etc/openhab"; fi
if [ -z "${OPENHAB_RUNTIME}" ];    then OPENHAB_RUNTIME="${OPENHAB_HOME}/runtime"; fi
if [ -z "${OPENHAB_USERDATA}" ];   then OPENHAB_USERDATA="/var/lib/openhab"; fi
if [ -z "${OPENHAB_BACKUPS}" ];    then OPENHAB_BACKUPS="${OPENHAB_USERDATA}/backups"; fi
if [ -z "${OPENHAB_LOGDIR}" ];     then OPENHAB_LOGDIR="/var/log/openhab"; fi
if [ -z "${OPENHAB_USER}" ];       then OPENHAB_USER="openhab"; fi
if [ -z "${OPENHAB_GROUP}" ];      then OPENHAB_GROUP="openhab"; fi

# Override configuration variables from user file if it present
if [ -r ${OPENHAB_CONF}/linux.parameters ]; then
  . ${OPENHAB_CONF}/linux.parameters
fi

export OPENHAB_HTTP_PORT
export OPENHAB_HTTPS_PORT
export OPENHAB_HOME
export OPENHAB_CONF
export OPENHAB_RUNTIME
export OPENHAB_USERDATA
export OPENHAB_LOGDIR
export OPENHAB_BACKUPS
export OPENHAB_USER
export OPENHAB_GROUP

