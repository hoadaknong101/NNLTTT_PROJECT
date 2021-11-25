package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JTable;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JScrollPane;
import javax.swing.ImageIcon;

public class PhongBanForm extends JPanel {
	private JTextField txtMaPhongBan;
	private JTextField txtTenPhongBan;
	private JTextField txtTruongPhong;
	private JTextField txtNgayNhanChuc;
	private JTextField txtDiaDiem;
	private JTable table;

	/**
	 * Create the panel.
	 */
	public PhongBanForm() {
		setLayout(null);
		
		JLabel lblQunLPhng = new JLabel("Qu\u1EA3n L\u00FD Ph\u00F2ng Ban");
		lblQunLPhng.setFont(new Font("Times New Roman", Font.BOLD, 18));
		lblQunLPhng.setBounds(10, 10, 305, 30);
		add(lblQunLPhng);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 46, 936, 13);
		add(separator);
		
		JLabel lblMPhngBan = new JLabel("M\u00E3 Ph\u00F2ng Ban");
		lblMPhngBan.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblMPhngBan.setBounds(10, 69, 113, 30);
		add(lblMPhngBan);
		
		txtMaPhongBan = new JTextField();
		txtMaPhongBan.setColumns(10);
		txtMaPhongBan.setBounds(133, 71, 129, 30);
		add(txtMaPhongBan);
		
		JLabel lblTnPhngBan = new JLabel("T\u00EAn Ph\u00F2ng Ban");
		lblTnPhngBan.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTnPhngBan.setBounds(301, 69, 113, 30);
		add(lblTnPhngBan);
		
		txtTenPhongBan = new JTextField();
		txtTenPhongBan.setColumns(10);
		txtTenPhongBan.setBounds(427, 71, 181, 30);
		add(txtTenPhongBan);
		
		txtTruongPhong = new JTextField();
		txtTruongPhong.setColumns(10);
		txtTruongPhong.setBounds(133, 111, 475, 30);
		add(txtTruongPhong);
		
		JLabel lblTrngPhng = new JLabel("Tr\u01B0\u1EDFng Ph\u00F2ng\r\n");
		lblTrngPhng.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTrngPhng.setBounds(10, 109, 113, 30);
		add(lblTrngPhng);
		
		JLabel lblNgyNhnChc = new JLabel("Ng\u00E0y Nh\u1EADn Ch\u1EE9c");
		lblNgyNhnChc.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblNgyNhnChc.setBounds(10, 151, 129, 30);
		add(lblNgyNhnChc);
		
		txtNgayNhanChuc = new JTextField();
		txtNgayNhanChuc.setColumns(10);
		txtNgayNhanChuc.setBounds(133, 153, 475, 30);
		add(txtNgayNhanChuc);
		
		JLabel lblaim = new JLabel("\u0110\u1ECBa \u0110i\u1EC3m");
		lblaim.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblaim.setBounds(10, 191, 129, 30);
		add(lblaim);
		
		txtDiaDiem = new JTextField();
		txtDiaDiem.setColumns(10);
		txtDiaDiem.setBounds(133, 193, 475, 30);
		add(txtDiaDiem);
		
		JPanel panel = new JPanel();
		panel.setBounds(10, 231, 936, 324);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 936, 324);
		panel.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		
		JButton btnXoa = new JButton("X\u00F3a");
		btnXoa.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_delete_32px.png"));
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnXoa.setBounds(783, 150, 115, 50);
		add(btnXoa);
		
		JButton btnLuu = new JButton("L\u01B0u");
		btnLuu.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_save_32px.png"));
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnLuu.setBounds(658, 150, 115, 50);
		add(btnLuu);
		
		JButton btnThem = new JButton("Th\u00EAm");
		btnThem.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_add_32px.png"));
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnThem.setBounds(658, 90, 115, 50);
		add(btnThem);
		
		JButton btnHuy = new JButton("H\u1EE7y");
		btnHuy.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_cancel_32px.png"));
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnHuy.setBounds(783, 90, 115, 50);
		add(btnHuy);

	}
}
