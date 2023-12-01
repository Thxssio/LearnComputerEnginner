package users; // Definindo o pacote onde a classe Admin está localizada

// Importe a interface AdminInterface
import java.util.List;

// Classe Admin que herda de User e implementa AdminInterface
public class Admin extends User implements AdminInterface {
    private boolean isAdmin;

    public Admin(String nome, String email, String telefone, String username) {
        super(nome, email, telefone, username);
        isAdmin = false; // Por padrão, o status de administrador é falso
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public void showConnectedUsersData(List<User> users) {
        System.out.println("Dados dos usuários conectados:");
        for (User user : users) {
            System.out.println(user.toString());
        }
    }

   
    @Override
    public String toString() {
        return "Admin: " + super.toString() + " - Admin: " + isAdmin;
    }
}