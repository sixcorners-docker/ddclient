#!/usr/bin/env bash

if [ "${1:0:1}" = '-' ]; then
	set -- ddclient "$@"
fi

exec "$@"
