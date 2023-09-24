public class pessoa{
    private String nome;
    private int idade;
    private String sexo;

    public void setIdade(int idade){
        this.idade = idade;
    }

    public int getIdade(){
        return this.idade;
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    public String getNome(){
        return this.nome;
    }

    public void setSexo(String sexo){
        this.sexo = sexo;
    }
    public String getSexo(){
        return this.sexo;
    }

    public String toString(){
        return "Nome: " + this.getNome() + ", " + "Idade: " + this.getIdade() + ", " + "Sexo: " + this.getSexo();
    }
}
