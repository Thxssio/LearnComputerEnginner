/*
Crie uma classe "Livro" com os atributos titulos, autor e ano de publicação.
implemente um construtor que permite a criação de um livro com esses atributos.
 */

class Livro{
    private String titulo, autor;
    private int ano;


    public Livro(String titulo, String autor, int ano){
        this.titulo = titulo;
        this.autor = autor;
        this.ano = ano;
    }
    public void exibirInformacoes(){
        System.out.println("Nome do livro: " + titulo);
        System.out.println("Autor: " + autor); 
        System.out.println("Ano: " + ano);
    }
}

public class ex03{
    public static void main(String[] args){
        Livro livro1 = new Livro("Teste1","Teste2", 2013);
        livro1.exibirInformacoes();
    }
}