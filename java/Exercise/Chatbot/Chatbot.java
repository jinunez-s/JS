package java.Exercise.Chatbot;

import java.util.Scanner;

public class Chatbot {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("Hello. What is your name?");
        String name = scan.nextLine();
        System.out.println("Hi " + name + " I'm Javabot. Where are you from?" );
        String city = scan.nextLine();
        System.out.println("I hear it's beautiful at " + city + "! I'm from a place called Oracle");
        System.out.println("How old are you?");
        int age = scan.nextInt();
        scan.nextLine();
        System.out.println("So you're " + age + ", cool! I'm 40 years old. :D");
        System.out.println("what's your favourite language (just don't say python)");
        String language = scan.nextLine();
        if(language.equals ("java")){
            System.out.println(language + " !, that's great! Nice to meet you " + name + " I have to log off now. See ya!");
        }else{
            System.out.println("Ughhh i have heard about that one. But I prefered Java beacuse I'm crazy >:D");
        }
        double value = 3.6;
        System.out.println((int)value ==3);
        scan.close();
        
    }
}
