package java.Exercise.various;

import java.util.Arrays;
import java.util.Scanner;

public class SortNumbers {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("How many numbers do you want to generate?");
        int quantity = scan.nextInt();
        scan.nextLine();
        System.out.println("What will be the limit number?");
        int limit = scan.nextInt();
        scan.nextLine();
        
        int [] arr = new int[quantity];
        for (int i = 0; i < quantity; i++) {
            arr[i] = (int)RandomNumbers(limit);
        }
        System.out.println("Okay. Your numbers are ready. Do you want to see them? \n'yes' or 'no'");
        String ans = scan.nextLine();
        if(ans.equals("yes")){
            System.out.println(Arrays.toString(arr));
        }else{
            System.out.println("Roger that!");
        }
        ans = "";
        System.out.println("Did you want to sort them? \n'yes' or 'no'");
        ans = scan.nextLine();
        if(ans.equals("yes")){
            Arrays.sort(arr);
            
            System.out.println(Arrays.toString(arr));
        }else{
            System.out.println("Roger that! \n See ya");
        }
        scan.close();
    }

    public static double RandomNumbers(int limitNumber){
        double randomNumber = Math.random() * limitNumber;
        return randomNumber;

    }
}
