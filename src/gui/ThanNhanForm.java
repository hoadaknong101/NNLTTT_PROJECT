package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Window.Type;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JComboBox;
import javax.swing.JScrollBar;
import javax.swing.JTable;
import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JScrollPane;

public class ThanNhanForm {

	private JFrame frmDanhSchNgi;
	private JTextField txtMaNV;
	private JTextField txtTenTN;
	private JLabel lblNgaySinh;
	private JTextField txtNgaySinh;
	private JLabel lblQuanhe;
	private JTextField txtQuanhe;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ThanNhanForm window = new ThanNhanForm();
					window.frmDanhSchNgi.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public ThanNhanForm() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmDanhSchNgi = new JFrame();
		frmDanhSchNgi.setResizable(false);
		frmDanhSchNgi.setType(Type.UTILITY);
		frmDanhSchNgi.setTitle("Danh s\u00E1ch th\u00E2n nh\u00E2n");
		frmDanhSchNgi.setBounds(100, 100, 528, 511);
		frmDanhSchNgi.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmDanhSchNgi.getContentPane().setLayout(null);
		
		txtMaNV = new JTextField();
		txtMaNV.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtMaNV.setBounds(157, 11, 261, 20);
		frmDanhSchNgi.getContentPane().add(txtMaNV);
		txtMaNV.setColumns(10);
		
		JLabel lblMaNV = new JLabel("M\u00E3 Nh\u00E2n vi\u00EAn");
		lblMaNV.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblMaNV.setBounds(10, 14, 137, 17);
		frmDanhSchNgi.getContentPane().add(lblMaNV);
		
		JLabel lblTenTN = new JLabel("T\u00EAn th\u00E2n nh\u00E2n");
		lblTenTN.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTenTN.setBounds(10, 45, 137, 17);
		frmDanhSchNgi.getContentPane().add(lblTenTN);
		
		txtTenTN = new JTextField();
		txtTenTN.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtTenTN.setColumns(10);
		txtTenTN.setBounds(157, 42, 345, 20);
		frmDanhSchNgi.getContentPane().add(txtTenTN);
		
		JLabel lblPhai = new JLabel("Gi\u1EDBi t\u00EDnh");
		lblPhai.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblPhai.setBounds(10, 73, 137, 17);
		frmDanhSchNgi.getContentPane().add(lblPhai);
		
		lblNgaySinh = new JLabel("Ng\u00E0y sinh");
		lblNgaySinh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblNgaySinh.setBounds(10, 101, 137, 17);
		frmDanhSchNgi.getContentPane().add(lblNgaySinh);
		
		txtNgaySinh = new JTextField();
		txtNgaySinh.setToolTipText("\u0110\u1ECBnh d\u1EA1ng: YYYY-MM-DD");
		txtNgaySinh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtNgaySinh.setColumns(10);
		txtNgaySinh.setBounds(157, 98, 261, 20);
		frmDanhSchNgi.getContentPane().add(txtNgaySinh);
		
		lblQuanhe = new JLabel("Quan h\u1EC7");
		lblQuanhe.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblQuanhe.setBounds(10, 129, 137, 17);
		frmDanhSchNgi.getContentPane().add(lblQuanhe);
		
		txtQuanhe = new JTextField();
		txtQuanhe.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtQuanhe.setColumns(10);
		txtQuanhe.setBounds(157, 126, 261, 20);
		frmDanhSchNgi.getContentPane().add(txtQuanhe);
		
		JComboBox<String> cbPhai = new JComboBox<String>();
		cbPhai.addItem("nam");
		cbPhai.addItem("nu");
		cbPhai.addItem("khac");
		cbPhai.setFont(new Font("Times New Roman", Font.BOLD, 16));
		cbPhai.setBounds(157, 70, 137, 22);
		frmDanhSchNgi.getContentPane().add(cbPhai);
		
		JPanel panel = new JPanel();
		panel.setBounds(10, 157, 492, 261);
		frmDanhSchNgi.getContentPane().add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 492, 261);
		panel.add(scrollPane);
		
		JButton btnThem = new JButton("Th\u00EAm");
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnThem.setBounds(21, 429, 101, 29);
		frmDanhSchNgi.getContentPane().add(btnThem);
		
		JButton btnLuu = new JButton("L\u01B0u");
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnLuu.setBounds(143, 429, 101, 29);
		frmDanhSchNgi.getContentPane().add(btnLuu);
		
		JButton btnHuy = new JButton("H\u1EE7y");
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnHuy.setBounds(265, 429, 101, 29);
		frmDanhSchNgi.getContentPane().add(btnHuy);
		
		JButton btnXoa = new JButton("X\u00F3a");
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnXoa.setBounds(387, 429, 101, 29);
		frmDanhSchNgi.getContentPane().add(btnXoa);
	}
}
