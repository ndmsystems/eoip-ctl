all: eoip-ctl

eoip-ctl: eoipcr.c libnetlink.o
	$(CC) $(CFLAGS) -fno-strict-aliasing -Wall -o eoip-ctl eoipcr.c libnetlink.o

libnetlink.o: libnetlink.c libnetlink.h
	$(CC) $(CFLAGS) -fno-strict-aliasing -Wall -c libnetlink.c

clean:
	rm -f eoip-ctl libnetlink.o
