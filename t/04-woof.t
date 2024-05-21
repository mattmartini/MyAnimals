#!/usr/bin/env perl

use Test2::V0;
use lib 'lib';

use MyAnimals::Syntax;
use MyAnimals::Dogs qw(woof);

plan tests => 1;

my $expected_value = "woof\n";
my $test_value     = woof();
is( $test_value, $expected_value, "woof - normal import test" );

done_testing;

