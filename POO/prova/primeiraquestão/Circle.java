public class Circle extends shape {

    protected double radius;
  
    public Circle() {
      this(5);
    }
  
    public Circle(double radius) {
  //    this(radius, "red", true);
      super("red", true);
      this.radius = radius;
    }
  
    public Circle(double radius, String color, boolean filled) {
      super(color, filled);
      this.radius = radius;
    }
   
    public double getRadius() {
      return radius;
    }
  
    public void setRadius(double radius) {
      this.radius = radius;
    } 
  
    public double getArea() {
      return java.lang.Math.PI * radius * radius;
    }
  
    public double getPerimeter() {
      return 2 * java.lang.Math.PI * radius;
    }
  
    public String toString() {
      return "Cor:" + getColor() + "\nPreenchido: " + isFilled() + "\n" +
  //super.toString() + 
             "Raio:" + radius + "\n";
    }
  
  }