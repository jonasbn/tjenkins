use strict;
use warnings;

use Test::More;
use Env qw($RELEASE_TESTING);

eval { require Test::Kwalitee; };

if ($@) {
	plan( skip_all => 'Test::Kwalitee not installed');
} elsif ($RELEASE_TESTING) {
	Test::Kwalitee->import();
} else {
	plan(skip_all => 'tests for release testing, enable using RELEASE_TESTING');
}
