package BTREE;

use Data::Dumper;


sub new {
 my $class = shift;

 my $self = {
        KEY => \1,
        LEFT => {@_},
        RIGHT => {@_},
        SIZE => shift,
        TREE  => $_[0],
      };

      bless ($self, $class);
      print Dumper(%$self);
      return $self;
 };


 sub in_order {
 my($self) = @_;
 return unless $self;
 in_order($self->{LEFT});
 print $self->{KEY}, " ";
 in_order($self->{RIGHT});
 }

sub insert{
   my ($self,$key) = @_;
   my $node = BTREE->new($key);
      $node->{LEFT} = {};
      $node->{RIGHT} = {};
  if ($self->{TREE} == undef){return -1;}

  if ($self->{KEY} > $key){
      print  "left insertion\n";

      $self->{LEFT} = @$node;

  }elsif($self->{KEY} < $key){
      print  "right insertion\n";
      $self->{RIGHT} = @$node;
  }else{
     $self->{TREE} = @$node;
  }

 }

1;
