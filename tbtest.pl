#!/usr/bin/perl

use tbcore;

my $tb = new tbcore(101);

print "Local Test \n"; 
print "a - add\n";
print "s - subtract\n";
print "v - view\n";
print "x - exit\n";

my $x = 1; 

while ($x) {
	print "> ";
	my $option = <STDIN>;
	chomp $option; 
	if ($option =~ /x/) {
		$x = 0;
	} elsif($option =~ /a/) { 
		print "% add %\n";
	} elsif($option =~ /s/) { 
		print "% subtract %\n";
	} elsif($option =~ /v/) { 
		print "% view %\n";
	}
}


# $tb->stdout_export;
# print "-----\n";
# $tb->order_set_total(100);
# $tb->stdout_export;
# print "-----\n";
# $tb->order_tax(6.35);
# $tb->stdout_export;
# print "-----\n";
