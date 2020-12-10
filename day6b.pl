#!/usr/bin/perl

my $file = 'day6.txt';
$firstLine = 1;

open(FH, '<', $file) or die $!;

while(<FH>) {
	if (/^$/) {
		printf "Group's combined answers: %d\n", (scalar keys %history);
		$grandTotal += scalar keys %history;
		undef(%current);
		undef(%history);
		$firstLine = 1;
		next;
	}

	chomp;
	@chars = split(//, $_);

	if ($firstLine) {
		$firstLine = 0;

		# populate it
		for $char (@chars) {
			$history{"$char"} = true;
		}
	} else {
		for $char (@chars) {
			$current{"$char"} = true;
		}

		# check it
		for $letter ('a' .. 'z') {
			if (($history{"$letter"}) && ($current{"$letter"})) {
			} else {
				# remove hash key
				delete $current{"$letter"};
				delete $history{"$letter"};
			}
		}
	}

	undef(%current);
}

#Also include last group
printf "Group's unique answers: %d\n", (scalar keys %history);
$grandTotal += scalar keys %history;
printf "Grand total = %d\n", $grandTotal;
undef(%history);

close(FH);
