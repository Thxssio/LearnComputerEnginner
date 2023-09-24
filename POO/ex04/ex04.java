class Retangulo{
    private float largura, altura;

    public Retangulo(float largura, float altura){
        this.largura = largura;
        this.altura = altura;
    }

    public void exibirInformacoes(){
        System.out.println("Altura: " + altura + "m");
        System.out.println("Largura: " + largura + "m"); 

    }

}

public class ex04{
    public static void main(String[] args){
        Retangulo retangulo1 = new Retangulo(10, 10);
        retangulo1.exibirInformacoes();


    }

}