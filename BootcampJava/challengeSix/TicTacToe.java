package java.challengeSix;

import java.util.Scanner;

public class TicTacToe {
    static Scanner scan = new Scanner(System.in);
    public static void main(String[] args) {
        
        String [][] board = new String[3][3];
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board.length; j++) {
                board[i][j] = "_";
            }
        }
        printBoard(board);
        

        for (int i = 0; i < 9; i++) {
            
            if(i%2 == 0){
                System.out.println("Turn: X");
                int[] spot = askUser(board);
                board[spot[0]][spot[1]] = "X";
                printBoard(board);
            }else{
                System.out.println("Turn: O");
                int[] spot = askUser(board);
                board[spot[0]][spot[1]] = "O";
                printBoard(board);
            }
            if(checkWin(board) == 3){
                System.out.println("X Wins!");
                break;
            }else if(checkWin(board) == -3){
                System.out.println("O Wins");
                break;
            }else if(i == 8){
                System.out.println("It's a tie!");
            }
        }

    }

    public static void printBoard(String[][] board){
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board.length; j++) {
                System.out.print(board[i][j] + " ");
            }
            System.out.println(" ");
        }
    }

    public static int[] askUser(String[][] board){
        System.out.println("Pick a row and column number: ");
        System.out.print("Row: ");
        int row = scan.nextInt();
        scan.nextLine();

        System.out.println(" ");
        System.out.print("Column: ");
        int col = scan.nextInt();
        scan.nextLine();

        while(board[row][col] != ("_")){
            System.out.println("Spot taken, try again: ");

            System.out.println("Pick a row and column number: ");
            System.out.print("Row: ");
            row = scan.nextInt();
            scan.nextLine();

            System.out.println(" ");
            System.out.print("Column: ");
            col = scan.nextInt();
        }

        int[] spot = {row, col};
        return spot;


    }

    public static int checkWin(String[][] board){
        int count = 0;

        for(int i = 0; i < board.length; i++){
            for(int j = 0; j < board[i].length; j++){
                if(board[i][j] == "X"){
                    count++;
                }else if(board[i][j] == "O"){
                    count--;
                }
            }
            if(count == 3 || count == -3){
                return count;
            }else{
                count = 0;
            }
        }

        for(int i = 0; i < 3 ; i++){
            for (int j = 0; j < 3; j++) {
                if(board[j][i] == "X"){
                    count++;
                }else if(board[j][i] == "O"){
                    count--;
                }
                
            }
            if(count == 3 || count == -3){
                return count;
            }else{
                count = 0;
            }
        }

        for (int i = 0; i < 3; i++) {
            if(board[i][i] == "X"){
                count++;
            }else if(board[i][i] == "O"){
                count--;
            }
            
        }

        if(count == 3 || count == -3){
            return count;
        }else{
            count = 0;
        }

        for (int i = 0; i < 3; i++) {
            if (board[i][2-i] == "X") {
                count++;
            }else if( board[i][2-i] == "O"){
                count--;
            }
        }

        return count;
    }
}
