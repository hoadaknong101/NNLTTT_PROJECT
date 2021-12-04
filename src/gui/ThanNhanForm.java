package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.JScrollPane;
import javax.swing.JButton;
import javax.swing.ImageIcon;

public class ThanNhanForm extends JPanel {
	private JTextField txtTenTN;
	private JTextField txtMaNV;
	private JTextField txtNgaySinh;
	private JTextField txtQuanhe;

	/**
	 * Create the panel.
	 */
	public ThanNhanForm() {
		setLayout(null);
		
		JLabel lblThngTinThn = new JLabel("Th\u00F4ng tin th\u00E2n nh\u00E2n c\u1EE7a nh\u00E2n vi\u00EAn");
		lblThngTinThn.setFont(new Font("Times New Roman", Font.BOLD, 18));
		lblThngTinThn.setBounds(10, 11, 305, 30);
		add(lblThngTinThn);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 52, 936, 13);
		add(separator);
		
		JLabel lblTnThnNhn = new JLabel("T\u00EAn th\u00E2n nh\u00E2n");
		lblTnThnNhn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblTnThnNhn.setBounds(10, 76, 113, 30);
		add(lblTnThnNhn);
		
		JLabel lblThiGian_1_1 = new JLabel("M\u00E3 nh\u00E2n vi\u00EAn");
		lblThiGian_1_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblThiGian_1_1.setBounds(10, 118, 113, 30);
		add(lblThiGian_1_1);
		
		JLabel lblThiGian_1_2 = new JLabel("Gi\u1EDBi t\u00EDnh");
		lblThiGian_1_2.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblThiGian_1_2.setBounds(10, 158, 113, 30);
		add(lblThiGian_1_2);
		
		JLabel lblNgySinh = new JLabel("Ng\u00E0y sinh");
		lblNgySinh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblNgySinh.setBounds(10, 199, 113, 30);
		add(lblNgySinh);
		
		JLabel lblThiGian_1_1_1 = new JLabel("Quan h\u1EC7");
		lblThiGian_1_1_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		lblThiGian_1_1_1.setBounds(10, 241, 113, 30);
		add(lblThiGian_1_1_1);
		
		txtTenTN = new JTextField();
		txtTenTN.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtTenTN.setColumns(10);
		txtTenTN.setBounds(154, 76, 388, 30);
		add(txtTenTN);
		
		txtMaNV = new JTextField();
		txtMaNV.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtMaNV.setColumns(10);
		txtMaNV.setBounds(154, 118, 388, 30);
		add(txtMaNV);
		
		txtNgaySinh = new JTextField();
		txtNgaySinh.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtNgaySinh.setColumns(10);
		txtNgaySinh.setBounds(154, 199, 388, 30);
		add(txtNgaySinh);
		
		txtQuanhe = new JTextField();
		txtQuanhe.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtQuanhe.setColumns(10);
		txtQuanhe.setBounds(154, 241, 388, 30);
		add(txtQuanhe);
		
		JComboBox cbGioiTinh = new JComboBox();
		cbGioiTinh.setFont(new Font("Times New Roman", Font.BOLD, 14));
		cbGioiTinh.setBounds(154, 163, 388, 22);
		add(cbGioiTinh);
		
		JPanel panel = new JPanel();
		panel.setLayout(null);
		panel.setBounds(10, 282, 936, 295);
		add(panel);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 936, 295);
		panel.add(scrollPane);
		
		JButton btnThem = new JButton("Thêm");
		btnThem.setIcon(new ImageIcon(ThanNhanForm.class.getResource("/images/icons8_add_32px.png")));
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnThem.setBounds(631, 76, 115, 50);
		add(btnThem);
		
		JButton btnLuu = new JButton("Lưu");
		btnLuu.setIcon(new ImageIcon(ThanNhanForm.class.getResource("/images/icons8_save_32px.png")));
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnLuu.setBounds(631, 154, 115, 50);
		add(btnLuu);
		
		JButton btnXoa = new JButton("Xóa");
		btnXoa.setIcon(new ImageIcon(ThanNhanForm.class.getResource("/images/icons8_delete_32px.png")));
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnXoa.setBounds(806, 154, 115, 50);
		add(btnXoa);
		
		JButton btnHuy = new JButton("Hủy");
		btnHuy.setIcon(new ImageIcon(ThanNhanForm.class.getResource("/images/icons8_cancel_32px.png")));
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnHuy.setBounds(806, 76, 115, 50);
		add(btnHuy);

	}
}
