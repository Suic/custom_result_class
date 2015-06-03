#!/usr/bin/env perl

use strict;
use warnings;
use DBD::SQLite;
use DB;

my $schema = DB->connect(
    'dbi:SQLite:dbname=', ':memory', '', '', {quote_char => '`', name_sep => '.'}, 
);
$schema->deploy({});

