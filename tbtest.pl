#!/usr/bin/perl

use tbcore;

my $tb = new tbcore(101);

$tb->stdout_export;
print "-----\n";
$tb->order_set_total(100);
$tb->stdout_export;
print "-----\n";
$tb->order_tax(6.35);
$tb->stdout_export;
print "-----\n";
