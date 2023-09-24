public class MovablePoint implements Movable {

    int x, y, xSpeed, ySpeed;
  
    public MovablePoint(int x, int y, int xSpeed, int ySpeed) {
      this.x = x;
      this.y = y;
      this.xSpeed = xSpeed;
      this.ySpeed = ySpeed;
    }
  
    public String toString() {
      return "x: " + x + " y: " + y + " xSpeed: " + xSpeed + " ySpeed:" + ySpeed + "\n";
    }
   
    public void moveUp() {
      y += 1 * ySpeed;
    }
  
    public void moveDown() {
      y -= 1 * ySpeed;
    }
  
    public void moveLeft() {
      x -= 1 * xSpeed;
    }
  
    public void moveRight() {
      x += 1 * xSpeed;
    }
  }