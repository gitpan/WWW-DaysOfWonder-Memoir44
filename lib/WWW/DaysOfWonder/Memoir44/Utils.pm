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
our $VERSION = '1.100140';
# ABSTRACT: various subs and constants used in the dist

use File::BaseDir         qw{ data_home };
use File::ShareDir        qw{ dist_dir };
use FindBin               qw{ $Bin };
use Path::Class;
use Sub::Exporter         -setup => { exports => [ qw{
    get_db_file get_dist_dir
} ] };


# -- public subs


sub get_db_file {
    my $dir = _my_data_home();
    return $dir->file( 'scenarios.db' )->stringify;
}



sub get_dist_dir {
    my $dir = dir($Bin);

    # when running tests from build.pl
    return $dir->subdir( 'share' )->stringify if -e $dir->file( 'dist.ini' );

    # when running from development checkout
    $dir = $dir->parent;
    return $dir->subdir( 'share' )->stringify if -e $dir->file( 'dist.ini' );

    # regular usage: using file::sharedir
    return dist_dir('WWW-DaysOfWonder-Memoir44');
}


# -- private subs

#
# my $data_home = _my_data_home();
#
# return the directory where all data private to the app will be stored.
# it's in the xdg data_home, then in a perl subdir, then in a subdir
# named after the perl dist.
#
# the directory will be created if needed.
#
sub _my_data_home {
    my $dir = dir( data_home( 'perl', 'WWW-DaysOfWonder-Memoir44' ) );
    $dir->mkpath;
    return $dir;
}


1;


=pod

=head1 NAME

WWW::DaysOfWonder::Memoir44::Utils - various subs and constants used in the dist

=head1 VERSION

version 1.100140

=head1 DESCRIPTION

This module exports various subs used in the dist. Nothing is exported
by default. Check the list of subs for exported stuff.

=head1 METHODS

=head2 my $dbpath = get_db_file();

Return the path where the scenarios database will be stored, which will
be by default in a subdir under xdg data_home (cf L<File::BaseDir>).

=head2 my $sharedir = get_dist_dir();

Return the path of the private directory where the distribution will
store shared stuff. It can be either found with L<File::ShareDir>, or in
the git checkout if development environment is detected.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

