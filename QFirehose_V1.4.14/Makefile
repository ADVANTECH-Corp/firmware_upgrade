SRC=firehose_protocol.c  qfirehose.c  sahara_protocol.c usb_linux.c stream_download_protocol.c md5.c usb2tcp.c 

CFLAGS += -Wall -Wextra -Werror -O1 #-s
LDFLAGS += -lpthread -ldl
ifeq ($(CC),cc)
CC=${CROSS_COMPILE}gcc
endif

linux: clean
	${CC} ${CFLAGS} ${SRC} -o QFirehose ${LDFLAGS}
	
clean:
	rm -rf QFirehose obj libs usb2tcp *~
