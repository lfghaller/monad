package binarytree;
use Data::Dumper;


sub Tree{
 my $class = shift;
 my $self = bless{
        KEY => shift,
        LEFT => {},
        RIGHT => {},
        SIZE => 0,
      };

      bless ($self, $class);

      return $self;
 }

sub ileft{
   my ($self,$node,$key) = @_;

   if ($node == undef){
      print "void insertion\n";
      if ($self->{SIZE} > 0){
        return -1;
      }
      $position = $self;
   }
   elsif( $node->{LEFT}){

      return -1;
   }

     $position =  $node->{LEFT};
     my $branch = binarytree::Tree($key);
      $position = $branch;
      $self->{SIZE}++;
      return $self;
}

sub iright{
    ($self,$node,$key) = @_;

  if (!$node){
     print "void insertion\n";
     if ($self->$size > 0){
       return -1;
     }
     $position = $self;
  }
  elsif( $node->{RIGHT}){

     return -1;
  }

    $position =  $node->{RIGHT};
    my $branch = binarytree::Tree($key);
     $#position = $branch;
     $self->$size++;
     return $self;
  }

1;
