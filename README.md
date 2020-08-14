# pmaster collection

Add some lacking functionalities to FreeBSD `ports-mgmt/portmaster`

## Getting Started

If you use Gentoo :penguin:, you probably use genlop(1), which, among other things, displays how times compilation will take.

There ~~is~~ was no such equivalent on FreeBSD when using `ports-mgmt/portmaster`.

Here come pmaster collection!

### Prerequisites

Have a FreeBSD with `ports-mgmt/portmaster` installed.


### Installing

Clone that repository somewhere.

Copy files to your PATH, or maybe you can do:

```
$ mkdir ~/bin
$ cp pmaster-wrapper pmaster-stats ~/bin
# Add ~/bin to your PATH
```

## Running

Where you'd run portmaster(8), run pmaster-wrapper:

```
$ pmaster-wrapper dovecot
```

Use `pmaster-wrapper` in place of portmaster(8)

## Authors

* **Gabriel Guillon** - *Initial work*


## Acknowledgments

* Thanks to the FreeBSD team for the awesome work


