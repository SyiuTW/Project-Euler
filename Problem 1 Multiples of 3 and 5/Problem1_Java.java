import java.util.*;

public class Problem1 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int T = in.nextInt();
        for(int i = 0; i < T; i++){
            int N = in.nextInt();
            // Number of multiples of 3
            long N_multi_3=(N-1)/3;
            // Sum of all multiples of 3
            long Sum_multi_3=3*(1+N_multi_3)*N_multi_3/2;

            // Number of multiples of 5
            long N_multi_5=(N-1)/5;
            // Sum of all multiples of 5
            long Sum_multi_5=5*(1+N_multi_5)*N_multi_5/2;

            // Number of multiples of 15
            long N_multi_15=(N-1)/15;
            // Sum of all multiples of 15
            long Sum_multi_15=15*(1+N_multi_15)*N_multi_15/2;

            // Print sum of all multiples of 3 or 5 below N
            System.out.println(Sum_multi_3+Sum_multi_5-Sum_multi_15);
        }
    }
}
