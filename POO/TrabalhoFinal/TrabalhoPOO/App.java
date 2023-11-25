package conexãodireta;

/**
 * Classe principal que representa a aplicação de chat.
 * @author Thássio
 */
import javax.swing.*;
import java.awt.*;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

public class App {
    private JFrame mainFrame;  // A janela principal da aplicação
    private JTextField textField;  // Campo de texto para entrada de mensagens
    private static JTextArea textArea;  // Área de exibição das mensagens
    private Socket con;  // Socket para a conexão
    private String clientName;  // Nome do cliente
    private DataOutputStream output;  // Stream de saída para enviar mensagens
    private DataInputStream serverInput;  // Stream de entrada para receber mensagens do servidor

    /**
     * Método principal que inicia a aplicação.
     * @param args Argumentos da linha de comando (não utilizado aqui)
     */
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            try {
                App window = new App();
                window.showLogin();
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    /**
     * Construtor da classe App que inicializa a interface gráfica.
     */
    public App() {
        initializeMain();
    }

    /**
     * Inicializa a janela principal da aplicação.
     */
    private void initializeMain() {
        mainFrame = new JFrame();
        // Configurações da janela
        mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        mainFrame.setTitle("CONEX - Usuario Conectado");
        mainFrame.setSize(620, 350);
        mainFrame.setLocationRelativeTo(null);
        mainFrame.setLayout(new BorderLayout());

        // Área de exibição das mensagens
        textArea = new JTextArea();
        stylizeComponent(textArea, 18);
        textArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(textArea);
        mainFrame.add(scrollPane, BorderLayout.CENTER);

        // Painel para entrada de mensagens
        JPanel inputPanel = new JPanel(new BorderLayout());
        textField = new JTextField();
        stylizeComponent(textField, 18);
        inputPanel.add(textField, BorderLayout.CENTER);

        // Botão para enviar mensagem
        JButton sendButton = new JButton("Enviar");
        stylizeComponent(sendButton, 18);
        sendButton.setBackground(new Color(30, 144, 255));
        sendButton.setForeground(Color.WHITE);
        sendButton.addActionListener(e -> sendMessage());
        inputPanel.add(sendButton, BorderLayout.EAST);

        // Botão para conectar-se a outro usuário
        JButton connectButton = new JButton("Conectar-se");
        stylizeComponent(connectButton, 18);
        connectButton.setBackground(new Color(30, 144, 255));
        connectButton.setForeground(Color.WHITE);
        connectButton.addActionListener(e -> requestDirectConnection());
        inputPanel.add(connectButton, BorderLayout.WEST);

        mainFrame.add(inputPanel, BorderLayout.SOUTH);

        // Listener para fechar a conexão ao fechar a janela
        mainFrame.addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent windowEvent) {
                closeConnection();
            }
        });

        // Adiciona a mensagem de boas-vindas
        JLabel welcomeLabel = new JLabel("Bem-vindo, " + clientName + "! Conecte-se a alguém usando o botão 'Conectar-se'");
        stylizeComponent(welcomeLabel, Font.BOLD, 16);
        welcomeLabel.setHorizontalAlignment(JLabel.CENTER);
        mainFrame.add(welcomeLabel, BorderLayout.NORTH);
    }

    /**
     * Exibe a tela de login para que o usuário informe seu nome.
     */
    private void showLogin() {
        JFrame loginFrame = new JFrame();
        // Configurações da janela de login
        loginFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        loginFrame.setTitle("CONEX - Tela de Login");
        loginFrame.setSize(400, 250);
        loginFrame.setLocationRelativeTo(null);

        // Painel de login
        JPanel loginPanel = new JPanel();
        loginPanel.setLayout(new BoxLayout(loginPanel, BoxLayout.Y_AXIS));
        loginPanel.setBorder(BorderFactory.createEmptyBorder(50, 50, 50, 50));

        // Título
        JLabel titleLabel = new JLabel("CONEX CHAT");
        stylizeComponent(titleLabel, Font.BOLD, 24);
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        loginPanel.add(titleLabel);

        loginPanel.add(Box.createRigidArea(new Dimension(0, 20)));

        // Solicitação de nome
        JLabel nameLabel = new JLabel("Digite seu nome:");
        stylizeComponent(nameLabel, Font.PLAIN, 18);
        nameLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        loginPanel.add(nameLabel);

        // Campo para inserção do nome
        JTextField loginTextField = new JTextField();
        stylizeComponent(loginTextField, 16);
        loginTextField.setAlignmentX(Component.CENTER_ALIGNMENT);
        loginPanel.add(loginTextField);

        // Botão de login
        JButton loginButton = new JButton("Entrar");
        stylizeComponent(loginButton, 18);
        loginButton.setAlignmentX(Component.CENTER_ALIGNMENT);
        loginButton.setBackground(new Color(30, 144, 255));
        loginButton.setForeground(Color.WHITE);
        loginButton.addActionListener(e -> {
            clientName = loginTextField.getText();
            if (!clientName.isEmpty()) {
                loginFrame.dispose();
                initializeMain();
                connectToServer();
                SwingUtilities.invokeLater(() -> mainFrame.setVisible(true));
            } else {
                JOptionPane.showMessageDialog(loginFrame, "Por favor, digite seu nome.");
            }
        });
        loginPanel.add(loginButton);

        loginFrame.setContentPane(loginPanel);
        loginFrame.setVisible(true);
    }

    /**
     * Conecta o cliente ao servidor.
     */
    private void connectToServer() {
        try {
            con = new Socket("127.0.0.1", 8080);
            output = new DataOutputStream(con.getOutputStream());
            serverInput = new DataInputStream(con.getInputStream());

            // Enviar o nome do cliente para o servidor
            output.writeUTF(clientName);

            // Inicia uma thread para receber mensagens do servidor
            new Thread(() -> {
                while (true) {
                    try {
                        String string = serverInput.readUTF();
                        updateInterface(string);
                    } catch (IOException e) {
                        updateInterface("Problema de conexão...");
                        closeConnection();
                        break;
                    }
                }
            }).start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Atualiza a interface gráfica com a mensagem recebida.
     * @param message Mensagem recebida do servidor.
     */
    private static void updateInterface(String message) {
        SwingUtilities.invokeLater(() -> textArea.append("\n" + message));
    }

    /**
     * Envia a mensagem digitada para o servidor.
     */
    private void sendMessage() {
        if (con != null && con.isConnected()) {
            String message = textField.getText();
            if (!message.isEmpty()) {
                updateInterface(clientName + ": " + message);
                try {
                    output.writeUTF(message);
                } catch (IOException e) {
                    updateInterface("Problema de conexão...");
                    closeConnection();
                }
                textField.setText("");
            }
        } else {
            JOptionPane.showMessageDialog(mainFrame, "Conexão perdida. Reconecte-se!");
            closeConnection();
        }
    }

    /**
     * Solicita a conexão direta a outro usuário.
     */
    private void requestDirectConnection() {
        String targetClient = JOptionPane.showInputDialog(mainFrame, "Digite o nome do Usuario para conectar diretamente:");
        if (targetClient != null && !targetClient.isEmpty()) {
            connectToClient(targetClient);
        }
    }

    /**
     * Conecta-se diretamente a outro usuário.
     * @param targetClient Nome do usuário alvo.
     */
    private void connectToClient(String targetClient) {
        if (con != null && con.isConnected()) {
            try {
                output.writeUTF("/connect " + targetClient);
            } catch (IOException e) {
                updateInterface("Problema de conexão...");
                closeConnection();
            }
        } else {
            JOptionPane.showMessageDialog(mainFrame, "Conexão perdida. Reconecte-se!");
            closeConnection();
        }
    }

    /**
     * Fecha a conexão com o servidor.
     */
    private void closeConnection() {
        if (con != null && !con.isClosed()) {
            try {
                con.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //System.exit(0);
    }

    /**
     * Aplica um estilo de fonte a um componente Swing.
     * @param component Componente Swing a ser estilizado.
     * @param fontSize Tamanho da fonte.
     */
    private void stylizeComponent(JComponent component, int fontSize) {
        component.setFont(new Font("Arial", Font.PLAIN, fontSize));
    }

    /**
     * Aplica um estilo de fonte e estilo a um componente Swing.
     * @param component Componente Swing a ser estilizado.
     * @param style Estilo da fonte (e.g., Font.BOLD).
     * @param fontSize Tamanho da fonte.
     */
    private void stylizeComponent(JComponent component, int style, int fontSize) {
        component.setFont(new Font("Arial", style, fontSize));
    }
}
