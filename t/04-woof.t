#!/usr/bin/env perl

use feature ':5.36';
use utf8;
use strict;
use warnings;
use autodie;
use open qw(:std :utf8);

use Test2::V0;
use lib 'lib';

use MyAnimals::Dogs qw(woof);

plan tests => 1;

my $expected_value = "woof\n";
my $test_value     = woof();
is( $test_value, $expected_value, "woof - normal import test" );

done_testing;

