using System;

class Problem3 {
    static void Main(String[] args) {
        int T = Convert.ToInt32(Console.ReadLine());
        for(int i = 0; i < T; i++){
            long N = Convert.ToInt64(Console.ReadLine());
            long LargestPrime = 2;
            
            while (N % 2 == 0){
                N /= 2;
            }
            
            for(long j = 3; (j * j) <= N; j = j + 2){
                while (N % j == 0){
                    N /= j;
                }
                LargestPrime = j;
            }
            
            if (N > 1){
                LargestPrime = N;
            }
            
            Console.WriteLine(LargestPrime);
        }
    }
}
