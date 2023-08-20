class Retangulo {
    // Atributos da classe Retangulo
    double largura;
    double altura;

    // Construtor da classe Retangulo
    public Retangulo(double largura, double altura) {
        this.largura = largura;
        this.altura = altura;
    }

    // Método para calcular a área do retângulo
    public double calcularArea() {
        return largura * altura;
    }

    // Método para calcular o perímetro do retângulo
    public double calcularPerimetro() {
        return 2 * (largura + altura);
    }
}

public class ex02 {
    public static void main(String[] args) {
        // Criando um objeto da classe Retangulo
        Retangulo retangulo1 = new Retangulo(5.0, 3.0);

        // Calculando e exibindo a área e o perímetro do retângulo
        System.out.println("Área do retângulo: " + retangulo1.calcularArea());
        System.out.println("Perímetro do retângulo: " + retangulo1.calcularPerimetro());
    }
}
