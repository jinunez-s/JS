public class Item {
    private String name;
    private double price;
    private int quantity;

    public Item(String name, double price, int quantity){
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public Item(Item source){
        this.name = source.name;
        this.price = source.price;
        this.quantity = source.quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice(){
        return price;
    }

    public int getQuantity(){
        return quantity;
    }

    public void setPrice(double price){
        this.price = price;
    }

    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        // return "Item [name=" + name + ", price=" + price + ", quantity=" + quantity + "]";
        return name + ": " + price + " (" + quantity + ")";
    }

    
    
}
