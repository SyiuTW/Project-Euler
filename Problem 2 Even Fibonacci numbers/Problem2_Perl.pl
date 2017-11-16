#!/usr/bin/perl
use strict;

chomp(my $T = <STDIN>);
foreach my $i (0..$T-1){
    chomp(my $N = <STDIN>);
    my $sum = 0;
    
    # Start with 1 and 2
    my ($F1, $F2) = (1, 2);

    while($F2 < $N){
        # Sum of even-valued terms
        if($F2 % 2 == 0){
            $sum += $F2;
        }
        # Add previous two terms to generate new term
        ($F1, $F2) = ($F2, $F1+$F2);
    }
    print $sum . "\n";
}
