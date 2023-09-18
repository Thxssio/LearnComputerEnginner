public class MovableCircle extends MovablePoint {
    private int radius;

    public MovableCircle(int x, int y, int xSpeed, int ySpeed, int radius) {
        super(x, y, xSpeed, ySpeed);
        this.radius = radius;
    }

    public int getRadius() {
        return radius;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    @Override
    public String toString() {
        return "MovableCircle [center=" + super.toString() + ", radius=" + radius + "]";
    }

    public void MovableCircle(int dx, int dy) {
        super.move(dx, dy);
    }
}
    