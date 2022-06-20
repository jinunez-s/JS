package java.Exercise.various;

import java.util.Arrays;

public class UpdatingArrays {
    public static void main(String[] args) {
        String[] menu = {"Expresso", "Iced Coffe", " Machiato"};
        menu[2] = "Latte";
        System.out.println(Arrays.toString(menu));
        String[] newMenu = new String[5];
        
        for (int i = 0; i < menu.length; i++) {
            newMenu[i] = menu[i];
        }
        newMenu[3] = "House blend";
        newMenu[4] = "Dark roast";
        System.out.println(Arrays.toString(newMenu));
        System.out.println(newMenu);
        String[] items = {"clock", "table", "ladder", "chair", "oven", "phone"};
        String[] moreItems = new String[6];
 
        for (int i = (moreItems.length - 1); i >= 1; i--) {
            if (i % 2 != 0) {
                continue;
            } 
            moreItems[i] = items[i];
        }
        System.out.println(Arrays.toString(moreItems));
        

    }
}
