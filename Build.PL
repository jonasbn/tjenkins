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
    meta_merge => {
        resources => {
            homepage => 'http://logiclab.jira.com/wiki/display/TJENKINS/Home',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Task-Jenkins',
            repository => 'http://logicLAB.jira.com/svn/TJENKINS',
            ProjectChangelog =>
                'http://logiclab.jira.com/browse/TJENKINS#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel',
            ProjectSite => 'http://logicLAB.jira.com/browse/TJENKINS',
            ProjectWiki => 'http://logiclab.jira.com/wiki/display/TJENKINS/Home',
        }
    },
);

$build->create_build_script();
