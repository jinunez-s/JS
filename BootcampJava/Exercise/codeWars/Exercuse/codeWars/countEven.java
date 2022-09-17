package Exercuse.codeWars;

public class countEven {
    public static void main(String[] args) {
        long count = 0L;
        long n = 651654651516L;
        if(n % 2 == 0){
            //is even
        }else{
            do{
                n = n - 2;
                count++;
            }while(n > 1);
        }
        System.out.println((int)count);
    }


}
