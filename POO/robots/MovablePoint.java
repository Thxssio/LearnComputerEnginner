public class MovablePoint implements Movable {
    // Private membet variables
    private int x, y; // (x, y) coordinates of the point

    // Constructor
    public MovablePoint(int x, int y) {
    this.x = x;
    this.y = y;
}
    @Override
 public String toString() {
    return "Point at (" + x + "," + y + ")";
 }
 // Implement abstract methods defined in the interface Movable
 @Override
 public void moveUp() {
    y--;
 }

 @Override
 public void moveDown() {
    y++;
 }
 
 @Override
 public void moveLeft() {
    x--;
 }
 @Override
 public void moveRight() {
    x++;
 }
}