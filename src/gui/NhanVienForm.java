package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JRadioButton;
import java.awt.Label;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTable;
import javax.swing.JScrollPane;
import java.awt.Color;
import javax.swing.ImageIcon;

public class NhanVienForm extends JPanel {
	private JTextField txtMaNhanVien;
	private JTextField txtHoTen;
	private JTextField txtNgaySinh;
	private JTextField txtDiaChi;
	private JTextField txtLuong;
	private JTextField txtMaNQL;
	private JTextField txtPhong;
	private JTable table;

	/**
	 * Create the panel.
	 */
	public NhanVienForm() {
		setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Qu\u1EA3n L\u00FD Nh\u00E2n Vi\u00EAn");
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 18));
		lblNewLabel.setBounds(20, 10, 305, 30);
		add(lblNewLabel);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(30, 50, 936, 13);
		add(separator);
		
		JLabel lblMNhnVin = new JLabel("M\u00E3 Nh\u00E2n Vi\u00EAn");
		lblMNhnVin.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblMNhnVin.setBounds(10, 73, 113, 30);
		add(lblMNhnVin);
		
		JLabel lblHVTn = new JLabel("H\u1ECD V\u00E0 T\u00EAn");
		lblHVTn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblHVTn.setBounds(10, 113, 113, 30);
		add(lblHVTn);
		
		JLabel lblNgySinh = new JLabel("Ng\u00E0y Sinh");
		lblNgySinh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblNgySinh.setBounds(10, 153, 113, 30);
		add(lblNgySinh);
		
		JLabel lblaCh = new JLabel("\u0110\u1ECBa Ch\u1EC9");
		lblaCh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblaCh.setBounds(10, 193, 113, 30);
		add(lblaCh);
		
		JLabel lblGiiTnh = new JLabel("Gi\u1EDBi T\u00EDnh");
		lblGiiTnh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblGiiTnh.setBounds(10, 233, 113, 30);
		add(lblGiiTnh);
		
		JLabel lblLng = new JLabel("L\u01B0\u01A1ng");
		lblLng.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblLng.setBounds(10, 273, 113, 30);
		add(lblLng);
		
		JLabel lblMNgiQun = new JLabel("M\u00E3 Ng\u01B0\u1EDDi Qu\u1EA3n L\u00FD");
		lblMNgiQun.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblMNgiQun.setBounds(357, 153, 146, 30);
		add(lblMNgiQun);
		
		txtMaNhanVien = new JTextField();
		txtMaNhanVien.setBounds(166, 75, 181, 30);
		add(txtMaNhanVien);
		txtMaNhanVien.setColumns(10);
		
		txtHoTen = new JTextField();
		txtHoTen.setColumns(10);
		txtHoTen.setBounds(166, 113, 500, 30);
		add(txtHoTen);
		
		txtNgaySinh = new JTextField();
		txtNgaySinh.setColumns(10);
		txtNgaySinh.setBounds(166, 153, 181, 30);
		add(txtNgaySinh);
		
		txtDiaChi = new JTextField();
		txtDiaChi.setColumns(10);
		txtDiaChi.setBounds(166, 193, 500, 30);
		add(txtDiaChi);
		
		txtLuong = new JTextField();
		txtLuong.setColumns(10);
		txtLuong.setBounds(166, 273, 500, 30);
		add(txtLuong);
		
		txtMaNQL = new JTextField();
		txtMaNQL.setColumns(10);
		txtMaNQL.setBounds(495, 153, 171, 30);
		add(txtMaNQL);
		
		JLabel lblPhng = new JLabel("Ph\u00F2ng");
		lblPhng.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblPhng.setBounds(357, 73, 64, 30);
		add(lblPhng);
		
		txtPhong = new JTextField();
		txtPhong.setColumns(10);
		txtPhong.setBounds(495, 75, 171, 30);
		add(txtPhong);
		
		JPanel panel = new JPanel();
		panel.setBounds(706, 73, 221, 299);
		add(panel);
		panel.setLayout(null);
		
		JButton btnNewButton = new JButton("Ch\u1ECDn \u1EA2nh");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnNewButton.setBounds(63, 242, 105, 50);
		panel.add(btnNewButton);
		
		JLabel lblNewLabel_1 = new JLabel("New label");
		lblNewLabel_1.setIcon(new ImageIcon("D:\\2.jpg"));
		lblNewLabel_1.setBounds(10, 10, 201, 228);
		panel.add(lblNewLabel_1);
		
		JRadioButton rbNam = new JRadioButton("Nam");
		rbNam.setFont(new Font("Times New Roman", Font.BOLD, 16));
		rbNam.setBounds(166, 233, 113, 30);
		add(rbNam);
		
		JRadioButton rbNu = new JRadioButton("N\u1EEF");
		rbNu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		rbNu.setBounds(281, 233, 113, 30);
		add(rbNu);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBounds(10, 313, 686, 266);
		add(panel_1);
		panel_1.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 686, 266);
		panel_1.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		
		JButton btnThem = new JButton("Th\u00EAm");
		btnThem.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_add_32px.png"));
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnThem.setBounds(706, 382, 115, 50);
		add(btnThem);
		
		JButton btnHuy = new JButton("H\u1EE7y");
		btnHuy.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_cancel_32px.png"));
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnHuy.setBounds(831, 382, 115, 50);
		add(btnHuy);
		
		JButton btnLuu = new JButton("L\u01B0u");
		btnLuu.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_save_32px.png"));
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnLuu.setBounds(706, 442, 115, 50);
		add(btnLuu);
		
		JButton btnXoa = new JButton("X\u00F3a");
		btnXoa.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_delete_32px.png"));
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnXoa.setBounds(831, 442, 115, 50);
		add(btnXoa);

	}
}
