T = $(sort $(wildcard t[0-9][0-9][0-9][0-9]-*.sh))
BINS = bin/ipfs bin/random bin/random-files
SHARNESS = lib/sharness/sharness.sh

all: clean deps $(T) aggregate

clean:
	@echo "*** $@ ***"
	-rm -rf test-results

$(T):
	@echo "*** $@ ***"
	./$@

aggregate:
	@echo "*** $@ ***"
	lib/test-aggregate-results.sh

deps: $(SHARNESS) $(BINS)

$(SHARNESS):
	@echo "*** installing $@ ***"
	lib/install-sharness.sh

bin/%:
	@echo "*** installing $@ ***"
	cd .. && make $@

.PHONY: all clean $(T) aggregate
