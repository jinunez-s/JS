package java.Exercise.various;

public class measureRectangle {
    public static void main(String[] args) {
        // measureRectangle(15, 15.5);
        // measureRectangle(3.5, 1.2);
        // measureRectangle(1.6, 5.6);
        // measureRectangle(10.1, 0.7);
        // measureRectangle(20.2, 5.6);

        double area_1 = measureRectangleDouble(15.4, 152.5);
        System.out.println("Functions with return " + area_1);

        System.out.println("===============");
        stringPrinter(15.4, 152.5, area_1);
    }
    public static void measureRectangle2(double length, double width){
        double area = length * width;
        System.out.println("The area of the rectangle is " + area + "\n");
    }

    public static double measureRectangleDouble(double length, double width){
        double area = length * width;
        return area;
    }

    public static void stringPrinter(double length, double width, double area){
        System.out.println("The area of a rectangle with length " + length + " and width " + 
        width + " is equal to " + area + "\n");
    }
    public static double measureRectangleOption(double length, double width, String option){
        if(length < 0 || width < 0 ){
            System.out.println("Length or width cannot be negative or zero");
            System.exit(0);
        }
        switch(option){
            case "area": return length * width;
            case "perimeter": return (2*length + width * 2);
            default: return 404;
        }   
    }
}
