package gui;

import java.awt.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

import bean.NhanVien;
import dao.NhanVienDAO;

import java.awt.event.ActionListener;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.awt.event.ActionEvent;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;

import javax.imageio.ImageIO;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class NhanVienForm extends JPanel {
	private JTextField txtMaNhanVien;
	private JTextField txtHoTen;
	private JTextField txtNgaySinh;
	private JTextField txtDiaChi;
	private JTextField txtLuong;
	private JTextField txtMaNQL;
	private JTextField txtPhong;
	private JLabel lblAvatar;
	private JTable table;
	private JScrollPane scrollPane;
	private JButton btnThem;
	private JButton btnLuu;
	private JButton btnHuy;
	private JButton btnXoa;

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
		
		JButton btnChonAnh = new JButton("Ch\u1ECDn \u1EA2nh");
		btnChonAnh.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnChonAnh.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				JFileChooser f =new JFileChooser ("D:\\");
				f.setDialogTitle("Mở file");
				f.showOpenDialog(null);
				try {
					File ftenanh = f.getSelectedFile();
					String path = ftenanh.getAbsolutePath();
					//System.out.print(path);
					if (path != "") {
						BufferedImage img = ImageIO.read(ftenanh);
						Image dimg = img.getScaledInstance(lblAvatar.getWidth(), lblAvatar.getHeight(),
						        Image.SCALE_SMOOTH);
						ImageIcon icon = new ImageIcon(dimg);
						lblAvatar.setIcon(icon);
					}
				} catch (Exception err) {
					JOptionPane.showMessageDialog(btnChonAnh, "Không có ảnh được chọn!");
				}
			}
		});
		btnChonAnh.setBounds(63, 242, 105, 50);
		panel.add(btnChonAnh);
		
		lblAvatar = new JLabel("\u1EA2nh");
		lblAvatar.setIcon(new ImageIcon("D:/2.jpg"));
		lblAvatar.setBounds(10, 10, 201, 228);
		panel.add(lblAvatar);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBounds(10, 313, 686, 266);
		add(panel_1);
		panel_1.setLayout(null);
		
		JComboBox<String> cbGender = new JComboBox<String>();
		cbGender.addItem("nam");
		cbGender.addItem("nu");
		cbGender.addItem("khac");
		cbGender.setBounds(166, 238, 181, 22);
		add(cbGender);
		
		scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 686, 266);
		panel_1.add(scrollPane);
		
		table = new JTable();
		table.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int i = table.getSelectedRow();
				txtMaNhanVien.setText(table.getValueAt(i, 0).toString());
				txtHoTen.setText(table.getValueAt(i, 1).toString());
				txtDiaChi.setText(table.getValueAt(i, 3).toString());
				txtLuong.setText(table.getValueAt(i, 5).toString());
				txtMaNQL.setText(table.getValueAt(i, 6).toString());
				txtNgaySinh.setText(table.getValueAt(i, 2).toString());
				txtPhong.setText(table.getValueAt(i, 7).toString());
				String gender = table.getValueAt(i, 4).toString();
				cbGender.setSelectedItem(gender);
				try {
					ImageIcon img = (ImageIcon)table.getValueAt(i, 8);
					lblAvatar.setIcon(img);
				} catch (Exception e2) {
					lblAvatar.setIcon(null);
				}
			}
		});
		LoadData();
		scrollPane.setViewportView(table);
		
		btnThem = new JButton("Th\u00EAm");
		btnThem.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				ClearContent();
				EnableControl();
				table.setEnabled(false);
			}
		});
		btnThem.setIcon(new ImageIcon(getClass().getResource("/images/icons8_add_32px.png")));
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnThem.setBounds(706, 382, 115, 50);
		add(btnThem);
		
		btnHuy = new JButton("H\u1EE7y");
		btnHuy.setEnabled(false);
		btnHuy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				DisableControl();
				table.setEnabled(true);
			}
		});
		btnHuy.setIcon(new ImageIcon(getClass().getResource("/images/icons8_cancel_32px.png")));
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnHuy.setBounds(831, 442, 115, 50);
		add(btnHuy);
		
		btnLuu = new JButton("L\u01B0u");
		btnLuu.setEnabled(false);
		btnLuu.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				table.setEnabled(true);
			}
		});
		btnLuu.setIcon(new ImageIcon(getClass().getResource("/images/icons8_save_32px.png")));
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnLuu.setBounds(831, 383, 115, 50);
		add(btnLuu);
		
		btnXoa = new JButton("X\u00F3a");
		btnXoa.setEnabled(false);
		btnXoa.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				ClearContent();
				table.setEnabled(true);
			}
		});
		btnXoa.setIcon(new ImageIcon(getClass().getResource("/images/icons8_delete_32px.png")));
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnXoa.setBounds(706, 443, 115, 50);
		add(btnXoa);
	}
	
	private void EnableControl() {
		btnLuu.setEnabled(true);
		btnHuy.setEnabled(true);
		btnXoa.setEnabled(true);
	}
	
	private void DisableControl() {
		btnLuu.setEnabled(false);
		btnHuy.setEnabled(false);
		btnXoa.setEnabled(false);
	}
	
	private void ClearContent() {
		txtMaNhanVien.setText("");
		txtHoTen.setText("");
		txtNgaySinh.setText("");
		txtDiaChi.setText("");
		txtLuong.setText("");
		txtMaNQL.setText("");
		txtPhong.setText("");
		lblAvatar.setIcon(null);
	}
	
	private void LoadData() {
		String[] labels = {"Mã NV", "Họ tên", "Ngày sinh", "Địa chỉ", "Giới tính", "Lương", "Mã NQL", "Phòng", "Image"};
		DefaultTableModel tbModel = new DefaultTableModel(labels, 0);
		String sql = "select * from nhanvien";
		ArrayList<NhanVien> nhanViens = NhanVienDAO.LayThongTinNhanVien(sql);
		try {
			for (NhanVien nhanVien : nhanViens) {
				Object[] row = {nhanVien.getMaNhanVien(),
								nhanVien.getHoTen(),
								nhanVien.getNgaySinh(),
								nhanVien.getDiaChi(),
								nhanVien.getPhai(),
								nhanVien.getLuong(),
								nhanVien.getMaNQL(),
								nhanVien.getMaPB(),
								nhanVien.getImage()};
				tbModel.addRow(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		table.setModel(tbModel);
	}
	
	private static byte[] ImageIconToByteArray(ImageIcon icon) {
		try {
		    ByteArrayOutputStream bos = new ByteArrayOutputStream();
		    ImageIO.write((RenderedImage) icon, "jpg", bos );
		    byte [] data = bos.toByteArray();
		    return data;
		} catch (Exception ex) {
		    ex.printStackTrace();
		}
		return null;
	}
	
	private static ImageIcon ByteArrayToImageIcon(byte[] data) {
		try {
			System.out.println(data);
			ByteArrayInputStream bis = new ByteArrayInputStream(data);
		    BufferedImage img = ImageIO.read(bis);
//		    Image dimg = img.getScaledInstance(lblAvatar.getWidth(), lblAvatar.getHeight(),
//			        Image.SCALE_SMOOTH);
			ImageIcon icon = new ImageIcon(img);  
			return icon;
		} catch (Exception e) {}
		return null;
	}
}
