package Exercuse.codeWars;

public class _Count_Digit_Frequency{
    public static void main(String []args){
        int number = 53464;
        int n = 4;
        int count = 0;
        while(number > 0 ){
            int rem = number % 10;
            if(rem == n){
                count++;
            }
            number = number / 10;
        }
        System.out.println(count);
    }
}