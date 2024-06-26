#!/usr/bin/env perl

use Test2::V0;
use lib 'lib';

use MyAnimals::Syntax;
use MyAnimals       qw(::Cats);
use MyAnimals::Dogs qw(woof);

plan tests => 2;

my $expected_value = "meow\n";
my $test_value     = meow();
is( $test_value, $expected_value, "meow woof - new :: import test" );

$expected_value = "woof\n";
$test_value     = woof();
is( $test_value, $expected_value, "woof meow - new :: import test" );

done_testing;

