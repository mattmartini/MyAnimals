package MyAnimals::Birds;

use lib 'lib';
use MyAnimals::Syntax;

use Exporter qw( import );

our $VERSION = '0.01';

our %EXPORT_TAGS = ( sounds => [qw(tweet warble)], reproduce => [qw(nest)] );

Exporter::export_ok_tags('sounds');
Exporter::export_ok_tags('reproduce');

# add all the other ":class" tags to the ":all" class, deleting duplicates
{
    my %seen;

    push @{ $EXPORT_TAGS{ all } }, grep { !$seen{ $_ }++ } @{ $EXPORT_TAGS{ $_ } }
        foreach keys %EXPORT_TAGS;
}

sub tweet { return "tweet\n"; }

sub warble { return "warble\n"; }

sub nest { return "nest\n"; }

1;
