package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JPasswordField;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.ImageIcon;
import javax.swing.SwingConstants;
import java.awt.Window.Type;

public class LoginForm {

	private JFrame frame;
	private JTextField txtUser;
	private JPasswordField txtPassword;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					LoginForm window = new LoginForm();
					window.frame.setVisible(true);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public LoginForm() {
		
		initialize();
		
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setType(Type.UTILITY);
		frame.setBounds(100, 100, 608, 350);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(211, 10, 374, 299);
		frame.getContentPane().add(panel);
		panel.setLayout(null);
		
		txtUser = new JTextField();
		txtUser.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtUser.setBounds(20, 50, 341, 30);
		panel.add(txtUser);
		txtUser.setColumns(10);
		
		JLabel lblNewLabel = new JLabel("T\u00EAn t\u00E0i kho\u1EA3n");
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblNewLabel.setBounds(20, 10, 144, 30);
		panel.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("M\u1EADt kh\u1EA9u");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblNewLabel_1.setBounds(20, 90, 144, 30);
		panel.add(lblNewLabel_1);
		
		JButton btnDangNhap = new JButton("\u0110\u0103ng Nh\u1EADp");
		btnDangNhap.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String taiKhoan = txtUser.getText();
				String matKhau = txtPassword.getSelectedText();
				if(taiKhoan == "" || matKhau == "") {
					JOptionPane.showMessageDialog(btnDangNhap, "Vui lòng nhập đủ thông tin!");
					return;
				}
				if(taiKhoan == "admin" && matKhau == "admin") {
					JOptionPane.showMessageDialog(btnDangNhap, "OK");
				}
			}
		});
		btnDangNhap.setIcon(new ImageIcon(getClass().getResource("/images/icons8_login_32px.png")));
		btnDangNhap.setFont(new Font("Times New Roman", Font.BOLD, 14));
		btnDangNhap.setBounds(32, 197, 145, 60);
		panel.add(btnDangNhap);
		
		JButton btnThoat = new JButton("Tho\u00E1t");
		btnThoat.setIcon(new ImageIcon(getClass().getResource("/images/icons8_Logout_32px.png")));
		btnThoat.setFont(new Font("Times New Roman", Font.BOLD, 14));
		btnThoat.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (JOptionPane.showConfirmDialog(btnThoat, "Thoát khỏi chương trình?", "Thông báo", 
				        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE) == JOptionPane.YES_OPTION){
						System.exit(0);
					}
			}
		});
		btnThoat.setBounds(202, 197, 145, 60);
		panel.add(btnThoat);
		
		txtPassword = new JPasswordField();
		txtPassword.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtPassword.setBounds(20, 130, 341, 30);
		panel.add(txtPassword);
		
		JLabel lblIcon = new JLabel("");
		lblIcon.setHorizontalAlignment(SwingConstants.CENTER);
		lblIcon.setIcon(new ImageIcon(getClass().getResource("/images/icons8_staff_96px.png")));
		lblIcon.setBounds(10, 10, 191, 271);
		frame.getContentPane().add(lblIcon);
	}
}
