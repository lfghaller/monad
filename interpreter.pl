#!usr/bin/perl

use Monad;
use Data::Dumper;
use binaryheap;


#Monad is very simple and has no great practical applications. However,
#she can be expanded into a more complex language. A monad is a philosophical
#concept idealized by Leibniz. He thought that matter was composed by tiny
#spiritual particles called monads. Monads combined to form matter.

#Grammar for Monad
# expr := op monad  monad | .
# expr := op expr monad
# monad := 0 | 1
# op := : | &

# Perl is a powerful language for parsing. It is very simple to build
# a parser using regular expressions.
#
my @STACK = ();
my $prog1 = q(&11:0);
my $prog2 = q(1:1:0);

my $s = Monad::new();
$s->Monad::parser($prog2);
$s->Monad::parser($prog1);

my $heap = binaryheap::new(7);

print Data::Dump->new($heap);

print "\nMachine HALTED.\n";
