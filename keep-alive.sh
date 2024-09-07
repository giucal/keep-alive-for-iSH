#!/sbin/openrc-run

description="Keeps iSH alive when in the background."

command="/bin/cp"
command_args="/dev/location /dev/null"
command_background=true
pidfile="/run/${RC_SVCNAME}.pid"

