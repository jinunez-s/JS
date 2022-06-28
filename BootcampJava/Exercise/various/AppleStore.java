package java.Exercise.various;

public class AppleStore {
    public static void main(String[] args) {
        int numOfApples = 0;
        int numOfCustomers = 0;
        double profit = 0;


        System.out.println("You picked 500 apples from an apple orchard");
        //Update number of apples.
        numOfApples = 500;
        
        System.out.println("Time for business! You're selling each apple for 40 dollars");
        //Make a price variable. Set it equal to 40 cents. 
        int price = 40;

        System.out.println("One customer walked in. He bought 4 apples!");
        //Update number of apples.
        //Update number of customers;
        //Update profit
        numOfApples = numOfApples - 4;
        numOfCustomers =1;
        profit = 4 * price;

        System.out.println("Another customer walked in. He bought 20 apples!");
        //Update number of apples;
        //Update number of customers;
        //Update profit
        numOfApples = numOfApples - 20;
        numOfCustomers =2;
        profit = profit + (20 * price);

        System.out.println("Another customer walked in. She bought 200 apples!");
        //Update number of apples;
        //Update number of customers;
        //Update profit
        numOfApples = numOfApples - 200;
        numOfCustomers =3;
        profit = profit + (20 * price);

        System.out.println("Wow! So far, you made: "+profit+"");
        System.out.println( numOfCustomers + " customers love your apples.");
        System.out.println("You have "+numOfApples+" apples left. We'll sell more tomorrow!");

        char grade = 'B';
        System.out.println(grade);
    }
}
