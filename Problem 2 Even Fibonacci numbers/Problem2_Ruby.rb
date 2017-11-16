#!/bin/ruby

T = gets.strip.to_i
for i in (0..T-1)
    n = gets.strip.to_i
    
    sum = 0
    # Start with 1 and 2
    f1, f2 = 1, 2

    while f2 < n
        # Sum of even-valued terms
        if f2 % 2 == 0
            sum += f2
        end
        # Add previous two terms to generate new term
        f1, f2 = f2, f1+f2
    end
    puts sum
end
