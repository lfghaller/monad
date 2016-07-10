package BINARYHEAP;
use Data::Dumper;

sub new {
 my $class = shift;
 my $self = bless {
   SIZE => shift,
 };

  bless ($self, $class);

  return $self;
}

sub compare {
    my ($self,$key1, $key2) = @_;
    if($key1 < $key2){
      return 1;
    }elsif($key1 > $key2) {
      return -1
    }else{
      return 0;
    }
    return $self;
}


#static int HEAPparent(int npos);
#static int HEAPleft(int npos);
#static int HEAPright(int npos);


sub HEAPstart {
  my ($self,$size) = @_;
  my $HEAP = BINARY_HEAP::new($size) ;
  $HEAP->{0} = {};
  print Data::Dumper($HEAP);
  return $HEAP;
}


1;
