package conexãodireta;

/**
 * Classe principal que representa a aplicação de chat.
 * @author Thássio
 */
import javax.swing.*;
import java.awt.*;
import java.net.Socket;
import java.util.ArrayList;
import java.io.*;
import java.util.List;


import users.Admin;
import users.Client;
import users.User;


public class App {
    private JFrame mainFrame;
    private JTextField textField;
    private static JTextArea textArea;
    private Socket con;
    private String clientName;
    private DataOutputStream output;
    private DataInputStream serverInput;
    private User currentUser; // Alterada para a classe base User
    private List<User> usuariosConectados;


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

    public App() {
        initializeMain();
        usuariosConectados = new ArrayList<>();
    }
    
   

    private void initializeMain() {


        mainFrame = new JFrame();
        mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        mainFrame.setTitle("CONEX - Usuario Conectado");
        mainFrame.setSize(620, 350);
        mainFrame.setLocationRelativeTo(null);
        mainFrame.setLayout(new BorderLayout());

        textArea = new JTextArea();
        textArea.setFont(new Font("Arial", Font.PLAIN, 18));
        textArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(textArea);
        mainFrame.add(scrollPane, BorderLayout.CENTER);

        JPanel inputPanel = new JPanel(new BorderLayout());
        textField = new JTextField();
        textField.setFont(new Font("Arial", Font.PLAIN, 18));
        inputPanel.add(textField, BorderLayout.CENTER);

        JButton sendButton = new JButton("Enviar");
        sendButton.setFont(new Font("Arial", Font.PLAIN, 18));
        sendButton.setBackground(new Color(30, 144, 255));
        sendButton.setForeground(Color.WHITE);
        sendButton.addActionListener(e -> sendMessage());
        inputPanel.add(sendButton, BorderLayout.EAST);

        JButton connectButton = new JButton("Conectar-se");
        connectButton.setFont(new Font("Arial", Font.PLAIN, 18));
        connectButton.setBackground(new Color(30, 144, 255));
        connectButton.setForeground(Color.WHITE);
        connectButton.addActionListener(e -> requestDirectConnection());
        inputPanel.add(connectButton, BorderLayout.WEST);

        mainFrame.add(inputPanel, BorderLayout.SOUTH);

        mainFrame.addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent windowEvent) {
                closeConnection();
            }
        });

        JLabel welcomeLabel = new JLabel("Bem-vindo, " + clientName + "! Conecte-se a alguém usando o botão 'Conectar-se'");
        welcomeLabel.setFont(new Font("Arial", Font.BOLD, 16));
        welcomeLabel.setHorizontalAlignment(JLabel.CENTER);
        mainFrame.add(welcomeLabel, BorderLayout.NORTH);

        List<User> users = readUsersFromCSV("usuarios.csv");

        for (User user : users) {
            if (user.getUsername().equals("admin")) {
                currentUser = new Admin(user.getNome(), user.getEmail(), user.getTelefone(), user.getUsername());
                break;
        }
        }

        if (currentUser == null && !users.isEmpty()) {
            currentUser = new Client(users.get(0).getNome(), users.get(0).getEmail(), users.get(0).getTelefone(), users.get(0).getUsername());
        }
    }
    private List<User> readUsersFromCSV(String fileName) {
        List<User> users = new ArrayList<>();
        boolean foundThxssio = false;
    
        try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                if (data.length >= 4) {
                    String nome = data[0];
                    String email = data[1];
                    String telefone = data[2];
                    String username = data[3];
    
                    User user;
                    if (username.equals("thxssio") && !foundThxssio) {
                        user = new Admin(nome, email, telefone, username);
                        ((Admin) user).setIsAdmin(true);
                        foundThxssio = true;
                    } else {
                        user = new User(nome, email, telefone, username);
                    }
    
                    users.add(user);
    
                    // Se o usuário for "thxssio" e for um administrador, mostrar os dados dos usuários conectados
                    if (user instanceof Admin && ((Admin) user).isAdmin()) {
                        ((Admin) user).showConnectedUsersData(users);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    
        return users;
    }
    

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
            } else {
                JOptionPane.showMessageDialog(mainFrame, "Por favor, digite uma mensagem antes de enviar!");
            }
        } else {
            JOptionPane.showMessageDialog(mainFrame, "Conexão perdida. Reconecte-se!");
            closeConnection();
        }
    }

    private void requestDirectConnection() {
        String targetClient = JOptionPane.showInputDialog(mainFrame, "Digite o nome do Usuario para conectar diretamente:");
        if (targetClient != null && !targetClient.isEmpty()) {
            connectToClient(targetClient);
        }
    }

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

    private void closeConnection() {
        if (con != null && !con.isClosed()) {
            try {
                con.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        usuariosConectados.remove(currentUser);
    }

    private void registerUser(String name, String email, String phone, String username) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("usuarios.csv", true))) {
            StringBuilder sb = new StringBuilder();
            sb.append(name).append(",").append(email).append(",").append(phone).append(",").append(username).append("\n");
            writer.write(sb.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private boolean isUserRegistered(String username) {
        try (BufferedReader reader = new BufferedReader(new FileReader("usuarios.csv"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                if (data.length > 3 && data[3].equals(username)) {
                    return true;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    private void showLogin() {
        JFrame loginFrame = new JFrame();
        loginFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        loginFrame.setTitle("CONEX - Tela de Login");
        loginFrame.setSize(400, 250);
        loginFrame.setLocationRelativeTo(null);

        JPanel loginPanel = new JPanel();
        loginPanel.setLayout(new BoxLayout(loginPanel, BoxLayout.Y_AXIS));
        loginPanel.setBorder(BorderFactory.createEmptyBorder(50, 50, 50, 50));

        JLabel titleLabel = new JLabel("CONEX CHAT");
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
        loginPanel.add(titleLabel);

        loginPanel.add(Box.createRigidArea(new Dimension(0, 20)));

        JLabel nameLabel = new JLabel("Digite seu nome:");
        nameLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        nameLabel.setFont(new Font("Arial", Font.PLAIN, 18));
        loginPanel.add(nameLabel);

        JTextField loginTextField = new JTextField();
        loginTextField.setAlignmentX(Component.CENTER_ALIGNMENT);
        loginTextField.setFont(new Font("Arial", Font.PLAIN, 16));
        loginPanel.add(loginTextField);

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
        
        JButton loginButton = new JButton("Entrar");
        loginButton.setFont(new Font("Arial", Font.PLAIN, 18));
        loginButton.addActionListener(e -> {
            String name = loginTextField.getText();
            if (!name.isEmpty() && isUserRegistered(name)) {
                clientName = name;
                loginFrame.dispose();
                initializeMain();
                connectToServer();
                SwingUtilities.invokeLater(() -> mainFrame.setVisible(true));
            } else {
                JOptionPane.showMessageDialog(loginFrame, "Usuário não registrado. Por favor, faça o registro primeiro ou verifique seu nome.", "Erro", JOptionPane.ERROR_MESSAGE);
            }
        });
        buttonPanel.add(loginButton);

        JButton registerButton = new JButton("Registrar");
        registerButton.setFont(new Font("Arial", Font.PLAIN, 18));
        registerButton.addActionListener(e -> showRegistrationScreen());
        buttonPanel.add(registerButton);

        loginPanel.add(buttonPanel);

        loginFrame.setContentPane(loginPanel);
        loginFrame.setVisible(true);
    }

    private void showRegistrationScreen() {
        JFrame registrationFrame = new JFrame();
        registrationFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        registrationFrame.setTitle("CONEX - Tela de Registro");
        registrationFrame.setSize(400, 300);
        registrationFrame.setLocationRelativeTo(null);

        JPanel registrationPanel = new JPanel();
        registrationPanel.setLayout(new BoxLayout(registrationPanel, BoxLayout.Y_AXIS));
        registrationPanel.setBorder(BorderFactory.createEmptyBorder(30, 30, 30, 30));

        JLabel titleLabel = new JLabel("Preencha seus dados:");
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 20));
        registrationPanel.add(titleLabel);

        JTextField nameField = new JTextField();
        nameField.setAlignmentX(Component.CENTER_ALIGNMENT);
        nameField.setFont(new Font("Arial", Font.PLAIN, 16));
        JLabel nameLabel = new JLabel("Nome:");
        nameLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        nameLabel.setFont(new Font("Arial", Font.PLAIN, 16));
        registrationPanel.add(nameLabel);
        registrationPanel.add(nameField);

        JTextField emailField = new JTextField();
        emailField.setAlignmentX(Component.CENTER_ALIGNMENT);
        emailField.setFont(new Font("Arial", Font.PLAIN, 16));
        JLabel emailLabel = new JLabel("Email:");
        emailLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        emailLabel.setFont(new Font("Arial", Font.PLAIN, 16));
        registrationPanel.add(emailLabel);
        registrationPanel.add(emailField);

        JTextField phoneField = new JTextField();
        phoneField.setAlignmentX(Component.CENTER_ALIGNMENT);
        phoneField.setFont(new Font("Arial", Font.PLAIN, 16));
        JLabel phoneLabel = new JLabel("Telefone:");
        phoneLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        phoneLabel.setFont(new Font("Arial", Font.PLAIN, 16));
        registrationPanel.add(phoneLabel);
        registrationPanel.add(phoneField);

        JTextField usernameField = new JTextField();
        usernameField.setAlignmentX(Component.CENTER_ALIGNMENT);
        usernameField.setFont(new Font("Arial", Font.PLAIN, 16));
        JLabel usernameLabel = new JLabel("Nome de usuário:");
        usernameLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        usernameLabel.setFont(new Font("Arial", Font.PLAIN, 16));
        registrationPanel.add(usernameLabel);
        registrationPanel.add(usernameField);

        JButton registerButton = new JButton("Registrar");
        registerButton.setAlignmentX(Component.CENTER_ALIGNMENT);
        registerButton.setFont(new Font("Arial", Font.PLAIN, 18));
        registerButton.addActionListener(e -> {
            String name = nameField.getText();
            String email = emailField.getText();
            String phone = phoneField.getText();
            String username = usernameField.getText();

            if (!name.isEmpty() && !email.isEmpty() && !phone.isEmpty() && !username.isEmpty()) {
                registerUser(name, email, phone, username);
                registrationFrame.dispose();
                initializeMain();
                connectToServer(); // Conectar ao servidor
                SwingUtilities.invokeLater(() -> mainFrame.setVisible(true));
            } else {
                JOptionPane.showMessageDialog(registrationFrame, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
            }
        });
        registrationPanel.add(registerButton);

        registrationFrame.setContentPane(registrationPanel);
        registrationFrame.setVisible(true);
    }
    private void showConnectedUsers() {
        JFrame connectedUsersFrame = new JFrame();
        connectedUsersFrame.setTitle("Usuários Conectados");
        connectedUsersFrame.setSize(400, 300);
        connectedUsersFrame.setLocationRelativeTo(null);
    
        JPanel connectedUsersPanel = new JPanel(new GridLayout(usuariosConectados.size(), 4));
    
        JLabel nameLabel = new JLabel("Nome");
        JLabel usernameLabel = new JLabel("Usuário");
        JLabel emailLabel = new JLabel("Email");
        JLabel phoneLabel = new JLabel("Telefone");
        JLabel typeLabel = new JLabel("Tipo"); // Adicionei um rótulo para exibir o tipo de usuário
    
        connectedUsersPanel.add(nameLabel);
        connectedUsersPanel.add(usernameLabel);
        connectedUsersPanel.add(emailLabel);
        connectedUsersPanel.add(phoneLabel);
        connectedUsersPanel.add(typeLabel); // Adicionando o rótulo do tipo de usuário à interface
    
        for (User user : usuariosConectados) {
            JLabel name = new JLabel(user.getNome());
            JLabel username = new JLabel(user.getUsername());
            JLabel email = new JLabel(user.getEmail());
            JLabel phone = new JLabel(user.getTelefone());
            
            JLabel userType;
            if (user instanceof Admin) {
                userType = new JLabel("Admin");
            } else {
                userType = new JLabel("Usuário");
            }
    
            connectedUsersPanel.add(name);
            connectedUsersPanel.add(username);
            connectedUsersPanel.add(email);
            connectedUsersPanel.add(phone);
            connectedUsersPanel.add(userType); // Adicionando o tipo de usuário à interface
        }
    
        connectedUsersFrame.add(connectedUsersPanel);
        connectedUsersFrame.setVisible(true);
    }
    
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
        usuariosConectados.add(currentUser);
    }

    private void updateInterface(String message) {
        SwingUtilities.invokeLater(() -> textArea.append("\n" + message));
    }
}
