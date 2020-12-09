#!/usr/bin/perl

my $file = 'day6.txt';

open(FH, '<', $file) or die $!;

while(<FH>) {
	chomp;
	@chars = split(//, $_);
	for $char (@chars) {
		$answers{"$char"} = true;
	}

	if (/^$/) {
		printf "Group's unique answers: %d\n", (scalar keys %answers);
		$grandTotal += scalar keys %answers;
		undef(%answers);
		next;
	}
}

#Also include last group
printf "Group's unique answers: %d\n", (scalar keys %answers);
$grandTotal += scalar keys %answers;

printf "Grand total = %d\n", $grandTotal;
undef(%answers);

close(FH);
