package users;

public class User {
    private String nome;
    private String email;
    private String telefone;
    private String username;

    public User(String nome, String email, String telefone, String username) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.username = username;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getUsername() {
        return username;
    }
    @Override
    public String toString() {
        return "User: " + nome + ", " + email + ", " + telefone + ", " + username;
    }
}
