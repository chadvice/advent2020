#!/usr/bin/perl

my $file = 'day2.txt';

open(FH, '<', $file) or die $!;

while(<FH>) {
	my $posAmatch = false;
	my $posBmatch = false;

	chomp;

	my ($posA,$posB,$char,$password) = split /[-,\s,:]+/, $_;
	$posA--;
	$posB--;

	@passChars = split(//, $password);
	if ($passChars[$posA] =~ "$char") {
		$posAmatch = true;
	}

	if ($passChars[$posB] =~ "$char") {
		$posBmatch = true;
	}

	if (($posAmatch eq true && $posBmatch eq false) ||
	   ($posAmatch eq false && $posBmatch eq true)) {
		$total++;
	}
}

print "Total=$total\n";

close(FH);
