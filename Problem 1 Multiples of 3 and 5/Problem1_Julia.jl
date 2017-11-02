T = parse(Int32, readline(STDIN))
for i = 1:T
    N = parse(Int64, readline(STDIN))
    # Number of multiples of 3
    N_multi_3 = div(N-1, 3)
    # Sum of all multiples of 3
    Sum_multi_3 = div(3*(1+N_multi_3)*N_multi_3, 2)

    # Number of multiples of 5
    N_multi_5 = div(N-1, 5)
    # Sum of all multiples of 5
    Sum_multi_5 = div(5*(1+N_multi_5)*N_multi_5, 2)

    # Number of multiples of 15
    N_multi_15 = div(N-1, 15)
    # Sum of all multiples of 15
    Sum_multi_15 = div(15*(1+N_multi_15)*N_multi_15, 2)

    # Print sum of all multiples of 3 or 5 below N
    println(Sum_multi_3 + Sum_multi_5 - Sum_multi_15)
end
