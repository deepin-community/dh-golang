#!/usr/bin/perl
use strict;
use warnings;
use Debian::Debhelper::Dh_Lib;

insert_before('dh_gencontrol', 'dh_golang');
# Go compiler compress debug symbols itself. dwz will exit 1.
remove_command('dh_dwz');

1
