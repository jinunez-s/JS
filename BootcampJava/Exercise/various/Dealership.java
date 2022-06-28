package java.Exercise.various;

import java.util.Scanner;

public class Dealership {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("Welcome to the Java Dealership.");

        System.out.println(". Select option 'a' to buy a car.");
        System.out.println("Select option 'b' to sell a car.");

        String option = scan.nextLine();
        switch(option){
            case "a": System.out.println("What car would you like to buy?");
                        System.out.println("What is your budget"); 
                        double budget = scan.nextDouble();
                        if(budget >= 300000){
                            System.out.println("Great!! a McLaren is available for $250000.00");
                        }else if(budget >= 150000 && budget <= 250000){
                            System.out.println("Great!! a Audi is available for $200000.00");
                        }else if(budget < 150000){
                            System.out.println("Great!! a Lexus is available for $100000.00");
                        }
                        scan.nextLine();
                        System.out.println("Do you have insurance? 'yes' or 'no'");
                        String insurance = scan.nextLine();
                        System.out.println("Do you have license? 'yes' or 'no'");
                        String license = scan.nextLine();
                        if(insurance.equals("yes") && license.equals("yes")){
                            System.out.println("Sold! Pleasure doing business with you!");
                        }else{
                            System.out.println("We're sorry. You are not eligeble");
                        }
                        break;
            case "b": System.out.println("What car would you like to sell?");
                        System.out.println("What is your car valued at?");
                        int value = scan.nextInt();
                        System.out.println("What is your selling price");
                        int price = scan.nextInt();
                        scan.nextLine();
                        if( value > price && price < 30000){
                            System.out.println("We will buy your car. Pleasure doing business with your");
                        }else{
                            System.out.println("Sorry, we're not interested!!!!!!!!!!!!!!!!");
                        }
            break;
            default: System.out.println("Invalid Option"); break;
        }
        scan.close();
    }
}
