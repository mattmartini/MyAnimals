package MyAnimals;

use 5.036;
use strict;
use warnings;

our $VERSION = '0.01';

use Exporter   qw( );
use List::Util qw( uniq );

our @EXPORT_OK = ();
our %EXPORT_TAGS = ( ALL => \@EXPORT_OK );  # Optional.

sub import {
   my $class = shift;

   my ( @pkgs, @rest );
   for ( @_ ) {
      if ( /^::/ ) {
         push @pkgs, __PACKAGE__ . $_;
      } else {
         push @rest, $_;
      }
   }

   for my $pkg ( @pkgs ) {
      my $mod = ( $pkg =~ s{::}{/}gr ) . ".pm";
      require $mod;

      my $exports = do { no strict "refs"; \@{ $pkg . "::EXPORT_OK" } };
      $pkg->import( @$exports );
      @EXPORT_OK = uniq @EXPORT_OK, @$exports;
   }

   @_ = ( $class, @rest );
   goto &Exporter::import;
}

=head1 NAME

MyAnimals - Test of interface design where :: denotes a package to load

=cut
1;
