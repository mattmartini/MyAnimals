package MyAnimals::Dogs;

use 5.036;
use strict;
use warnings;

our $VERSION = '0.01';

use Exporter qw( import );

our @EXPORT_OK = qw( woof );
our %EXPORT_TAGS = ( all => \@EXPORT_OK );  # Optional.

sub woof { return "woof\n";  }

1;
