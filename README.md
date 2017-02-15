[![Build Status](https://travis-ci.org/GeoffWilliams/aix_service_fix.svg?branch=master)](https://travis-ci.org/GeoffWilliams/aix_service_fix)
# aix_service_fix

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Fix the service provider on AIX WRT: PUP-7179 (stop non-existant service)

## Setup

### What aix_service_fix affects
* Replaces the service provider on AIX with a fixed version (hotfix)
* Self-identifies by presence of fact `pup_7179`

## Usage

```
include aix_service_fix
```

Will replace the AIX service provider.

The presence of fact `pup_7179` on any system indicates that this fix is present on the system.

## Reference

### Classes
* `aix_service_fix` - Class containing the fix

### Facts
* `pup_7179` Custom fact Self-identifying the presence of this module

## Limitations

* Supports AIX only
* Not supported by Puppet, Inc.
* Must be disabled during any upgrade to Puppet

## Development

As this is a hotfix, no further development anticipated.

## Testing
This module supports testing using [PDQTest](https://github.com/GeoffWilliams/pdqtest).


Test can be executed with:

```
bundle install
bundle exec pdqtest all
```


See `.travis.yml` for a working CI example
