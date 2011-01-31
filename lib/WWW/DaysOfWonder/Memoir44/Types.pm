#
# This file is part of WWW-DaysOfWonder-Memoir44
#
# This software is copyright (c) 2009 by Jerome Quelin.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use 5.010;
use strict;
use warnings;

package WWW::DaysOfWonder::Memoir44::Types;
BEGIN {
  $WWW::DaysOfWonder::Memoir44::Types::VERSION = '2.110310';
}
# ABSTRACT: various types used in the distribution

use Moose::Util::TypeConstraints;
use Sub::Exporter -setup => { exports => [ qw{ Source } ] };

#enum Board  => qw{ beach country winter desert };
#enum Format => qw{ standard brkthru overlord };
enum Source => qw{ game approved public };

1;


=pod

=head1 NAME

WWW::DaysOfWonder::Memoir44::Types - various types used in the distribution

=head1 VERSION

version 2.110310

=head1 DESCRIPTION

This module defines and exports the types used by other modules of the
distribution.

The exported types are:

=over 4

=item Source - the scenario source. Can be one of C<game> (shipped with
the board game itself), C<approved> (officially approved by days of
wonder) and C<public> (provided by other users).

=back

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

