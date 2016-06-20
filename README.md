# fs-stress-test

[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)
[![](https://img.shields.io/badge/project-IPFS-blue.svg?style=flat-square)](http://ipfs.io/)
[![](https://img.shields.io/badge/freenode-%23ipfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23ipfs)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> IPFS Stress tests

This repo will stress test IPFS filesystem capabilities.

## Table of Contents

## Background

The target goals are:

1. pass simple (1GB+) randomized tests
2. pass medium (1TB+) randomized tests
3. pass various real workloads:
  - lots of docs
  - containers and VMs
  - videos
  - DBs
4. pass large (1PB+) randomized tests

(Today we're at 1.)

## Install

Simply clone this repository.

```sh
git clone https://github.com/ipfs/fs-stress-test
```

### Installing deps

You may have to install deps. Will fix this soon (auto-install with ipfs).

```sh
go get -u github.com/ipfs/go-ipfs/cmd/ipfs
go get -u github.com/jbenet/go-random-files/random-files
```

## Usage

### Running Tests

```sh
make test
```

## Contribute

Feel free to join in. All welcome. Open an [issue](https://github.com/ipfs/fs-stress-test/issues)!

This repository falls under the IPFS [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md).

### Want to hack on IPFS?

[![](https://cdn.rawgit.com/jbenet/contribute-ipfs-gif/master/img/contribute.gif)](https://github.com/ipfs/community/blob/master/contributing.md)

## License

Copyright (c) 2016 Juan Batiz-Benet
