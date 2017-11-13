package main
import "fmt"

func main() {
    var T int
    fmt.Scanln(&T)

    for i := 0; i < T; i++ {
        var N int64
        fmt.Scanln(&N)

        var temp int64
        var sum int64 = 0
        // Start with 1 and 2
        var F1 int64 = 1
        var F2 int64 = 2
        
        for F2 < N {
            // Sum of even-valued terms
            if F2 % 2 == 0{
                sum += F2
            }
            // Add previous two terms to generate new term
            temp = F1+F2
            F1 = F2
            F2 = temp
        }
        fmt.Println(sum)
    }
}
