package MyAnimals::Cats;

use 5.036;
use strict;
use warnings;

our $VERSION = '0.01';

use Exporter qw( import );

our @EXPORT_OK = qw( meow );
our %EXPORT_TAGS = ( all => \@EXPORT_OK );  # Optional.

sub meow { return "meow\n"; }

1;
