package BinTree;

use Data::Dumper;

sub new {
 my $class = shift;
 my $self = {
        DATA => undef,
        LEFT => undef,
        RIGHT =>  undef,
        KEY => shift,
    };
    #print Dumper(%{$self});
     bless ($self, $class);

    return $self;
 };


sub fetch {
    my ($self,$match) = @_;
    return unless $self;
    if ($self->{DATA} == $match){
        return $self;
    }
    fetch($self->{($match < $self->{DATA}) ? "LEFT" : "RIGHT"}, $match);
}

 sub insert {
    my ($self,$data) = @_;

   unless ($self){
       $self = {};
       $self->{DATA} = $data;
       $self->{LEFT} = undef;
       $self->{RIGHT} = undef;
       $_[0] = $self;
       return $self;
   }
   if ($self->{DATA} > $data){
       #print  "left insertion\n";
       insert($self->{LEFT}, $data);
   }elsif($self->{KEY} < $data ){
       #print  "right insertion\n";
       insert($self->{RIGHT},$data);
    }
    else{
        warn "dup insert of $data\n";
    }
    return $self;
 }

 sub in_order {
     my ($self) = @_;
     return unless $self;

    in_order($self->{LEFT});
     print " ", Dumper($self->{DATA});
    in_order($self->{RIGHT});
 }


q^
sub compare{
my ($self,$key2) = @_;
    if ($self->{KEY} < $key2){
        return -1;
    }elsif($self->{KEY} > $key2){

    }
    else{
        return 0;
    }
}



^;

1;
