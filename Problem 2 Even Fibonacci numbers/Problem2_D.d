import std.stdio;

void main() {
    int T;
    readf(" %d", &T);

    for(int i = 0; i < T; i++){
        long N; 
        readf(" %d", &N);

        long temp;
        long sum = 0;
        // Start with 1 and 2
        long F1 = 1;
        long F2 = 2;
        
        while(F2 < N){
            // Sum of even-valued terms
            if (F2 % 2 == 0)
                sum += F2;
            // Add previous two terms to generate new term
            temp = F1+F2;
            F1 = F2;
            F2 = temp;
        }
        writeln(sum);
    }
}
