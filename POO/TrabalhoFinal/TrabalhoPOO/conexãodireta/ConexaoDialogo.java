package conexãodireta;

/**
 * Classe que representa um diálogo de conexão para conectar-se diretamente a outro usuário.
 * @author Thássio
 */
import javax.swing.*;
import java.awt.*;

public class ConexaoDialogo extends JDialog {
    private JTextField usernameField;  // Campo de texto para inserir o nome de usuário alvo
    private JButton connectButton;  // Botão para confirmar a conexão
    private String targetUsername;  // Variável que armazenará o nome de usuário alvo

    /**
     * Construtor que cria um novo diálogo de conexão.
     * @param parent Janela pai à qual este diálogo está associado.
     */
    public ConexaoDialogo(JFrame parent) {
        super(parent, "Conectar a outro Usuario", true);  // Configurações do diálogo
        initialize();  // Inicializa os componentes do diálogo
    }

    /**
     * Inicializa os componentes do diálogo.
     */
    private void initialize() {
        setLayout(new BorderLayout());  // Configuração do layout do diálogo

        JLabel label = new JLabel("Digite o nome do usuario para conectar diretamente:");
        add(label, BorderLayout.NORTH);  // Adiciona uma etiqueta no topo do diálogo

        usernameField = new JTextField();  // Cria o campo de texto para o nome de usuário
        add(usernameField, BorderLayout.CENTER);  // Adiciona o campo de texto no centro do diálogo

        connectButton = new JButton("Conectar");  // Cria o botão de conexão
        connectButton.addActionListener(e -> {
            targetUsername = usernameField.getText();  // Obtém o nome de usuário inserido pelo usuário
            dispose();  // Fecha o diálogo
        });
        add(connectButton, BorderLayout.SOUTH);  // Adiciona o botão de conexão na parte inferior do diálogo

        pack();  // Faz com que o diálogo tenha um tamanho preferido
        setLocationRelativeTo(null);  // Centraliza o diálogo na tela
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);  // Define o comportamento ao fechar o diálogo
    }

    /**
     * Obtém o nome de usuário alvo inserido pelo usuário.
     * @return O nome de usuário alvo.
     */
    public String getTargetUsername() {
        return targetUsername;
    }
}
