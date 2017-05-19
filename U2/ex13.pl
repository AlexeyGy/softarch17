#!/usr/bin/perl

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


sub ex13a
{
	my (@list) = @_;
	my @out;

	foreach my $item (@list)
	{
		$item = allInOne($item);
		push @out, $item;
	}

	return @out;
}


sub ex13b
{
	my (@list) = @_;
	my @out;

	foreach my $item (@list)
	{
		$item = mult($item);
		$item = add($item);

		push @out, $item;
	}

	return @out;
}

my @list = (1,2,3,4,5,6,8,9,8,7,6,5,4,3,2,1);

my @result = ex13a(@list);
print "@result\n";

my @result = ex13b(@list);
print "@result\n";

#
# Prints:
# 3 5 7 9 11 13 17 19 17 15 13 11 9 7 5 3
# 3 5 7 9 11 13 17 19 17 15 13 11 9 7 5 3
#