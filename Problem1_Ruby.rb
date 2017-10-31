#!/bin/ruby

T = gets.strip.to_i
for i in (1..T)
    n = gets.strip.to_i
    
    # Number of multiples of 3
    n_multi_3 = (n-1)/3
    # Sum of all multiples of 3
    sum_multi_3 = 3*(1+n_multi_3)*n_multi_3/2

    # Number of multiples of 5
    n_multi_5 = (n-1)/5
    # Sum of all multiples of 5
    sum_multi_5 = 5*(1+n_multi_5)*n_multi_5/2

    # Number of multiples of 15
    n_multi_15 = (n-1)/15
    # Sum of all multiples of 15
    sum_multi_15 = 15*(1+n_multi_15)*n_multi_15/2

    # Print sum of all multiples of 3 or 5 below N
    puts sum_multi_3+sum_multi_5-sum_multi_15
end
