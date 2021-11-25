package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.ImageIcon;
import javax.swing.JTable;
import javax.swing.JScrollPane;

public class DuAnForm extends JPanel {
	private JTextField txtMaDuAn;
	private JTextField txtTenDuAn;
	private JTextField txtDiaDiem;
	private JTextField txtPhong;
	private JTable table;

	/**
	 * Create the panel.
	 */
	public DuAnForm() {
		setLayout(null);
		
		JLabel lblQunLD = new JLabel("Qu\u1EA3n L\u00FD D\u1EF1 \u00C1n");
		lblQunLD.setBounds(10, 10, 305, 30);
		lblQunLD.setFont(new Font("Times New Roman", Font.BOLD, 18));
		add(lblQunLD);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 50, 936, 13);
		add(separator);
		
		JLabel lblMDn = new JLabel("M\u00E3 D\u1EF1 \u00C1n");
		lblMDn.setBounds(10, 73, 113, 30);
		lblMDn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblMDn);
		
		txtMaDuAn = new JTextField();
		txtMaDuAn.setBounds(118, 75, 129, 30);
		txtMaDuAn.setColumns(10);
		add(txtMaDuAn);
		
		JLabel lblTnDn = new JLabel("T\u00EAn D\u1EF1 \u00C1n");
		lblTnDn.setBounds(273, 73, 113, 30);
		lblTnDn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblTnDn);
		
		txtTenDuAn = new JTextField();
		txtTenDuAn.setBounds(383, 75, 251, 30);
		txtTenDuAn.setColumns(10);
		add(txtTenDuAn);
		
		JLabel lblaim = new JLabel("\u0110\u1ECBa \u0110i\u1EC3m");
		lblaim.setBounds(10, 113, 95, 30);
		lblaim.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblaim);
		
		txtDiaDiem = new JTextField();
		txtDiaDiem.setBounds(118, 115, 516, 30);
		txtDiaDiem.setColumns(10);
		add(txtDiaDiem);
		
		JLabel lblPhng = new JLabel("Ph\u00F2ng");
		lblPhng.setBounds(10, 153, 87, 30);
		lblPhng.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblPhng);
		
		txtPhong = new JTextField();
		txtPhong.setBounds(118, 155, 516, 30);
		txtPhong.setColumns(10);
		add(txtPhong);
		
		JButton btnThem = new JButton("Th\u00EAm");
		btnThem.setBounds(672, 73, 115, 50);
		btnThem.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_add_32px.png"));
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnThem);
		
		JButton btnHuy = new JButton("H\u1EE7y");
		btnHuy.setBounds(797, 73, 115, 50);
		btnHuy.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_cancel_32px.png"));
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnHuy);
		
		JButton btnXoa = new JButton("X\u00F3a");
		btnXoa.setBounds(797, 133, 115, 50);
		btnXoa.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_delete_32px.png"));
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnXoa);
		
		JButton btnLuu = new JButton("L\u01B0u");
		btnLuu.setBounds(672, 133, 115, 50);
		btnLuu.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_save_32px.png"));
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnLuu);
		
		JPanel panel = new JPanel();
		panel.setBounds(10, 193, 936, 344);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 936, 344);
		panel.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);

	}
}
