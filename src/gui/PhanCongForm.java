package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Window.Type;
import javax.swing.JLabel;
import java.awt.BorderLayout;
import javax.swing.JTextField;
import java.awt.Font;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.JSeparator;
import javax.swing.SwingConstants;
import java.awt.Color;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class PhanCongForm {

	private JFrame frmBngPhnCng;
	private JTextField txtThoiGian;
	private JTextField txtTienThuong;
	private JTextField txtMaDa;
	private JTextField txtMaNV;
	private JTextField txtTenNV;
	private JTextField txtTenDA;
	private JTextField txtPhongDA;
	private JTextField txtPhongNV;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					PhanCongForm window = new PhanCongForm();
					window.frmBngPhnCng.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public PhanCongForm() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmBngPhnCng = new JFrame();
		frmBngPhnCng.getContentPane().setForeground(Color.BLUE);
		frmBngPhnCng.setType(Type.UTILITY);
		frmBngPhnCng.setTitle("B\u1EA3ng ph\u00E2n c\u00F4ng c\u00F4ng vi\u1EC7c");
		frmBngPhnCng.setBounds(100, 100, 651, 554);
		frmBngPhnCng.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JLabel lblNewLabel = new JLabel("Th\u1EDDi gian");
		lblNewLabel.setBounds(10, 14, 119, 17);
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 16));
		
		txtThoiGian = new JTextField();
		txtThoiGian.setBounds(139, 12, 172, 20);
		txtThoiGian.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtThoiGian.setColumns(10);
		
		txtTienThuong = new JTextField();
		txtTienThuong.setBounds(450, 12, 172, 20);
		txtTienThuong.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtTienThuong.setColumns(10);
		
		JLabel lblTinThng = new JLabel("Ti\u1EC1n th\u01B0\u1EDFng");
		lblTinThng.setBounds(321, 14, 119, 17);
		lblTinThng.setFont(new Font("Times New Roman", Font.BOLD, 16));
		
		txtMaDa = new JTextField();
		txtMaDa.setForeground(Color.BLUE);
		txtMaDa.setBounds(83, 81, 228, 20);
		txtMaDa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtMaDa.setColumns(10);
		
		JLabel lblThngTinD = new JLabel("TH\u00D4NG TIN D\u1EF0 \u00C1N");
		lblThngTinD.setForeground(Color.BLUE);
		lblThngTinD.setHorizontalAlignment(SwingConstants.CENTER);
		lblThngTinD.setBounds(10, 42, 301, 28);
		lblThngTinD.setFont(new Font("Times New Roman", Font.BOLD, 16));
		
		txtMaNV = new JTextField();
		txtMaNV.setForeground(new Color(0, 128, 128));
		txtMaNV.setBounds(394, 81, 228, 20);
		txtMaNV.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtMaNV.setColumns(10);
		
		JLabel lblThngTinNhn = new JLabel("TH\u00D4NG TIN NH\u00C2N VI\u00CAN");
		lblThngTinNhn.setForeground(new Color(0, 128, 128));
		lblThngTinNhn.setHorizontalAlignment(SwingConstants.CENTER);
		lblThngTinNhn.setBounds(321, 43, 301, 27);
		lblThngTinNhn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		frmBngPhnCng.getContentPane().setLayout(null);
		frmBngPhnCng.getContentPane().add(lblNewLabel);
		frmBngPhnCng.getContentPane().add(txtThoiGian);
		frmBngPhnCng.getContentPane().add(txtTienThuong);
		frmBngPhnCng.getContentPane().add(lblTinThng);
		frmBngPhnCng.getContentPane().add(txtMaDa);
		frmBngPhnCng.getContentPane().add(lblThngTinD);
		frmBngPhnCng.getContentPane().add(txtMaNV);
		frmBngPhnCng.getContentPane().add(lblThngTinNhn);
		
		JLabel lblMDa = new JLabel("M\u00E3 DA");
		lblMDa.setForeground(Color.BLUE);
		lblMDa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblMDa.setBounds(10, 83, 63, 17);
		frmBngPhnCng.getContentPane().add(lblMDa);
		
		JLabel lblMNv = new JLabel("M\u00E3 NV");
		lblMNv.setForeground(new Color(0, 128, 128));
		lblMNv.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblMNv.setBounds(321, 83, 63, 17);
		frmBngPhnCng.getContentPane().add(lblMNv);
		
		txtTenNV = new JTextField();
		txtTenNV.setForeground(new Color(0, 128, 128));
		txtTenNV.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtTenNV.setColumns(10);
		txtTenNV.setBounds(394, 112, 228, 20);
		frmBngPhnCng.getContentPane().add(txtTenNV);
		
		JLabel lblTnDa = new JLabel("T\u00EAn DA");
		lblTnDa.setForeground(Color.BLUE);
		lblTnDa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTnDa.setBounds(10, 114, 63, 17);
		frmBngPhnCng.getContentPane().add(lblTnDa);
		
		txtTenDA = new JTextField();
		txtTenDA.setForeground(Color.BLUE);
		txtTenDA.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtTenDA.setColumns(10);
		txtTenDA.setBounds(83, 112, 228, 20);
		frmBngPhnCng.getContentPane().add(txtTenDA);
		
		JLabel lblTnNv = new JLabel("T\u00EAn NV");
		lblTnNv.setForeground(new Color(0, 128, 128));
		lblTnNv.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTnNv.setBounds(321, 114, 63, 17);
		frmBngPhnCng.getContentPane().add(lblTnNv);
		
		JButton btnThem = new JButton("Th\u00EAm");
		btnThem.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnThem.setBounds(46, 475, 101, 29);
		frmBngPhnCng.getContentPane().add(btnThem);
		
		JButton btnLuu = new JButton("L\u01B0u");
		btnLuu.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnLuu.setBounds(193, 475, 101, 29);
		frmBngPhnCng.getContentPane().add(btnLuu);
		
		JButton btnHuy = new JButton("H\u1EE7y");
		btnHuy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnHuy.setBounds(340, 475, 101, 29);
		frmBngPhnCng.getContentPane().add(btnHuy);
		
		JButton btnXoa = new JButton("X\u00F3a");
		btnXoa.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnXoa.setBounds(487, 475, 101, 29);
		frmBngPhnCng.getContentPane().add(btnXoa);
		
		JPanel panel = new JPanel();
		panel.setLayout(null);
		panel.setBounds(10, 173, 612, 291);
		frmBngPhnCng.getContentPane().add(panel);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 612, 291);
		panel.add(scrollPane);
		
		JLabel lblTnDa_1 = new JLabel("Ph\u00F2ng tri\u1EC3n khai");
		lblTnDa_1.setForeground(Color.BLUE);
		lblTnDa_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTnDa_1.setBounds(10, 145, 156, 17);
		frmBngPhnCng.getContentPane().add(lblTnDa_1);
		
		txtPhongDA = new JTextField();
		txtPhongDA.setForeground(Color.BLUE);
		txtPhongDA.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtPhongDA.setColumns(10);
		txtPhongDA.setBounds(176, 143, 135, 20);
		frmBngPhnCng.getContentPane().add(txtPhongDA);
		
		JLabel lblTnNv_1 = new JLabel("Ph\u00F2ng c\u1EE7a nh\u00E2n vi\u00EAn");
		lblTnNv_1.setForeground(new Color(0, 128, 128));
		lblTnNv_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTnNv_1.setBounds(321, 145, 156, 17);
		frmBngPhnCng.getContentPane().add(lblTnNv_1);
		
		txtPhongNV = new JTextField();
		txtPhongNV.setForeground(new Color(0, 128, 128));
		txtPhongNV.setFont(new Font("Times New Roman", Font.BOLD, 16));
		txtPhongNV.setColumns(10);
		txtPhongNV.setBounds(487, 143, 135, 20);
		frmBngPhnCng.getContentPane().add(txtPhongNV);
	}
}
