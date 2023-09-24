public interface Movable{
    void moveUp();
    void moveDown();
    void moveLeft();
    void moveRight();

    public static void main(String[] args){
        MovableCircle c = new MovableCircle(0,0,1,1,5);
        c.moveUp();
        c.moveRight();
        System.out.println(c);
    }
}