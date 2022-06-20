package java.Exercise.various;

import java.util.Scanner;

public class GuessNumber {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int targetNumber = (int)GuessNumber2();
        System.out.print("I chose a number between 1 and 5. Try to guess it: ");
        int attemp = scan.nextInt();
        while (attemp != targetNumber){
            System.out.println("Opps Try again!");
            attemp = scan.nextInt();
        }
        System.out.println("Congratulations!! you win");
        scan.close();
    }
    
    public static double GuessNumber2(){
        double number = Math.floor(Math.random()*5) + 1;
        return number;
    }
}
