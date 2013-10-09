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
	my $self = shift;
	print $self->{uid} . "\n";
	print $self->{sel} . "\n";
	print $self->{tot} . "\n";
	print $self->{tax} . "\n";
	print $self->{nam} . "\n";
	print $self->{tel} . "\n";
	print $self->{adr} . "\n";
	print $self->{apt} . "\n";
	print $self->{zip} . "\n";
	print $self->{ins} . "\n";
}

sub order_tax {
	my $self = shift;
	my $rate = ($_[0] / 100);
	$self->{tax} = $self->{tot} * $rate;
}

sub order_set_total {
	my $self = shift;
	$self->{tot} += $_[0]; 
}

sub item_add {
	# Add Items

}

sub item_sub { 
	# Remove Items 

}

sub item_mod { 
	# Item design - 
	# 1. Item		[ Scalar ]
	# 2. Modifiers	[ 32 bit number ]
	# 3. Options	[ 32 bit number ] 
	# 4. Quantity	[ Number ] 

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
}

sub test_output {
	# Local Test ; Output 
}

1;