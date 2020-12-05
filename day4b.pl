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
        
        if ($key eq "byr") {
            if ($value =~ /\d\d\d\d/ && $value >= 1920 && $value <= 2002) {
                $byr = true;
            }
        }
        
        if ($key eq "iyr") { 
            if ($value =~ /\d\d\d\d/ && $value >= 2010 && $value <= 2020) {
                $iyr = true;
            }
        }
        
        if ($key eq "eyr") { 
            if ($value =~ /\d\d\d\d/ && $value >= 2020 && $value <= 2030) {
                $eyr = true;
            }
        }
        
        if ($key eq "hgt") { 
            if ($value =~ /(\d+)cm/) {
                if ($1 >= 150 && $1 <= 193) {
                    $hgt = true;
                }
            }
            
            if ($value =~ /(\d+)in/) {
                if ($1 >= 59 && $1 <= 76) {
                    $hgt = true; 
                }
            }
        }
        
        if ($key eq "hcl") { 
            if ($value =~ /#[0-9a-f]{6}/) {
                $hcl = true;
            }
        }
        
        if ($key eq "ecl") {
            if ($value =~ /amb|blu|brn|gry|grn|hzl|oth/) {
                $ecl = true; 
            }
        }
        
        if ($key eq "pid") { 
            if ($value =~ /[0-9]{9}/) {
                $pid = true;
            }
        }
        
        if ($key eq "cid") { 
            $cid = true; 
        }
    }
}

# Make sure to also validate the last passport in the file
isPassportValid();

print "Number of valid passports: $validPassports\n";

close FILE;
