package java.Exercise.WorkbookTwoFive;

import java.util.Scanner;

public class Signup {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("Welcome to JavaGram! Let's sign you up.");
        

        //Task 1 - Using Scanner, ask the user questions

        //Ask for their first name.
        System.out.println("Give me your first name");
        String fname = scan.nextLine();
        //Ask for their last name.
        System.out.println("Give me your last name");
        String lname = scan.nextLine();
        //Ask: how old are you?
        System.out.println("Give me your age");
        int age = scan.nextInt();
        scan.nextLine();
        /* Ask them to make a username. SIDE NOTE:
        //    – nextLine() gets "skipped" if you put it ahead of nextInt() , nextDouble(), nextLong().
        //    – You will understand why this happens when we cover Delimiters in the next section (Booleans and Conditionals).
        //    – For now, just know that the solution is to add an extra nextLine().
        */
        System.out.println("Set a username");
        String username = scan.nextLine();
        //Ask what city they live in.
        System.out.println("Enter the city where you live in");
        String city = scan.nextLine();
        //Ask what country that's from.


        //Task 2 - Print their information. 
        System.out.println("Your data is "+"\n" +
                            "first name: " + fname + "\n" +
                            "last name: " + lname + "\n" +
                            "age: " + age + "\n" +
                            "username: " + username);

        System.out.println("Thank you for joining JavaGram!");

        //Print their information like so:

        // Your information:
        //        First Name: Rayan
        //        Last Name: Slim
        //        Age: 27
        //        Username: monotonic_relu
        //        City: Ottawa
        //        Country: Canada
        //
        int divident = 20;
        int divisor = 6;
        System.out.println(divident/divisor);

        //close scanner. It's good practice :D ! 
    }
}
