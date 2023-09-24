public class main{
    public static void main(String [] args){
        aluno a1 = new aluno();
        professor p1 = new professor();
        funcionario f1 = new funcionario();

        a1.setNome("Pedro");
        p1.setNome("Maria");
        f1.setNome("João");

        a1.setSexo("M");
        p1.setSexo("F");
        f1.setSexo("M");

        a1.setIdade(18);
        p1.setIdade(30);
        f1.setIdade(25);

        a1.setCurso("Informática");
        p1.setSalario(2500.75f);
        f1.setSetor("Estoque");

        a1.setMatricula(1111);

        p1.receberAumento(550.20f);

        f1.mudarTrabalho();

        p1.setEspecialidade("Matematica");

        System.out.println(a1.toString());
        System.out.println(p1.toString());
        System.out.println(f1.toString());  
    }
}