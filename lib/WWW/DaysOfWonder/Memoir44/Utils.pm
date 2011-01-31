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

package WWW::DaysOfWonder::Memoir44::Utils;
BEGIN {
  $WWW::DaysOfWonder::Memoir44::Utils::VERSION = '2.110310';
}
# ABSTRACT: various subs and constants used in the dist

use File::HomeDir::PathClass;
use Sub::Exporter -setup => {
    exports => [ qw{ DATADIR } ],
};



# -- public subs


sub DATADIR {
    return File::HomeDir::PathClass->my_dist_data(
        'WWW-DaysOfWonder-Memoir44', { create => 1 } );
}


1;


=pod

=head1 NAME

WWW::DaysOfWonder::Memoir44::Utils - various subs and constants used in the dist

=head1 VERSION

version 2.110310

=head1 DESCRIPTION

This module exports various subs used in the dist.

=head1 METHODS

=head2 DATADIR

    my $file = DATADIR->file( ... );

Return a L<Path::Class> object containing the data directory for the
distribution. The directory will be created if needed.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

