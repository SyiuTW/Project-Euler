let T = Int(readLine(strippingNewline: true)!)!
for index in 1...T {
    let N = Int(readLine(strippingNewline: true)!)!
    
    // Number of multiples of 3
    let N_multi_Three = (N-1)/3
    // Sum of all multiples of 3
    let Sum_multi_Three = 3*(1+N_multi_Three)*N_multi_Three/2

    // Number of multiples of 5
    let N_multi_Five = (N-1)/5
    // Sum of all multiples of 5
    let Sum_multi_Five = 5*(1+N_multi_Five)*N_multi_Five/2

    // Number of multiples of 15
    let N_multi_Fifteen = (N-1)/15
    // Sum of all multiples of 15
    let Sum_multi_Fifteen = 15*(1+N_multi_Fifteen)*N_multi_Fifteen/2

    // Print sum of all multiples of 3 or 5 below N
    print(Sum_multi_Three+Sum_multi_Five-Sum_multi_Fifteen)
}
