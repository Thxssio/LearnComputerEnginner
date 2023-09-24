public interface Movable {

    public static void main(String args[]) {
        MovableCircle c = new MovableCircle(0,0,1,1,5);
        c.moveUp();
        c.moveRight();
        System.out.println(c);
     }

  void moveUp();
  void moveDown();
  void moveLeft();
  public abstract void moveRight();
}