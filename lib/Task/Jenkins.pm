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

Installation of Jenkins is beyond the scope of this distribution. Task::Jenkins
installs a collection of modules I have identified as useful in utilizing
Jenkins for continuous integration of Perl distributions and code.

The recommended distributions are described in detail below.



=head2 Devel::Cover

See also L<Devel::Cover|https://metacpan.org/module/Devel::Cover>, or L<logicLAB Devel::Cover wiki page|http://logiclab.jira.com/wiki/display/OPEN/Devel-Cover>

=head2 TAP::Formatter::JUnit

Jenkins can visualize reports via it's own interface if these reports are based
on JUnit report format. TAP::Formatter can output test reports in this format
using TAP:Formatter::JUnit.

See also L<TAP::Formatter::JUnit|>, or L<logicLAB TAP::Formatter::JUnit wiki page|http://logiclab.jira.com/wiki/display/OPEN/TAP-Formatter-JUNit>

=head1 SEE ALSO

=over

=item * L<Jenkins|http://jenkins-ci.org/>

=item * L<logicLAB Jenkins Wiki page|http://logiclab.jira.com/wiki/display/OPEN/Jenkins>

=item * L<logicLAB Continuous Integration Wiki  page|http://logiclab.jira.com/wiki/display/OPEN/Continuous+Integration>

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
