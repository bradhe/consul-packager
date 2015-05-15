# Consule package creator

This script cobbles together a Consul package for installation on Debian-based
systems. It's pretty straight forward and doesn't make any assumptions about
configuration.

## Build

Pretty easy. It assumes that you have [ruby installed](https://www.ruby-lang.org/en/downloads/).

```bash
$ bundle install
# Installs dependencies.
$ ./package.sh
```
