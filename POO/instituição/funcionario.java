public class funcionario extends pessoa{
    private String setor;
    private boolean trabalhando;

    public void mudarTrabalho(){
        this.trabalhando = ! this.trabalhando;
    }

    public String getSetor(){
        return this.setor;
    }

    public void setSetor(String setor){
        this.setor = setor;
    }

    public boolean getTrabalhando(){
        return this.trabalhando;
    }

    public void setTrabalhando(boolean trabalhando){
        this.trabalhando = trabalhando;
    }

    @Override
    public String toString(){
        return "Nome: " + this.getNome() + ", " + "Idade: " + this.getIdade() + ", " + "Sexo: " + this.getSexo() + ", " + "Trabalhando? " + this.getTrabalhando() + ", " + "Setor: " + this.getSetor();
    }

}
