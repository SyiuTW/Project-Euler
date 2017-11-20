let T = Int(readLine(strippingNewline: true)!)!
for _ in 1...T {
    let N = Int(readLine(strippingNewline: true)!)!
    
    var temp = 0
    var sum = 0
    // Start with 1 and 2
    var F1 = 1
    var F2 = 2

    while F2 < N {
        // Sum of even-valued terms
        if F2 % 2 == 0 {
            sum += F2
        }
        // Add previous two terms to generate new term
        temp = F1+F2
        F1 = F2
        F2 = temp
    }
    print(sum)
}
