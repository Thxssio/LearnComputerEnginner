
package conexãodireta;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

public class Servidor {
    private ServerSocket serverSocket;  // Socket do servidor
    private Map<String, Socket> clientMap;  // Mapa para mapear nomes de usuários para seus respectivos sockets
    private Map<String, Socket> directConnectionRequests;  // Mapa para armazenar solicitações de conexão direta

    /**
     * Método principal que inicia o servidor.
     * @param args Argumentos da linha de comando (não utilizado aqui).
     */
    public static void main(String[] args) {
        new Servidor().startServer();
    }

    /**
     * Construtor que inicializa os mapas de clientes e solicitações de conexão direta.
     */
    public Servidor() {
        clientMap = new HashMap<>();
        directConnectionRequests = new HashMap<>();
    }

    /**
     * Inicia o servidor e aguarda conexões de clientes.
     */
    private void startServer() {
        try {
            serverSocket = new ServerSocket(8080);  // Cria um ServerSocket na porta 8080
            System.out.println("Servidor iniciado. Aguardando conexões...");

            while (true) {
                Socket clientSocket = serverSocket.accept();  // Aguarda uma conexão de um cliente
                new Thread(() -> handleClient(clientSocket)).start();  // Inicia uma nova thread para lidar com o cliente
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Lida com as comunicações de um cliente específico.
     * @param clientSocket Socket do cliente.
     */
    private void handleClient(Socket clientSocket) {
        try {
            DataInputStream input = new DataInputStream(clientSocket.getInputStream());
            String clientName = input.readUTF();  // Lê o nome de usuário do cliente

            System.out.println("Usuario conectado: " + clientName);

            clientMap.put(clientName, clientSocket);  // Adiciona o cliente ao mapa de clientes

            DataOutputStream output = new DataOutputStream(clientSocket.getOutputStream());

            while (true) {
                String message = input.readUTF();  // Lê a mensagem do cliente
                System.out.println("Mensagem recebida de " + clientName + ": " + message);

                if (message.startsWith("/connect ")) {
                    String targetClient = message.substring("/connect ".length());

                    if (clientMap.containsKey(targetClient)) {
                        Socket targetSocket = clientMap.get(targetClient);
                        directConnectionRequests.put(targetClient, clientSocket);

                        DataOutputStream targetOutput = new DataOutputStream(targetSocket.getOutputStream());
                        targetOutput.writeUTF(clientName + " quer se conectar diretamente a você. Aceitar? (Digite /Aceitar " + clientName + ")");
                    } else {
                        output.writeUTF("Cliente de destino não encontrado ou não está conectado.");
                    }
                } else if (message.startsWith("/Aceitar ")) {
                    String targetClient = message.substring("/Aceitar ".length());

                    if (clientMap.containsKey(targetClient) && directConnectionRequests.containsKey(targetClient)) {
                        Socket targetSocket = directConnectionRequests.get(targetClient);
                        directConnectionRequests.remove(targetClient);

                        DataOutputStream targetOutput = new DataOutputStream(targetSocket.getOutputStream());
                        targetOutput.writeUTF(clientName + " aceitou a sua solicitação de conexão direta.");

                        // Inicia a comunicação direta entre os dois clientes
                        startDirectCommunication(clientName, targetClient);
                    }
                } else {
                    forwardMessage(clientName, message);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Inicia a comunicação direta entre dois clientes.
     * @param client1 Nome do primeiro cliente.
     * @param client2 Nome do segundo cliente.
     */
    private void startDirectCommunication(String client1, String client2) {
        // Lógica para iniciar a comunicação direta entre client1 e client2
    }

    /**
     * Encaminha uma mensagem de um remetente para todos os destinatários.
     * @param sender Nome do remetente.
     * @param message Mensagem a ser encaminhada.
     */
    private void forwardMessage(String sender, String message) {
        // Encaminhe a mensagem para todos os destinatários
        for (Map.Entry<String, Socket> entry : clientMap.entrySet()) {
            if (!entry.getKey().equals(sender)) {
                try {
                    DataOutputStream targetOutput = new DataOutputStream(entry.getValue().getOutputStream());
                    targetOutput.writeUTF(sender + ": " + message);
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }
}
