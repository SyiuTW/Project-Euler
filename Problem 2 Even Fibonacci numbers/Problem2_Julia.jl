T = parse(Int32, readline(STDIN))
for i = 1:T
    N = parse(Int64, readline(STDIN))
    
    sum = 0
    # Start with 1 and 2
    F1, F2 = (1, 2)

    while F2 < N
        # Sum of even-valued terms
        if F2 % 2 == 0
            sum += F2
        end
        # Add previous two terms to generate new term
        F1, F2 = (F2, F1+F2)
    end
    println(sum)
end
