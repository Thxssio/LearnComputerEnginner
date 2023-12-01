package users;

// Ajuste no construtor para refletir a ausência da senha
public class Client extends User {
    public Client(String nome, String email, String telefone, String username) {
        super(nome, email, telefone, username);
    }
}
