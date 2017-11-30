using System;

class Problem3 {
    static void Main(String[] args) {
        int T = Convert.ToInt32(Console.ReadLine());
        for(int i = 0; i < T; i++){
            long N = Convert.ToInt64(Console.ReadLine());
            long LargestPrime = 2;
            
            // If N is multiple of 2, iterate process of division by 2 to factorize N
            while (N % 2 == 0){
                N /= 2;
            }
            
            // Any prime number other than 2 are odd
            for(long j = 3; (j * j) <= N; j = j + 2){
                // If N is multiple of j, iterate process of division by j to factorize N
                while (N % j == 0){
                    N /= j;
                }
                // Update largest prime factor
                LargestPrime = j;
            }
            
            // Update largest prime factor
            if (N > 1){
                LargestPrime = N;
            }
            
            Console.WriteLine(LargestPrime);
        }
    }
}
