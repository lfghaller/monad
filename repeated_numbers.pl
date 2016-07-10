#!/usr/bin/perl -w -q

use Data::Dumper;
use BTREE;
use strict;
print "creating a binary tree with 600 nodes...\n";
my $T = BTREE->new(600);
unless ($T){
    print "something's wrong...: $!\n";
}

print "dumping class reference...\n";
Dumper (%$T) or die $!;

print "creating random nodes inside the tree\n";
my $i = 0;
while($i < 20){
    $T->insert((int rand(1000)));
    $i++;
}
print "done.\nDumping data...";

Dumper (%$T);
