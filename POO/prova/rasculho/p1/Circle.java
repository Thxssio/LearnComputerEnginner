public class Circle extends Shape{
    protected double radius;
    public void setRadius(double radius){
        this.radius = radius;
    }

    public double getRadius(double radius){
        return radius;
    }

    public double getArea(){
        return 3.14 * radius * radius;
    }

    public double getPerimeter(){
        return 2 * 3.14 * radius;
    }
}