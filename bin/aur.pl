#!/usr/bin/perl
## script by Xyne
## http://bbs.archlinux.org/viewtopic.php?id=57291
use strict;
use warnings;
my $n = (`cower -u | wc -l`);
chomp ($n);
if ($n == 0)
{
     print "0 Pkgs"
}
elsif($n == 1)
{
     print "1 Pkg"
}
else
{
print "$n Pkgs " 
}
#print "$n"
