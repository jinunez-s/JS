package java.Exercise.various;

public class RandomNumber {
    public static void main(String[] args) {
        System.out.println("It will be 6?");
        int number = (int)RandomNum();
        int attemps = 0;
        while(number != 6){
            System.out.println("Nope");
            number = (int)RandomNum();
            attemps++;
        }
        System.out.println("Wow is finally here: " + number + " And the attemps were: " + attemps);

        System.out.println("Loop: ");
        loop();
        ques();
    }

    public static double RandomNum(){
        double random = (Math.random() * 6) + 1;
        return random;
    }

    public static void loop(){
    int number = 0;
    while (true) {
        number++;
    if (number > 5) {
        break;
    } 
    }     
    System.out.println(number);
    }

    public static void ques(){
        // for (int i=9; i > 0; i--) {
        //     if (i%2 == 0) {
        //         continue;
        //     } 
        //     System.out.println(i);
        // }
        for (int i=9; i > 0; i--) {
            if (i%2 == 0) {
                continue;
            } else if (i == 3) {
                break;
            }
            System.out.println(i);
        }
    }
}
