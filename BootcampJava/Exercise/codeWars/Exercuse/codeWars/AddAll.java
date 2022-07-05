package Exercuse.codeWars;
public class AddAll {
    public static void main(String[] args) {
        int [] arr = {1, 2, 3, 4, 5};
        int numbersPivot[] = new int[arr.length];
        int numberPivot = 0;
        for(int i = 0; i < arr.length; i++){
          numberPivot += arr[i];
          if(i > 0){
            numbersPivot[i] = numberPivot;
          }
        }
        int result = 0;
        for(int i = 0; i < numbersPivot.length; i++){
          result += numbersPivot[i];
        }
        System.out.println(result);
    }
}
