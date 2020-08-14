# pmaster collection

Add some lacking functionalities to FreeBSD `ports-mgmt/portmaster`

## Getting Started

If you use Gentoo :penguin:, you probably use genlop(1), which, among other things, displays the current compilation and time it should take.

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
$ pmaster-wrapper bash
```

To see some compilation infos:

```
$ pmaster-stats
shells/bash:
        Started: Fri Aug 14 12:10:59 2020
        Elapsed: 30s
        ETA: 88s (Fri Aug 14 12:12:57 2020)
        Progress: 25%
```

## Under the hoot

An `sqlite` database is created : `/var/lib/pmaster.db`. It stores port origin and various infos, such as real time (as given by `time(1)`) and number of lines `portmaster(7)` gives.

Each time you run `pmaster-wrapper` an entry is created. `-p` option use the number of lines to give to `pv(1)`

`pmaster-stats` search for compilation by un-globing `${WRKDIRPREFIX}${PORTSDIR}/*/*/work` and searching for corresponding running processes. It then takes the time it was running for, and compare it with the last taken (averaged) stored in the database.

Of course, if it's the first compilation, nothing can be calculated...

## Authors

* **Gabriel Guillon** - *Initial work*


## Acknowledgments

* Thanks to the FreeBSD team for the awesome work
* And to the Gentoo team for the same reason


