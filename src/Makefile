%.o: %.c
    $(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f sendat *.o

sendat: main.o openDev.o
	$(CC) $(CFLAGS) -o $@ $^ -lpthread
 
compile: sendat

install: compile
    $(INSTALL_DIR) $(DESTDIR)/usr/bin
    $(INSTALL_BIN) sendat $(DESTDIR)/usr/bin/
