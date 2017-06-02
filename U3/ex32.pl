#!/usr/bin/perl

sub innerProduct
{
	my ($v1_ref, $v2_ref) = @_;

	my @v1 = @$v1_ref;
	my @v2 = @$v2_ref;

	my $result = 0;
	my %values;
	@values{@v1} = @v2;
	
	foreach my $key (keys %values)
	{
		$result += ($values{$key}*$key);
	}

	return $result;
}

my @vec1 = (1,2,3);
my @vec2 = (3,2,1);

my @result = innerProduct(\@vec1,\@vec2);
print "@result\n";

# prints 10
