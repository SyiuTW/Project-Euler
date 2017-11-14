T = io.read("*number", "*l")
i = 0
while i < T do
    N = io.read("*number", "*l")
    
    sum = 0
    --Start with 1 and 2
    F1,F2 = 1,2

    while F2 < N do
        --Sum of even-valued terms
        if F2 % 2 == 0 then sum = sum + F2 end
        --Add previous two terms to generate new term
        F1,F2=F2,F1+F2
    end
    print(sum)
    i = i + 1
end
