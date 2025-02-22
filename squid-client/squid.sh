#!/bin/sh
/usr/sbin/squid  -Nz
/usr/sbin/squid "$@" &
/usr/local/bin/tailscaleboot
