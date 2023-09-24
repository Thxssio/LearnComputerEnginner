public class Rectangle extends shape {

    protected double width, length;
  
    public Rectangle() {
      this(5,5);
    }
  
    public Rectangle(double width, double length) {
      super("red", true);
      this.width = width;
      this.length = length;
    }
  
    public Rectangle(double width, double length, String color, boolean filled) {
      super(color, filled);
      this.width = width;
      this.length = length;
    }
   
    public double getWidth() {
      return width;
    }
  
    public void setWidth(double width) {
      this.width = width;
    } 
  
    public double getLength() {
      return length;
    }
  
    public void setLength(double length) {
      this.length = length;
    } 
  
    public double getArea() {
      return width * length;
    }
  
    public double getPerimeter() {
      return 2 * width + 2 * length;
    }
  
    public String toString() {
      return "Cor:" + super.getColor() + "\nPreenchido: " + super.isFilled() + "\n" +
  /*super.toString() +*/ "Altura:" + length + "\nLargura:" + width + "\n";
    }
  
  }