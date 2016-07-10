package Monad;

sub new {
    my $class = shift;

    bless $self = {@_};
		return bless $self, $class;

}

sub parser{
	 my $self = shift;

	 my $line = shift;

     if ($line =~ m/([&!])|(([\d+|:])+)/ ){
       print $line;
     }


   return $line;
}


1;
