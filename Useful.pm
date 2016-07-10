package Useful;

sub new {
	my $class = 'Useful';
    my $self = {
        _IN => shift,
        _OUT  => shift,
        _BLOCKSIZE  => shift,
        _SEQ => (),
    };
    print $self->{_IN};
    print $self->{_OUT};
    print $self->{_BLOCKSIZE};

    bless $self, $class;
    return $self;
}

sub text_to_bin{
 my ($self) = @_;

open READ, $self->{_IN}  or die "$!";
my $input = <READ>;
close READ;

# Convert file into binary code
my $bit = unpack 'B*',$input;


# Display how much file were converted
print "\nRead ", length($bit)/8000000, ' Mbytes';

# Save the binary code into txt file
open WRITE, ">$self->{_OUT}" or die $!;
print WRITE "$bit";
close WRITE;
  $self->{_SEQ} = $bit;
  return $self;
}



sub to_block{
    my ($self) = @_;

open READ, $self->{_IN} or die "Cant open";
my $input = <READ>;
close READ;

my @bitstring = split(//,$input);
my $i = 0;
my $offset = 0;
my $bit;

open(WRITE, ">$self->{_OUT}") or die "\nCan't create txt file";

do {
   $bit = $bitstring[$offset];
   if ($i < $self->{_BLOCKSIZE}){
      print WRITE $bit;
   }
   else{
      print WRITE " ";
      $i = 0;
   }
   $i++;
}while ($bitstring[$offset++]);

# Save the binary code into txt file

close WRITE;
return $self;
}


1;
