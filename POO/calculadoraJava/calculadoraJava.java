
class Calculadora {
    private double r;

    public double add(int a, int b){
        System.out.println("V. Int");
        r = a + b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double add(float a, float b){
        System.out.println("V. float");
        r = a + b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double add(double a, double b){
        System.out.println("V. double");
        r = a + b;
        System.out.println("Resultado: " + r);
        return r;
    }
    
    public double sub(int a, int b){
        System.out.println("V. Int");
        r = a - b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double sub(float a, float b){
        System.out.println("V. float");
        r = a - b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double sub(double a, double b){
        System.out.println("V. double");
        r = a - b;
        System.out.println("Resultado: " + r);
        return r;
    }
    
    public double mul(int a, int b){
        System.out.println("V. Int");
        r = a * b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double mul(float a, float b){
        System.out.println("V. float");
        r = a * b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double mul(double a, double b){
        System.out.println("V. double");
        r = a * b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double div(int a, int b){
        System.out.println("V. Int");
        r = a / b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double div(float a, float b){
        System.out.println("V. float");
        r = a / b;
        System.out.println("Resultado: " + r);
        return r;
    }

    public double div(double a, double b){
        System.out.println("V. double");
        r = a / b;
        System.out.println("Resultado: " + r);
        return r;
    }


    
}
public class calculadoraJava{
    public static void main(String args[]){
    Calculadora c = new Calculadora();
    c.add(5, 7);
    c.sub(5, 7);
    c.mul(5, 7);
    c.div(5, 7);
    }
}