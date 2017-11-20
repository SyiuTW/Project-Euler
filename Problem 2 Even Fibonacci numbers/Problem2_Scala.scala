object Solution {
    def main(args: Array[String]) {
        val sc = new java.util.Scanner (System.in)
        var T = sc.nextInt()
        var i: Int = 0
        while(i < T){
            var N: Long = sc.nextLong()
            
            var temp: Long = 0
            var sum: Long = 0
            // Start with 1 and 2
            var F1: Long = 1
            var F2: Long = 2

            while(F2 < N){
                // Sum of even-valued terms
                if (F2 % 2 == 0)
                    sum += F2
                // Add previous two terms to generate new term
                temp = F1+F2
                F1 = F2
                F2 = temp
            }
            println(sum)
            i += 1
        }
    }
}
