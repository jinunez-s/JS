package BootcampJava.ClassesSetterAndGetters;

public class Main {
    public static void main(String[] args) {

        Car[] cars = new Car[]{
            new Car("Nissan", 23000.99, 2020, "negro", new String[] {"tires", "Key"}),
            new Car("Dodge", 34500.33, 2021, "Blue" , new String[] {"tires", "Window"}),
            new Car("Ford", 69420.33, 2021, "Silver" , new String[] {"tires", "filter"}),
        };

        //CREATE DEALERSHIP
        Dealership dealership = new Dealership();

        for (int i = 0; i < cars.length; i++) {
            dealership.setCar(cars[i], i);
            System.out.println(" ");
        }
        Car nissan = dealership.getCar(0);
        Car dodge = dealership.getCar(1);
        Car ford = dealership.getCar(2);
        
        System.out.println(nissan);
        System.out.println(dodge);
        System.out.println(ford);

        nissan.setColor("Pink");
        System.out.println(nissan);
        System.out.println(dealership.getCar(0));

        dealership.sell(2);

        for (int i = 0; i < cars.length; i++) {
            dealership.setCar(cars[i], i);
            System.out.println(" ");
        }

        System.out.println(dealership.search("Ford", 456789));

        /* */
    }
}
