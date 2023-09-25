public class Rectangle extends Shape {

    protected double width;
    protected double height;

    public Rectangle(){
        this(1,1);
    }
    public Rectangle(double width, double height){
        this.width = width;
        this.height = height;
    }

    public Rectangle(double width, double height, String color, boolean filled){
         this.width = width;
         this.height = height;
         super(color, filled);
            }

    public void setWidth(double width){
        return width;
    }

    public double getWidth(double width){
        this.width = width;
    }

    public void setHeight(double height){
        this.height = height;
    }

    public double getHeight(){
        return height;
    }
    
    public double getArea(double getArea){
        return height*width;
    }

    public double getPerimeter(double getPerimeter){
        return 2*width + 2*height;
    }

    public String toString(){
        return "Area: " + getArea() + " Perimeter: " + getPerimeter();
    }
}