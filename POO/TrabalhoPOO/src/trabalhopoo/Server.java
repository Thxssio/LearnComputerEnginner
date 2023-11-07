package trabalhopoo;

/**
 *
 * @author thxssio
 */


import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Server implements ActionListener {

    private static JFrame janela;
    private JTextField campoTexto;
    private JPanel painelMensagens;
    private static Box vertical = Box.createVerticalBox();
    private static DataOutputStream dout;

    public Server() {
        janela = new JFrame();
        criarInterfaceGrafica();
    }

    private void criarInterfaceGrafica() {
        janela.setLayout(null);

        criarPainelSuperior();
        criarPainelMensagens();
        criarCampoTexto();
        criarBotaoEnviar();
        configurarJanela();
    }

    private void criarPainelSuperior() {
        JPanel painelSuperior = new JPanel();
        painelSuperior.setBackground(new Color(22, 110, 224));
        painelSuperior.setBounds(0, 0, 450, 70);
        painelSuperior.setLayout(null);
        janela.add(painelSuperior);
        JLabel botaoVoltar = criarBotaoVoltar();
        painelSuperior.add(botaoVoltar);
        
        ImageIcon i4 = new ImageIcon(ClassLoader.getSystemResource("icons/miguel.jpeg"));
        Image i5 = i4.getImage().getScaledInstance(50, 50, Image.SCALE_DEFAULT);
        ImageIcon i6 = new ImageIcon(i5);
        JLabel profile = new JLabel(i6);
        profile.setBounds(40, 10, 50, 50);
        painelSuperior.add(profile);
        
        ImageIcon i7 = new ImageIcon(ClassLoader.getSystemResource("icons/video.png"));
        Image i8 = i7.getImage().getScaledInstance(30, 30, Image.SCALE_DEFAULT);
        ImageIcon i9 = new ImageIcon(i8);
        JLabel video = new JLabel(i9);
        video.setBounds(300, 20, 30, 30);
        painelSuperior.add(video);
        
        ImageIcon i10 = new ImageIcon(ClassLoader.getSystemResource("icons/phone.png"));
        Image i11 = i10.getImage().getScaledInstance(35, 30, Image.SCALE_DEFAULT);
        ImageIcon i12 = new ImageIcon(i11);
        JLabel phone = new JLabel(i12);
        phone.setBounds(360, 20, 35, 30);
        painelSuperior.add(phone);
    }
   
    
    private JLabel criarBotaoVoltar() {
        ImageIcon iconeVoltar = new ImageIcon(ClassLoader.getSystemResource("icons/3.png"));
        Image imagemIconeVoltar = iconeVoltar.getImage().getScaledInstance(25, 25, Image.SCALE_DEFAULT);
        ImageIcon iconeVoltarRedimensionado = new ImageIcon(imagemIconeVoltar);
        JLabel botaoVoltar = new JLabel(iconeVoltarRedimensionado);
        botaoVoltar.setBounds(5, 20, 25, 25);
        botaoVoltar.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent ae) {
                System.exit(0);
            }
        });
        return botaoVoltar;
    }
    

    private void criarPainelMensagens() {
        painelMensagens = new JPanel();
        painelMensagens.setBounds(5, 75, 440, 570);
        janela.add(painelMensagens);
    }

    private void criarCampoTexto() {
        campoTexto = new JTextField();
        campoTexto.setBounds(5, 655, 310, 40);
        campoTexto.setFont(new Font("SAN_SERIF", Font.PLAIN, 16));
        janela.add(campoTexto);
    }

    private void criarBotaoEnviar(){
        JButton botaoEnviar = new JButton("Enviar");
        botaoEnviar.setBounds(320, 655, 123, 40);
        botaoEnviar.setBackground(new Color(22, 110, 224));
        botaoEnviar.setForeground(Color.WHITE);
        botaoEnviar.addActionListener(this);
        botaoEnviar.setFont(new Font("SAN_SERIF", Font.PLAIN, 16));
        janela.add(botaoEnviar);
    }

    private void configurarJanela() {
        janela.setSize(450, 700);
        janela.setLocation(200, 50);
        janela.setUndecorated(true);
        janela.getContentPane().setBackground(Color.WHITE);
        janela.setVisible(true);
    }

    public void actionPerformed(ActionEvent ae) {
        try {
            
            String mensagem = campoTexto.getText();
            JPanel painelMensagemFormatada = formatarMensagem(mensagem);
            atualizarPainelMensagens(painelMensagemFormatada);
            enviarMensagemServidor(mensagem);
            limparCampoTexto();
            atualizarJanela();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private JPanel formatarMensagem(String mensagem) {
        JPanel painel = new JPanel();
        painel.setLayout(new BoxLayout(painel, BoxLayout.Y_AXIS));

        JLabel mensagemFormatada = new JLabel("<html><p style=\"width: 150px\">" + mensagem + "</p></html>");
        mensagemFormatada.setFont(new Font("Tahoma", Font.PLAIN, 16));
        mensagemFormatada.setBackground(new Color(18, 169, 219));
        mensagemFormatada.setOpaque(true);
        mensagemFormatada.setBorder(new EmptyBorder(15, 15, 15, 50));

        painel.add(mensagemFormatada);

        Calendar calendario = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

        JLabel hora = new JLabel();
        hora.setText(sdf.format(calendario.getTime()));

        painel.add(hora);

        return painel;
    }

    private void atualizarPainelMensagens(JPanel novoPainelMensagem) {
        painelMensagens.setLayout(new BorderLayout());
        JPanel painelDireita = new JPanel(new BorderLayout());
        painelDireita.add(novoPainelMensagem, BorderLayout.LINE_END);
        vertical.add(painelDireita);
        vertical.add(Box.createVerticalStrut(15));
        painelMensagens.add(vertical, BorderLayout.PAGE_START);
    }

    private void enviarMensagemServidor(String mensagem) {
        try {
            dout.writeUTF(mensagem);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void limparCampoTexto() {
        campoTexto.setText("");
    }

    private void atualizarJanela() {
        janela.repaint();
        janela.invalidate();
        janela.validate();
    }

    public static void main(String[] args) {
        Server server = new Server();

        try {
            ServerSocket skt = new ServerSocket(6001);
            while (true) {
                Socket s = skt.accept();
                DataInputStream din = new DataInputStream(s.getInputStream());
                dout = new DataOutputStream(s.getOutputStream());

                new Thread(() -> {
                    while (true) {
                        try {
                            String mensagem = din.readUTF();
                            JPanel painel = server.formatarMensagem(mensagem);

                            JPanel painelEsquerda = new JPanel(new BorderLayout());
                            painelEsquerda.add(painel, BorderLayout.LINE_START);
                            vertical.add(painelEsquerda);

                            SwingUtilities.invokeLater(() -> {
                                janela.validate();
                            });
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}
