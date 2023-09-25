public class ShapeApp{
    public static void main(String [] args){
        Rectangle r = new Rectangle();
        Circle c = new Circle();
        System.out.println(r);
        System.out.println(r.getArea());
        System.out.println(r.getPerimeter());
        System.out.println(c);
        System.out.println(c.getArea());
        System.out.println(c.getPerimeter());
    }
}