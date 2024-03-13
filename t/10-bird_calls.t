#!/usr/bin/env perl

use feature ':5.36';
use utf8;
use strict;
use warnings;
use autodie;
use open qw(:std :utf8);

use Test2::V0;
use lib 'lib';

use MyAnimals::Birds qw(:sounds);
use MyAnimals::Dogs  qw(woof);
use MyAnimals        qw(::Cats);

plan tests => 5;

my $expected_value = "meow\n";
my $test_value     = meow();
is( $test_value, $expected_value, "meow woof bird_calls - new :: import test" );

$expected_value = "purr\n";
$test_value     = purr();
is( $test_value, $expected_value, "purr woof bird_calls - new :: import test" );

$expected_value = "woof\n";
$test_value     = woof();
is( $test_value, $expected_value, "woof meow bird_calls - new :: import test" );

$expected_value = "tweet\n";
$test_value     = tweet();
is( $test_value, $expected_value, "woof meow bird_calls - new :: import test" );

$expected_value = "warble\n";
$test_value     = warble();
is( $test_value, $expected_value, "woof meow bird_calls - new :: import test" );

done_testing;

