puppet-raidtool
===============

A puppet module to install the raid controller depends cli binary


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