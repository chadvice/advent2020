#!/usr/bin/perl

my $file = "day4.txt";

unless(open FILE, $file) {
    die "Unable to open $file\n";
}

my $byr, $iyr, $eyr, $hgt, $hcl, $ecl, $pid, $cid;
my $validPassports = 0;

sub initializePassport {
    $byr = false;
    $iyr = false;
    $eyr = false;
    $hgt = false;
    $hcl = false;
    $ecl = false;
    $pid = false;
    $cid = false;
}

sub isPassportValid {
    if (($byr eq true) &&
        ($iyr eq true) &&
        ($eyr eq true) &&
        ($hgt eq true) &&
        ($hcl eq true) &&
        ($ecl eq true) &&
        ($pid eq true)) {
            
        $validPassports++;
    }
}

initializePassport();

while(<FILE>) {
    # If blank line, re-initialize for next passport
    if (/^$/) {
        # Check if previous passport is valid
        isPassportValid();
        
        initializePassport();
        next;
    }
    
    chomp;
    
    @pairs = split(/ /, $_);
    for $pair (@pairs) {
        ($key,$value) = split(/:/, $pair);
        
        if ($key eq "byr") { $byr = true; }
        if ($key eq "iyr") { $iyr = true; }
        if ($key eq "eyr") { $eyr = true; }
        if ($key eq "hgt") { $hgt = true; }
        if ($key eq "hcl") { $hcl = true; }
        if ($key eq "ecl") { $ecl = true; }
        if ($key eq "pid") { $pid = true; }
        if ($key eq "cid") { $cid = true; }
    }
}

# Make sure to also validate the last passport in the file
isPassportValid();

print "Number of valid passports: $validPassports\n";

close FILE;
