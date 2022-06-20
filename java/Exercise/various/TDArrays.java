package java.Exercise.various;

//import java.util.Arrays;

public class TDArrays {
    public static void main(String[] args) {
        int [][] grades = new int [3][4];//3 rows 4 elements
        grades[0][0] = 92;
        grades[0][1] = 99;
        grades[0][2] = 96;
        grades[0][3] = 94;
        grades[1][1] = 92;
        grades[1][2] = 92;
        grades[1][3] = 92;
        grades[2][0] = 100;
        grades[2][1] = 60;
        grades[2][2] = 80;
        grades[2][3] = 100;

        // int [][]grades2 = {
        //     {100,100,90,91},
        //     {100,100,100,91},
        //     {100,100,90,100}
        // };

        // System.out.println("\tHarry: " + Arrays.toString(grades2[0]));
        // System.out.println("\tRon: " + Arrays.toString(grades2[1]));
        // System.out.println("\tHermione: " + Arrays.toString(grades2[2]));

        // for (int i = 0; i < grades[0].length; i++) {
        //     System.out.println(grades[0][i]);
            
        // }
        // for (int i = 0; i < grades[0].length; i++) {
        //     System.out.println(grades[1][i]);
            
        // }
        // for (int i = 0; i < grades[0].length; i++) {
        //     System.out.println(grades[2][i]);
            
        // } 

        for (int i = 0; i < grades.length; i++) {
            switch(i){
                case 0: System.out.print("\tHarry: "); break;
                case 1: System.out.print("\tRon: "); break;
                case 2: System.out.print("\tHermonione: "); break;
            }
            for (int j = 0; j < grades.length; j++) {
                System.out.print(grades[i][j] + " ");
            }
            System.out.println("\n");
        }
        
    }
}
