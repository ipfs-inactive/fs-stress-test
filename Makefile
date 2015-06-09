BINS = bin/ipfs bin/random bin/random-files

all: deps

deps: bins

clean:
	rm $(BINS)

bins: $(BINS)

bin/ipfs:
	# TODO: fix ipfs installation
	cp `which ipfs` bin/ipfs

bin/random:
	# TODO: fix random installation
	cp `which random` bin/random

bin/random-files:
	# TODO: fix random-files installation
	cp `which random-files` bin/random-files

test: test_expensive

test_expensive:
	cd sharness && make TEST_EXPENSIVE=1

test_cheap:
	cd sharness && make

.PHONY: all clean
