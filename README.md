# ipfs-stress-fs -- fs stress tests

This repo will stress test IPFS filesystem capabilities.

The target goals are:

1. pass simple (1GB+) randomized tests
2. pass medium (1TB+) randomized tests
3. pass various real workloads:
  - lots of docs
  - containers and VMs
  - videos
  - DBs
4. pass large (1PB+) randomized tests

(today we're at 1.)

## Running Tests

```
make test
```

## Installing deps

You may have to install deps. Will fix this soon (auto-install with ipfs).

```
go get -u github.com/ipfs/go-ipfs/cmd/ipfs
go get -u github.com/jbenet/go-random-files/random-files
```
