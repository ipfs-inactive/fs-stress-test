#!/bin/sh
#
# Copyright (c) 2015 Christian Couder
# MIT Licensed; see the LICENSE file in this repository.
#

test_description="test we have tools"

. lib/test-lib.sh

test_expect_success "ipfs is available" '
	type multihash
'

test_expect_success "ipfs works" '
  ipfs version | grep "ipfs version"
'

test_expect_success "random is available" '
  type random
'

test_expect_success "random works" '
  printf "\x96\x68\x46\xd9\xbf\xcc\x25\xa5\xe0\x32" >expected &&
  random 10 12345 >actual &&
  test_cmp expected actual
'

test_expect_success "random-files is available" '
  type random-files
'

test_expect_success "random-files works" '
  random-files --dirs=3 --depth=3 --files=5 foo | sort >expected &&
  find foo/* | sort >actual &&
  test $(cat actual | wc -l) -gt 75 &&
  test_cmp expected actual
'

test_done
