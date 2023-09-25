public class Circle{
    private double radius;

    public Circle(){
        this(1);
    }
    public Circle(double radius){
        super("red", true);
        this.radius = radius;
    }

    public Circle(double radius, String color, boolean filled){
        super(color, filled);
        this.radius = radius;
    }
    public double getRadius(){
        return radius;
    }
    public void setRadius(){
        this.radius = radius;
    }

    public double getArea(){
        return radius * radius * 3.14;
    }

    public double getPerimeter(){
        return 2*3.14*radius;
    }

    public String toString(){
        return "Area: " + getArea() + " Perimeter: " + getPerimeter();
    }

}