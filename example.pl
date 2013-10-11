#!/usr/bin/perl -w

use strict;
use warnings;

use lib './lib';

use Net::DNS::Match;
use Data::Dumper;
use Getopt::Std;

my %opts;
getopt('dq:',\%opts);

my $query = $opts{'q'} || 'img.yahoo.com';
my $debug = $opts{'d'};

my $match = Net::DNS::Match->new();
$match->add([
    'yahoo.com',
    'abc.yahoo.com',
    'google.com',
    'ca.undernet.org',
    'undernet.org',
    'test.ca.undernet.org',
    'www.facebook.com',
    'ztest2.ca.undernet.org',
    'aaaaol.com',
    'yahoo.com', 
    'a.yahoo.com',
    'zmg.yahoo.com',
    'rucl.ru',
    't.co',
    'co.uk',
]);
 
die ::Dumper($match->match($query));