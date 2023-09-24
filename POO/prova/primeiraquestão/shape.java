public abstract class shape {

    protected String color;
    protected boolean filled;
  
    public shape() {
      this("blue", false);
    }
  
    public shape(String color, boolean filled) {
      this.color = color;
      this.filled = filled;
    }
  
    public String getColor() {
      return color;
    }
  
    public void setColor(String color)  {
      this.color = color;
    }
  
    public boolean isFilled() {
      return filled;
    }
  
    public abstract double getArea();
  
    public abstract double getPerimeter();
  
  
    public void setFilled(boolean filled)  {
      this.filled = filled;
    }
  
    public abstract String toString();
  }