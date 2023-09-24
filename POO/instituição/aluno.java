public class aluno extends pessoa{
    private int matricula;
    private String curso;

    public void cancelarMatricula(){
        System.out.println("Matricula será cancelada");
    }

    public int getMatricula(){
        return this.matricula;
    }
    public void setMatricula(int matricula){
        this.matricula = matricula;
    }

    public String getCurso(){
        return this.curso;
    }
    public void setCurso(String curso){
        this.curso = curso;
    }

    @Override
    public String toString(){
        return "Nome: " + this.getNome() + ", " + "Idade: " + this.getIdade() + ", " + "Sexo: " + this.getSexo() + ", " + "Matricula: " + getMatricula() + ", " + "Curso: " + getCurso(); 
       }
}