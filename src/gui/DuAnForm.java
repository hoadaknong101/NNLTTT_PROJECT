package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

import bean.DuAn;
import dao.DuAnDAO;

import javax.swing.JButton;
import javax.swing.ImageIcon;
import javax.swing.JTable;
import javax.swing.JScrollPane;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class DuAnForm extends JPanel {
	private static final long serialVersionUID = 1L;
	private JTextField txtMaDuAn;
	private JTextField txtTenDuAn;
	private JTextField txtDiaDiem;
	private JTextField txtPhong;
	private JTable table;
	private JButton btnThem;
	private JButton btnLuu;
	private JButton btnHuy;
	private JButton btnXoa;
	private boolean flagThem = false;

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
		
		JPanel panel = new JPanel();
		panel.setBounds(10, 193, 936, 344);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 0, 936, 344);
		panel.add(scrollPane);
		
		table = new JTable();
		table.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				flagThem = false;
				int i = table.getSelectedRow();
				txtMaDuAn.setText(table.getValueAt(i, 0).toString());
				txtTenDuAn.setText(table.getValueAt(i, 1).toString());
				txtDiaDiem.setText(table.getValueAt(i, 2).toString());
				txtPhong.setText(table.getValueAt(i, 3).toString());
				EnableControl();
			}
		});
		LoadData();
		scrollPane.setViewportView(table);
		
		JLabel lblMDn = new JLabel("M\u00E3 D\u1EF1 \u00C1n");
		lblMDn.setBounds(10, 73, 113, 30);
		lblMDn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblMDn);
		
		txtMaDuAn = new JTextField();
		txtMaDuAn.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtMaDuAn.setBounds(118, 75, 129, 30);
		txtMaDuAn.setColumns(10);
		add(txtMaDuAn);
		
		JLabel lblTnDn = new JLabel("T\u00EAn D\u1EF1 \u00C1n");
		lblTnDn.setBounds(273, 73, 113, 30);
		lblTnDn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblTnDn);
		
		txtTenDuAn = new JTextField();
		txtTenDuAn.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtTenDuAn.setBounds(383, 75, 251, 30);
		txtTenDuAn.setColumns(10);
		add(txtTenDuAn);
		
		JLabel lblaim = new JLabel("\u0110\u1ECBa \u0110i\u1EC3m");
		lblaim.setBounds(10, 113, 95, 30);
		lblaim.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblaim);
		
		txtDiaDiem = new JTextField();
		txtDiaDiem.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtDiaDiem.setBounds(118, 115, 516, 30);
		txtDiaDiem.setColumns(10);
		add(txtDiaDiem);
		
		JLabel lblPhng = new JLabel("Ph\u00F2ng");
		lblPhng.setBounds(10, 153, 87, 30);
		lblPhng.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(lblPhng);
		
		txtPhong = new JTextField();
		txtPhong.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		txtPhong.setBounds(118, 155, 516, 30);
		txtPhong.setColumns(10);
		add(txtPhong);
		
		btnThem = new JButton("Th\u00EAm");
		btnThem.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				flagThem = true;
				ClearContent();
				EnableControl();
				btnXoa.setEnabled(false);
			}
		});
		btnThem.setBounds(672, 73, 115, 50);
		btnThem.setIcon(new ImageIcon(getClass().getResource("/images/icons8_add_32px.png")));
		btnThem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnThem);
		
		btnHuy = new JButton("H\u1EE7y");
		btnHuy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				ClearContent();
				DisableControl();
				flagThem = false;
			}
		});
		btnHuy.setBounds(797, 73, 115, 50);
		btnHuy.setIcon(new ImageIcon(getClass().getResource("/images/icons8_cancel_32px.png")));
		btnHuy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnHuy);
		
		btnXoa = new JButton("X\u00F3a");
		btnXoa.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int id = Integer.valueOf(txtMaDuAn.getText());
				if(JOptionPane.showConfirmDialog(btnXoa, "Bạn có chắc xóa thông tin dự án " + txtMaDuAn.getText() + "?") == JOptionPane.YES_OPTION) {
					if(DuAnDAO.xoaDuAn(id)) {
						JOptionPane.showMessageDialog(btnXoa, "Xóa thông tin dự án thành công!");
						LoadData();
					}
					else {
						JOptionPane.showMessageDialog(btnXoa, "Không thể xóa thông tin!");
					}
				}
				ClearContent();
				DisableControl();
				flagThem = false;
			}
		});
		btnXoa.setBounds(797, 133, 115, 50);
		btnXoa.setIcon(new ImageIcon(getClass().getResource("/images/icons8_delete_32px.png")));
		btnXoa.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnXoa);
		
		btnLuu = new JButton("L\u01B0u");
		btnLuu.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				DuAn da = new DuAn(Integer.valueOf(txtMaDuAn.getText()),
								   txtTenDuAn.getText(),
								   txtDiaDiem.getText(),
								   Integer.valueOf(txtPhong.getText()));
				if(flagThem) {
					if(DuAnDAO.themDuAn(da)) {
						JOptionPane.showMessageDialog(btnLuu, "Đã thêm thông tin dự án mới!");
						LoadData();
					}
					else {
						JOptionPane.showMessageDialog(btnLuu, "Vui lòng kiểm tra lại thông tin!");
						return;
					}	
				}
				else {
					if(DuAnDAO.suaDuAn(da)) {
						JOptionPane.showMessageDialog(btnLuu, "Đã sửa thông tin dự án!");
						LoadData();
					}
					else {
						JOptionPane.showMessageDialog(btnLuu, "Vui lòng kiểm tra lại thông tin!");
						return;
					}
				}
				ClearContent();
				DisableControl();
				flagThem = false;
			}
		});
		btnLuu.setBounds(672, 133, 115, 50);
		btnLuu.setIcon(new ImageIcon(getClass().getResource("/images/icons8_save_32px.png")));
		btnLuu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		add(btnLuu);

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
	
	private void LoadData() {
		String[] labels = {"Mã dự án", "Tên dự án", "Địa điểm", "Phòng"};
		DefaultTableModel model = new DefaultTableModel(labels, 0);
		ArrayList<DuAn> danhSach = DuAnDAO.LayThongTinDuAn();
		try {
			for(DuAn da : danhSach) {
				Object[] row = {da.getMaDuAn(),
								da.getTenDuAn(),
								da.getDiaDiem(),
								da.getPhong()};
				model.addRow(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		table.setModel(model);
	}
	
	private void ClearContent() {
		txtMaDuAn.setText("");
		txtTenDuAn.setText("");
		txtPhong.setText("");
		txtDiaDiem.setText("");
	}
}
