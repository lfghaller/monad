#!/usr/bin/perl
use Data::Dumper;

use binarytree;

my $root = binarytree::Tree(0);

print Dumper(%$root);

my $node = binarytree::Tree(1);

print Dumper($#node);

my $info = "HOLA!";
$root->binarytree::ileft($root->{LEFT},$info);
