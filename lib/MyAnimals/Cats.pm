package MyAnimals::Cats;

use lib 'lib';
use MyAnimals::Syntax;

use Exporter qw( import );

our $VERSION = '0.01';

our @EXPORT_OK   = qw( meow purr );
our %EXPORT_TAGS = ( all => \@EXPORT_OK );    # Optional.

sub meow { return "meow\n"; }

sub purr { return "purr\n"; }

1;
