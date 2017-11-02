#!/usr/bin/perl
use strict;

chomp(my $T = <STDIN>);
foreach my $i (0..$T-1){
    chomp(my $N = <STDIN>);
    
    # Number of multiples of 3
    my $N_multi_3 = int(($N-1)/3);
    # Sum of all multiples of 3
    my $Sum_multi_3 = 3*(1+$N_multi_3)*$N_multi_3/2;

    # Number of multiples of 5
    my $N_multi_5 = int(($N-1)/5);
    # Sum of all multiples of 5
    my $Sum_multi_5 = 5*(1+$N_multi_5)*$N_multi_5/2;

    # Number of multiples of 15
    my $N_multi_15 = int(($N-1)/15);
    # Sum of all multiples of 15
    my $Sum_multi_15 = 15*(1+$N_multi_15)*$N_multi_15/2;

    # Print sum of all multiples of 3 or 5 below N
    print $Sum_multi_3+$Sum_multi_5-$Sum_multi_15 . "\n";
}
