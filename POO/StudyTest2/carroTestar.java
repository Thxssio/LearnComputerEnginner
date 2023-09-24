public class carroTestar{
    public static void main(String [] args){
        carro meuCarro = new carro();
        meuCarro.cor = "Branco";
        meuCarro.modelo = "Compass";
        meuCarro.marca = "jeep";
        meuCarro.ano = 2021;
        meuCarro.velocidade = 0;
        meuCarro.acelerar(20);
        meuCarro.frear(10);
        System.out.println("O carro é um " + meuCarro.marca + " " +meuCarro.modelo + " ano " +  meuCarro.ano + " na cor " + meuCarro.cor + ".");
        System.out.println("A velocidade atual é: " + meuCarro.velocidade);
    }
}