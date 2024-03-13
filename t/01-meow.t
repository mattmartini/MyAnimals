#!/usr/bin/env perl

use feature ':5.36';
use utf8;
use strict;
use warnings;
use autodie;
use open qw(:std :utf8);

use Test2::V0;
use lib 'lib';

use MyAnimals::Cats qw(meow);

plan tests => 1;

my $expected_value = "meow\n";
my $test_value     = meow();
is( $test_value, $expected_value, "meow - normal import test" );

done_testing;

