use strict;
use warnings;

use Test::More;

eval { 
	require Test::Kwalitee::Extra; 

	#prereq_matches_use fails for App::Prove for some reason
	Test::Kwalitee::Extra->import(qw(!prereq_matches_use)); 
};

if ($@) {
	plan( skip_all => 'Test::Kwalitee::Extra not installed');
}

unless ($ENV{RELEASE_TESTING}) {    
    plan(skip_all => 'tests for release testing, enable using RELEASE_TESTING');
}
