STRIP=strip

all: eoip-ctl

eoip-ctl: eoipcr.c libnetlink.o
	$(CC) -Wall -Os -o eoip-ctl eoipcr.c libnetlink.o
	$(STRIP) eoip-ctl

libnetlink.o: libnetlink.c libnetlink.h
	$(CC) -Wall -Os -c libnetlink.c

clean:
	rm -f eoip-ctl libnetlink.o
