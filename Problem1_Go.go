package main
import "fmt"

func main() {
    var T int
    fmt.Scanln(&T)
    for i := 0; i < T; i++ {
        var N int64
        fmt.Scanln(&N)
        
        // Number of multiples of 3
        var N_multi_3 int64 = (N-1)/3
        // Sum of all multiples of 3
        var Sum_multi_3 int64 = 3*(1+N_multi_3)*N_multi_3/2
        
        // Number of multiples of 5
        var N_multi_5 int64 = (N-1)/5
        // Sum of all multiples of 5
        var Sum_multi_5 int64 = 5*(1+N_multi_5)*N_multi_5/2

        // Number of multiples of 15
        var N_multi_15 int64 = (N-1)/15
        // Sum of all multiples of 15
        var Sum_multi_15 int64 = 15*(1+N_multi_15)*N_multi_15/2

        // Print sum of all multiples of 3 or 5 below N
        fmt.Println(Sum_multi_3+Sum_multi_5-Sum_multi_15)
    }
}
