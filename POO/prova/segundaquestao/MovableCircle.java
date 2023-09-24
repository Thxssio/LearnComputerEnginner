public class MovableCircle implements Movable {

    private int radius;
    private MovablePoint center;
  
    public MovableCircle(int x, int y, int xSpeed, int ySpeed, int radius) {
      this.radius = radius;
      center = new MovablePoint(x, y, xSpeed, ySpeed);
    }
  
    public String toString() {
      return center.toString() + "Radius: " + radius + "\n";
    }
  
    public void moveUp() {
      center.moveUp();
    }
  
    public void moveDown() {
      center.moveDown();
    }
  
    public void moveLeft() {
      center.moveLeft();
    }
  
    public void moveRight() {
      center.moveRight();
    }
    

  
  }