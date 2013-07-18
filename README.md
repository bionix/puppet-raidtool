puppet-raidtool
===============

A puppet module to install the raid controller depends cli binary

branch 'master':
[![Build Status][1]][2]

[1]: https://secure.travis-ci.org/bionix/puppet-raidtool.png
[2]: http://travis-ci.org/bionix/puppet-raidtool?branch=master

branch 'dev':
[![Build Status][3]][4]

[3]: https://secure.travis-ci.org/bionix/puppet-raidtool.png
[4]: http://travis-ci.org/bionix/puppet-raidtool?branch=dev



Overview
--------

Check your hardware for a known raid controller and install the cli binary into
/usr/sbin/


Usage
-----

Example:
    class { 'raidtool': }


Supported Platforms
-------------------

The module has been tested on:

* Debian Wheezy 7.x x86_64
* Ubuntu 12.04 x86_64

The module does not currently support non-linux operating systems. Patches are welcome.


Support Hardware
----------------

* Adaptec RAID controller
* 3ware RAID controller
* LSI RAID controller
* Compaq / Hewlett-Packard RAID controller


Dependencies
------------

* Facter version:  greater than 1.5.x (best support with 1.7.x)


Notices
-------

The module is written for Puppet version 3.x and higher.


Author
------

Markus "bionix" Rekkenbeil


Support
-------
Please open tickets and issues at https://github.com/bionix/puppet-raidtool/issues
