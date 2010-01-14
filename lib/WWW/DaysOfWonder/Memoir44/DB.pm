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

package WWW::DaysOfWonder::Memoir44::DB;
our $VERSION = '1.100140';
# ABSTRACT: orlite for mem44 sqlite db

use File::Spec::Functions qw{ catdir };

use WWW::DaysOfWonder::Memoir44::Utils qw{ get_db_file get_dist_dir };

use ORLite ();
use ORLite::Migrate {
    create        => 1,
    file          => get_db_file(),
    user_revision => 1,
    timeline      => catdir( get_dist_dir(), 'db-timeline' ),
}; #, '-DEBUG'; # uncomment the trailing -DEBUG for debug infos on orlite magic


1;


=pod

=head1 NAME

WWW::DaysOfWonder::Memoir44::DB - orlite for mem44 sqlite db

=head1 VERSION

version 1.100140

=head1 DESCRIPTION

This module is used to fetch auto-magically the database schema from the
real sqlite database and map the tables to sub-modules, thanks to
L<ORLite>. It will also create the database if it doesn't exist, with
L<ORLite::Migrate>.

=for Pod::Coverage::TrustPod dsn
    dbh
    commit
    rollback
    do
    selectall_arrayref
    selectall_hashref
    selectcol_arrayref
    selectrow_array
    selectrow_arrayref
    selectrow_hashref
    prepare
    pragma
    begin
    connect
    iterate
    orlite
    sqlite

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

