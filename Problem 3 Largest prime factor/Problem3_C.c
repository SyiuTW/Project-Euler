#include <stdio.h>

int main(){
    int T; 
    scanf("%d", &T);
    
    for(int i = 0; i < T; i++){
        long N; 
        scanf("%ld", &N);
        
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

        printf("%ld\n", LargestPrime);
    }
    return 0;
}
