public class carro{
    String cor;
    String marca;
    String modelo;
    int ano;
    int velocidade;


    carro(){

    }
    carro(String cor){
        this.cor = cor;
    }
    carro(String cor, String marca){
        this.cor = cor;
        this.marca = marca;
    }
    carro(String cor,String marca,String modelo){
        this.cor = cor;
        this.marca = marca;
        this.modelo = modelo;
    }
    carro(String cor,String marca,String modelo,int ano){
        this.cor = cor;
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
    }
    void acelerar(int aceleracao){
        velocidade += aceleracao;
    }
    void frear(int frear){
        velocidade -= frear;
    }
}