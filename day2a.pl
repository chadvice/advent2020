#!/usr/bin/perl

my $file = 'day2.txt';

open(FH, '<', $file) or die $!;

while(<FH>) {
	chomp;

	my ($min,$max,$char,$password) = split /[-,\s,:]+/, $_;
	my $numMatches = () = $password =~ /$char/g;

	if ($numMatches >= $min && $numMatches <= $max) {
		$total++;
	}
}

print "Total=$total\n";

close(FH);
