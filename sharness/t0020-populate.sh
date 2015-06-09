#!/bin/sh
#
# Copyright (c) 2015 Juan Batiz-Benet
# MIT Licensed; see the LICENSE file in this repository.
#

test_description="test populated fs"

. lib/test-lib.sh

ipfs_init

add_and_get() {
  ipfs add -q -r "$1" | tail -n1 >hash1
  echo ipfs get -o "$2" $(cat hash1)
  ipfs get -o "$2" $(cat hash1)
  ipfs add -q -r "$2" | tail -n1 >hash2
  test_cmp hash1 hash2
  diff -u -r "$1" "$2"
}

test_expect_success "populate shallow and small" '
  random-files --dirs 5 --files 10 --depth 3 --filesize 1024 expected1 &&
  add_and_get expected1 actual1
'

test_expect_success "populate deep and small" '
  random-files --dirs 6 --files 10 --depth 6 --filesize 1024 expected2 &&
  add_and_get expected2 actual2
'

# test_expect_success "populate shallow and big" '
#   random-files --dirs 5 --files 10 --depth 3 --filesize 1048576 expected3 &&
#   add_and_get expected3 actual3
# '

# test_expect_success "populate deep and big" '
#   random-files --dirs 10 --files 10 --depth 10 --filesize 1048576 expected4 &&
#   add_and_get expected4 actual4
# '

test_done
