package java.Exercise.various;

import java.util.Scanner;

public class PizzaDelivery {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("How many pizza toppings do you want?");
        int NumberToppings = scan.nextInt();
        scan.nextLine();
        String[] pizzaToppings = new String[NumberToppings];
        System.out.println("Great, enter each topping!");
        for (int i = 0; i < pizzaToppings.length; i++) {
            System.out.print(i+1 + ". ");
            String topping = scan.nextLine();
            pizzaToppings[i] = topping;
        }
        System.out.println("Great, this are your toppings! ");
        for (int i = 0; i < pizzaToppings.length; i++) {
            System.out.println((i+1) + ". " + pizzaToppings[i]);
        }
        scan.close();
        
    }
}
