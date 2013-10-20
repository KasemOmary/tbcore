#!/usr/bin/perl

package tbcore;

sub new { 
	my $my_name = shift;
	my $p_uid = $_[0];
	my $p_sel = "default";
	my $p_tot = "0.00";
	my $p_tax = "0.00";
	my $p_nam = "default";
	my $p_tel = "default";
	my $p_adr = "default";
	my $p_apt = "default";
	my $p_zip = "default";
	my $p_ins = "default";

	return bless {
		uid => $p_uid,
		sel => $p_sel,
		tot => $p_tot,
		tax => $p_tax,
		nam => $p_nam,
		tel => $p_tel,
		adr => $p_adr,
		apt => $p_apt,
		zip => $p_zip,
		ins => $p_ins
	}, $my_name;
	# uid - userid 
	# sel - selections
	# tot - order total 
	# tax - sales tax
	# nam - customer name 
	# tel - telephone
	# adr - address
	# apt - apartment/suite/unit
	# zip - zipcode
	# ins - instructions
}

sub stdout_export { 
	# <STDOUT> Dump ; Testing. 
	
	my $self = shift;
	print "uid: " . $self->{uid} . "\n";
	print "sel: " . $self->{sel} . "\n";
	print "tot: " . $self->{tot} . "\n";
	print "tax: " . $self->{tax} . "\n";
	print "nam: " . $self->{nam} . "\n";
	print "tel: " . $self->{tel} . "\n";
	print "adr: " . $self->{adr} . "\n";
	print "apt: " . $self->{apt} . "\n";
	print "zip: " . $self->{zip} . "\n";
	print "ins: " . $self->{ins} . "\n";
}

sub order_tax {
	# I dunno.  Calculate the tax - This is bad. 
	# 

	my $self = shift;
	my $rate = ($_[0] / 100);
	$self->{tax} = $self->{tot} * $rate;
}

sub order_set_total {
	# This is a bad idea.
	# Should not be allowed unless done via _add / _sub.

	my $self = shift;
	$self->{tot} += $_[0]; 
}
		# Item design - 
		# 1. Item		[ Scalar ]
		# 2. Modifiers	[ 32 bit number ]
		# 3. Options	[ 32 bit number ] 
		# 4. Quantity	[ Number ] 

		# Hold this thought:   Here's how we're going to do the options.
		# Each item will have 2 32 bit numbers.   These will be as follows: 
		# Modifiers - Cold, hot, half-half, etc - anything under the sun. 
		# Options - These will be optional components for each product.  
		# Say we have a pizza - mushrooms, onions, meatball, sausage, etc - that kind of stuff.

		# Here's how it's going to be handled : 
		# LOAD
		# $mods = unpack("8B",$mod); @mods = split("",$mods);
		# SAVE 
		# $mods = join("",@mods); $mods = pack("8B",$mods);
		# Clean and simple - we go from a 64 variable array to FFFFFFFF - and we're good for transport.

sub item_add {
	# Add Items
	# name => ; quantity => ; mods => ; options => 
	# Todo : 
	# Get price. 
	# Increment Total. 
	# Record Changes. 

}

sub item_sub { 
	# Remove Items 

}

sub item_mod { 
	# Modify existing items in the order. 

}

sub com_order { 
	# Communicate Order 

}

sub com_finalize {
	# Charge , Verify , Communicate 

}

sub test_view {
	# Local Test ; View 

}

sub test_record { 
	# Local Test ; Record 
	# Create a faux cookie in the filesystem.
}

sub test_output {
	# Local Test ; Output 
}

1;