package java.Exercise.various;

import java.util.Arrays;

public class Taxes {
    public static void main(String[] args) {
        double [] prices = {1.99, 2.99, 3.99, 4.99};
        double [] afterTax = new double[4];
        for (int i = 0; i < afterTax.length; i++) {
            afterTax[i] = prices[i] * 1.13;
        }
        System.out.println("The original prices are: " + Arrays.toString(prices));
        System.out.println("The prices after tax prices are: " + Arrays.toString(afterTax));

    }
}
