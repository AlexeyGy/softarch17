package ex13b;

use Exporter qw(import);

our @EXPORT_OK = qw(allInOne mult add);
 
sub allInOne
{
	my ($value) = @_;
	return 2*$value+1;
}

sub mult
{
	my ($value) = @_;
	return 2*$value;
}

sub add
{
	my ($value) = @_;
	return $value+1;
}

 
1;