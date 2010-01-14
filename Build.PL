
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'download & manage memoir44 scenarios from official website',
                       'script_files' => [
                                           'bin/mem44'
                                         ],
                       'license' => 'perl',
                       'dist_name' => 'WWW-DaysOfWonder-Memoir44',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'share_dir' => 'share',
                       'module_name' => 'WWW::DaysOfWonder::Memoir44',
                       'requires' => {
                                       'MooseX::Has::Sugar' => 0,
                                       'FindBin' => 0,
                                       'Sub::Exporter' => 0,
                                       'Moose::Util::TypeConstraints' => 0,
                                       'HTML::TreeBuilder' => 0,
                                       'File::BaseDir' => 0,
                                       'Text::Trim' => 0,
                                       'ORLite::Migrate::Patch' => 0,
                                       'ORLite::Migrate' => 0,
                                       'Term::Twiddle::Quiet' => 0,
                                       'File::ShareDir' => 0,
                                       'App::Cmd::Setup' => 0,
                                       'File::Find' => 0,
                                       'File::Spec::Functions' => 0,
                                       'Moose' => 0,
                                       'URI' => 0,
                                       'English' => 0,
                                       'Term::ProgressBar::Quiet' => 0,
                                       'ORLite' => 0,
                                       'overload' => 0,
                                       'perl' => '5.010',
                                       'Test::More' => 0,
                                       'LWP::UserAgent' => 0,
                                       'Path::Class' => 0
                                     }
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
