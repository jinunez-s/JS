package java.Exercise.various;

public class Scope {

    static int apples = 5;
    public static void main(String[] args) {
        someFunction();

    }

    public static void someFunction(){
        
        System.out.println(apples);
    }
}
