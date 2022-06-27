public class VendingMachine{
    public static void main(String[] args) {
        Item[][] items = new Item[][] {
            {new Item("Pepsi", 4.95, 10), new Item("Fresca", 4.95, 5), new Item("Fanta", 4.95, 10)},
            {new Item("Coke", 4.95, 10), new Item("DrPepper", 6.00, 10), new Item("Sprite", 4.95, 15)},
            {new Item("7-Up", 4.95, 15), new Item("Pepsi black", 4.95, 10), new Item("Uva", 4.95, 15)}
        };
    }
}