package java.Exercise.BooleansAndConditionals;

public class JavaMart {
    public static void main(String[] args) {
        double wallet = 100000505;
        
        double toyCar = 4455.99;
        System.out.println("Can I get this car?");
        //if you have enough money
            //       print: Sure!
            //       pay for the toy car 

        //else:  Sorry, I only have <wallet> left.
        if(wallet> toyCar){
            System.out.println("Sure pay for the toy car");
            System.out.println("I have " + wallet);
            wallet = wallet - toyCar;
        }else{
            System.out.println("Sorry, I only have " + wallet + " left.");
        }

        
        double nike = 9511.99;       //run test case with 89.99
        System.out.println("Can I get these nike shoes?");
        //if you have enough money
            //       print: Sure!
            //       pay for the nike shoes 

        //else: Sorry, I only have <wallet> left.
        if(wallet> nike){
            System.out.println("Sure pay for the nike shoes");
            System.out.println("I have " + wallet);
        }else{
            System.out.println("Sorry, I only have " + wallet + " left.");
        }
    }
}
