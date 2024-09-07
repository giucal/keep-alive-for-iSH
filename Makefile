all:

/etc/init.d:
	apk add openrc
/etc/init.d/keep-alive: keep-alive.sh /etc/init.d
	install $< $@
/etc/runlevels/default/keep-alive: /etc/init.d/keep-alive
	rc-update add keep-alive default

openrc: /etc/init.d
add: /etc/runlevels/default/keep-alive
install: /etc/init.d/keep-alive add

.PHONY: openrc add install
