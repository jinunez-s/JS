package java.Exercise.various;

public class Pacman {
    public static void main(String[] args) {

        int [] list = {0,0,0,0,0,0,0,0,0,0};
        for (int i = 0; i < 10; i++) {
            list[i] = (int)randomNumbers();
        }
        System.out.print("The list of the numbers is: ");
        for (int i = 0; i < list.length; i++) {
            System.out.print(list[i] + " ");
        }
        System.out.println(" ");
        System.out.println("The winner is: ");
        int max = 0;
        int index = 0;
        for (int i = 0; i < list.length; i++) {
            if(max < list[i]){
                max = list[i];
                index = i;
            }
        }
        System.out.println("In the position: " + (index+1) + " with a max value of: " + max);
        System.out.println();
        System.out.println("Comprbando: " + list[index] );


    }

    public static double randomNumbers(){
        double randomNumber = Math.random() * 50000;
        return randomNumber;
    }
}
