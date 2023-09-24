public class Rectangle extends Shape {
    protected double width;
    protected double length;

    public Rectangle(){
        this(1.0, 1.0);
    }

    public Rectangle(double width, double length){
        super("red", true);
        this.length = length;
        this.width = width;

    }

    public Rectangle(double width, double length, String color, boolean filled){
        super(color, filled);
        this.length = length;
        this.width = width;
    }

    public void setWidth(double width){
        this.width = width;
    }

    public double getWidth(double width){
        return width;
    }

    public void setLength(double length){
        this.length = length;
    }

    public double getLength(double length){
        return length;
    }

    public double getArea(){
        return width * length;
    }

    public double getPerimeter(){
        return 2 * (width + length);
    }
    
}