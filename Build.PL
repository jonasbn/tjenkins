# $Id$

use strict;
use Module::Build;

my $build = Module::Build->new(
    dist_author => 'Jonas B. Nielsen (JONASBN)',
    dist_abstract =>
        'Collection of distributions for continuous integration using Jenkins',
    module_name          => 'Task::Jenkins',
    license              => 'artistic',
    recursive_test_files => 1,
    create_readme        => 1,
    create_makefile_pl   => 'traditional',
    build_requires       => { 'Module::Build' => '0', },
    requires             => {
        'TAP::Formatter::JUnit' => '0',
        'Devel::Cover'          => '0',
        'App::Prove'            => '0',
    },
);

$build->create_build_script();
