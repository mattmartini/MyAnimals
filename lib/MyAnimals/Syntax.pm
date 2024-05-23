package MyAnimals::Syntax;

use 5.018;

use utf8;
use strict;
use warnings;
use autodie;
use open qw(:std :utf8);

use Import::Into;
use Module::Runtime;

=encoding utf-8
=head1 NAME

MyAnimals::Syntax - Provide consistent feature setup.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

Provide consistent feature setup.  Put all of the "use" setup cmds in one place.
Then import them into other modules.

Use this in other modules:

    package MyAnimals::Example;

    use MyAnimasl::Syntax;

    # Rest of Code...

This is equivalent to:

    package MyAnimas::Example;

    use feature :5.18;
    use utf8;
    use strict;
    use warnings;
    use autodie;
    use open qw(:std :utf8);

    # Rest of Code...

=head1 SUBROUTINES/METHODS

=head2 importables

Define the items to be imported.

=cut

sub importables {
    my ($class) = @_;
    return ( [ 'feature', ':5.18' ],
             'utf8', 'strict', 'warnings', 'autodie',
             [ 'open', ':std', ':utf8' ], 'Carp', );
}

=head2 import

Do the import.

=cut

sub import {
    my ( $class, @args ) = @_;
    my $caller = caller;

    foreach my $import_proto ( $class->importables ) {
        my ( $module, @args )
            = ( ref($import_proto) || '' ) eq 'ARRAY'
            ? @$import_proto
            : ( $import_proto, () );
        Module::Runtime::use_module($module)->import::into( $caller, @args );
    }
    return;
}

=head1 AUTHOR

Matt Martini, C<< <matt at imaginarywave.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-myanimals at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=MyAnimals>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc MyAnimals::Syntax


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=MyAnimals>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/MyAnimals>

=item * Search CPAN

L<https://metacpan.org/release/MyAnimals>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright ©️  2024 by Matt Martini.

This is free software, licensed under:

  The GNU General Public License, Version 3, June 2007


=cut

1;    # End of MyAnimals::Syntax
