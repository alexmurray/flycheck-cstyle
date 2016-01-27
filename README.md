Flycheck CStyle Checker
=======================

Integrate [cstyle](https://github.com/alexmurray/cstyle) with
[flycheck](http://www.flycheck.org) to automatically check the
style of your C/C++ code on the fly.

To enable:

```
(require 'flycheck-cstyle)
(flycheck-cstyle-setup)
```

Currently this has only been tested with Emacs 24.5 and a recent version of
flycheck.
