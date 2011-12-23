package Task::Jenkins;

# $Id$

our $VERSION = '0.01';

1;

__END__

=pod

=head1 NAME

Task::Jenkins - collection of distributions for continuous integration using Jenkins

=head1 VERSION

This documentation describes version 0.01

=head1 SYNOPSIS

    % perl Build.PL
    
    % ./Build
    
    % ./Build install

=head1 DESCRIPTION

Installation of B<Jenkins> is beyond the scope of this distribution. Task::Jenkins
installs a collection of modules I have identified as useful in utilizing
B<Jenkins> for I<continuous integration> of Perl distributions, applications and code.

The recommended distributions are described in detail below.

The key concept in the use of B<Jenkins> for Perl is enabling the existing tool
chain with minor adjustments.

The basic requirements are that you are using some sort of build system, I use
Module::Build, but other systems should work equally well, basically you just
need some way to initiate an execution of you test suite from a command line.

The test suite is then expected to output to the console so the output from
the test run can be inspected and the return value of the test run can be used
to indicate whether the test run was a success or failure.

Using basic tool chain components like Test::Harness works out of the box.

For a tutorial on how to get started please see: L<logicLAB Continuous Integration wiki page|http://logiclab.jira.com/wiki/display/OPEN/Continuous+Integration>.

In order to extend this very basic behaviour you can use some additional CPAN
distributions described below.

=head2 Devel::Cover

Devel::Cover can be used to generate HTML coverage reports. Jenkins can visualise
additional HTML pages generated as part of a test run, Jenkins just have to be
told where these are located.

See also L<Devel::Cover|https://metacpan.org/module/Devel::Cover>, or L<logicLAB
Devel::Cover wiki page|http://logiclab.jira.com/wiki/display/OPEN/Devel-Cover>

=head2 TAP::Formatter::JUnit

Jenkins can visualize reports via it's own interface if these reports are based
on JUnit report format. TAP::Formatter can output test reports in this format
using TAP:Formatter::JUnit, so if you are using Test::Harness you can get
beautiful reports using this distribution in your Jenkins setup.

See also L<TAP::Formatter::JUnit|https://metacpan.org/module/TAP::Formatter::JUnit>,
or L<logicLAB TAP::Formatter::JUnit wiki page
|http://logiclab.jira.com/wiki/display/OPEN/TAP-Formatter-JUNit>

=head1 SEE ALSO

=over

=item * L<Jenkins|http://jenkins-ci.org/>

=item * L<logicLAB Jenkins wiki page|
http://logiclab.jira.com/wiki/display/OPEN/Jenkins>

=item * L<logicLAB Continuous Integration wiki page|
http://logiclab.jira.com/wiki/display/OPEN/Continuous+Integration>

=item * L<Module::Build|https://metacpan.org/module/Module::Build>

=item * L<logicLAB Module::Build wiki page|
http://logiclab.jira.com/wiki/display/OPEN/Module-Build>

=item * L<Test::Harness|https://metacpan.org/module/Test::Harness>

=back

=head1 AUTHOR

=over

=item * Jonas B. Nielsen (jonasbn), C<< <jonasbn@cpan.org> >>

=back 

=head1 COPYRIGHT

Task::Jenkins is (C) by Jonas B. Nielsen, (jonasbn) 2011

=head1 LICENSE

Task::Jenkins is released under the artistic license

The distribution is licensed under the Artistic License, as specified by the Artistic file in the standard perl distribution (http://www.perl.com/language/misc/Artistic.html).

=cut
