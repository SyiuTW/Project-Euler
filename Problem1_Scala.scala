object Solution {
    def main(args: Array[String]) {
        val sc = new java.util.Scanner(System.in)
        var T = sc.nextInt()
        var i: Int = 0
        while(i < T){
            var N: Long = sc.nextInt()
            
            // Number of multiples of 3
            var N_multi_3 = (N-1)/3
            // Sum of all multiples of 3
            var Sum_multi_3 = 3*(1+N_multi_3)*N_multi_3/2

            // Number of multiples of 5
            var N_multi_5 = (N-1)/5
            // Sum of all multiples of 5
            var Sum_multi_5 = 5*(1+N_multi_5)*N_multi_5/2

            // Number of multiples of 15
            var N_multi_15 = (N-1)/15
            // Sum of all multiples of 15
            var Sum_multi_15 = 15*(1+N_multi_15)*N_multi_15/2

            // Print sum of all multiples of 3 or 5 below N
            println(Sum_multi_3+Sum_multi_5-Sum_multi_15)
            
            i += 1
        }
    }
}
