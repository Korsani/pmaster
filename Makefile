install: /usr/local/bin/pmaster

/usr/local/bin/pmaster: pmaster
	install $> $@

clean:
	rm -f *~
