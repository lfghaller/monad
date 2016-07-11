#!/usr/bin/perl

use Data::Dumper;
use BinTree;

print "creating a binary tree reference...\n";
my $tree = new BinTree();

print "creating random nodes inside the tree\n";

my $i = 0;
while($i++ < 20){
    $node = {};
    $tree->insert(\$tree, int(rand(1000)));
}

print "dumping class reference...\n";
$Data::Dumper::Maxdepth = 7;
print Dumper(%{$tree});

#$tree->in_order();
