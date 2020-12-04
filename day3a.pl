#!/usr/bin/perl

my $file = "day3.txt";

unless(open FILE, $file) {
    die "Unable to open $file\n";
}

my $numTrees = 0;
my $lineNumber = 0;
my $horizontalPosition = 0;

while(my $line = <FILE>) {    
    $lineNumber++;
    
    if ($lineNumber eq 1) {
        next;
    }
    
    chomp;
    $lineLength = length($line);

    $horizontalPosition += 3;
    if ($horizontalPosition >= ($lineLength - 1)) {
        $horizontalPosition -= ($lineLength - 1);
    }
    
    @lineChars = split(//, $line);
    if ($lineChars[$horizontalPosition] =~ "#") {
		    $numTrees++;
	  }
}

printf "numTrees=$numTrees\n";

close FILE;
