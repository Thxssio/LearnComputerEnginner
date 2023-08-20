class Circulo {
    // Atributos da classe Circulo
    double raio;
    String cor;

    // Construtor da classe Circulo
    public Circulo(double raio, String cor) {
        this.raio = raio;
        this.cor = cor;
    }

    // Método para calcular a área do círculo
    public double calcularArea() {
        return Math.PI * raio * raio;
    }

    // Método para calcular o perímetro (circunferência) do círculo
    public double calcularPerimetro() {
        return 2 * Math.PI * raio;
    }

    // Método para exibir informações sobre o círculo
    public void exibirInformacoes() {
        System.out.println("Círculo de raio: " + raio);
        System.out.println("Cor: " + cor);
        System.out.println("Área: " + calcularArea());
        System.out.println("Perímetro: " + calcularPerimetro());
    }
}

public class ex01 {
    public static void main(String[] args) {
        Circulo circulo1 = new Circulo(5.0, "Vermelho");
        circulo1.exibirInformacoes();
    }
}
