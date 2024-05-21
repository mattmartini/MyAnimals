package MyAnimals::Dogs;

use lib 'lib';
use MyAnimals::Syntax;

use Exporter qw( import );

our $VERSION = '0.01';

our @EXPORT_OK   = qw( woof );
our %EXPORT_TAGS = ( all => \@EXPORT_OK );    # Optional.

sub woof { return "woof\n"; }

1;
