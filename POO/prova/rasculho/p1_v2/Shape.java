public abstract class Shape {
    protected String color;
    protected boolean filled;

    public Shape(){
        this("blue", false);
    }
    public Shape(String color, boolean filled){
        this.color = color;
        this.filled = filled;
    }

    public void setColor(String color){
        this.color = color;
    }
    public String getColor(){
        return color;
    }
    public void setfilled(boolean filled){
        this.filled = filled;
    }
    public boolean inFilled(){
        return filled;
    }

    public abstract double getArea();
    public abstract double getPerimeter();
    public abstract String toString();
}

