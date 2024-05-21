#!/usr/bin/env perl

use Test2::V0;
use lib 'lib';

use MyAnimals::Syntax;
use MyAnimals qw(::Cats);

plan tests => 1;

my $expected_value = "purr\n";
my $test_value     = purr();
is( $test_value, $expected_value, "purr - new :: import test" );

done_testing;

