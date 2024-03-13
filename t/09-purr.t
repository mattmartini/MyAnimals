#!/usr/bin/env perl

use feature ':5.36';
use utf8;
use strict;
use warnings;
use autodie;
use open qw(:std :utf8);

use Test2::V0;
use lib 'lib';

use MyAnimals qw(::Cats);

plan tests => 1;

my $expected_value = "purr\n";
my $test_value     = purr();
is( $test_value, $expected_value, "purr - new :: import test" );

done_testing;

