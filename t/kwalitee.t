#Courtesy of chromatic
#http://search.cpan.org/~chromatic/Test-Kwalitee/lib/Test/Kwalitee.pm
#
#https://logiclab.jira.com/wiki/display/OPEN/Test-Kwalitee

# $Id$
 
use strict;
use warnings;
use Test::More;
 
eval {
    require Test::Kwalitee;
};
 
if ($@) {
    plan skip_all => 'Test::Kwalitee not installed; skipping';
} else {
    Test::Kwalitee->import();
}