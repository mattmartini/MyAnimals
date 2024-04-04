#!perl
use 5.036;
use strict;
use warnings;
use Test::More;

plan tests => 3;

BEGIN {
    use_ok('MyAnimals')       || print "Bail out!\n";
    use_ok('MyAnimals::Cats') || print "Bail out!\n";
    use_ok('MyAnimals::Dogs') || print "Bail out!\n";
}

diag("Testing MyAnimals $MyAnimals::VERSION, Perl $], $^X");
