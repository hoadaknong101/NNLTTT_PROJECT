package gui;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import java.awt.Font;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JSeparator;
import javax.swing.ImageIcon;
import javax.swing.JTabbedPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Window.Type;

public class MainForm {
	private NhanVienForm mStaffPanel;
	private PhongBanForm mRoomPanel;
	private DuAnForm mProjectPanel;
	private JFrame frame;

	/**
	 * Launch the application.
	 */
//	public static void main(String[] args) {
//		EventQueue.invokeLater(new Runnable() {
//			public void run() {
//				try {
//					MainForm window = new MainForm();
//					window.frame.setLocationRelativeTo(null);
//					window.frame.setVisible(true);
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		});
//	}

	/**
	 * Create the application.
	 */
	public MainForm() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setType(Type.UTILITY);
		frame.setBounds(100, 100, 1000, 700);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JMenuBar menuBar = new JMenuBar();
		menuBar.setBounds(0, 0, 986, 30);
		menuBar.setFont(new Font("Times New Roman", Font.BOLD, 16));
		frame.getContentPane().add(menuBar);
		
		JMenu mnHeThong = new JMenu("H\u1EC7 th\u1ED1ng");
		mnHeThong.setFont(new Font("Times New Roman", Font.BOLD, 16));
		menuBar.add(mnHeThong);
		
		JMenuItem mntmDangXuat = new JMenuItem("\u0110\u0103ng xu\u1EA5t");
		mntmDangXuat.setIcon(new ImageIcon(getClass().getResource("/images/icons8_Logout_32px.png")));
		mntmDangXuat.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnHeThong.add(mntmDangXuat);
		
		JSeparator separator = new JSeparator();
		mnHeThong.add(separator);
		
		JMenuItem mntmThoat = new JMenuItem("Tho\u00E1t");
		mntmThoat.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (JOptionPane.showConfirmDialog(mntmThoat, "Bạn muốn tắt ứng dụng?", "Thông báo", 
				        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE) == JOptionPane.YES_OPTION){
						System.exit(0);
					}
			}
		});
		mntmThoat.setIcon(new ImageIcon(getClass().getResource("/images/icons8_cancel_32px.png")));
		mntmThoat.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnHeThong.add(mntmThoat);
		
		JMenu mnQuanLy = new JMenu("Qu\u1EA3n L\u00FD");
		mnQuanLy.setFont(new Font("Times New Roman", Font.BOLD, 16));
		menuBar.add(mnQuanLy);
		
		JMenuItem mntmPhanCong = new JMenuItem("Ph\u00E2n c\u00F4ng & L\u01B0\u01A1ng");
		mntmPhanCong.setIcon(new ImageIcon(getClass().getResource("/images/icons8_salary_male_32px.png")));
		mntmPhanCong.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnQuanLy.add(mntmPhanCong);
		
		JMenu mnTroGiup = new JMenu("Tr\u1EE3 Gi\u00FAp");
		mnTroGiup.setFont(new Font("Times New Roman", Font.BOLD, 16));
		menuBar.add(mnTroGiup);
		
		JMenuItem mntmThanhVien = new JMenuItem("Nhóm phát triển");
		mntmThanhVien.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnTroGiup.add(mntmThanhVien);
		
		JSeparator separator_2 = new JSeparator();
		mnTroGiup.add(separator_2);
		
		JMenuItem mntmCongTac = new JMenuItem("Cộng tác");
		mntmCongTac.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnTroGiup.add(mntmCongTac);
		
		JTabbedPane tpPane = new JTabbedPane(JTabbedPane.TOP);
		tpPane.setBounds(10, 40, 966, 613);
		frame.getContentPane().add(tpPane);
		
		JMenuItem mntmQuanLyNhanVien = new JMenuItem("Qu\u1EA3n L\u00FD Nh\u00E2n Vi\u00EAn");
		mntmQuanLyNhanVien.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(mStaffPanel==null) {
					mStaffPanel = new NhanVienForm();
					//ImageIcon icon =new ImageIcon(getClass().getResource("edu/poly"))
					tpPane.addTab("Quản Lý Nhân Viên",mStaffPanel);
					tpPane.setSelectedComponent(mStaffPanel);
				}
				tpPane.setSelectedComponent(mStaffPanel);
				
				}
		});
		
		JSeparator separator_5 = new JSeparator();
		mnQuanLy.add(separator_5);
		mntmQuanLyNhanVien.setIcon(new ImageIcon(getClass().getResource("/images/icons8_name_tag_32px.png")));
		mntmQuanLyNhanVien.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnQuanLy.add(mntmQuanLyNhanVien);
		JMenuItem mntmQuanLyPhongBan = new JMenuItem("Qu\u1EA3n L\u00FD Ph\u00F2ng Ban");
		mntmQuanLyPhongBan.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(mRoomPanel==null) {
					mRoomPanel = new PhongBanForm();
					//ImageIcon icon =new ImageIcon(getClass().getResource("edu/poly"))
					tpPane.addTab("Quản Lý Phòng Ban",mRoomPanel);
					tpPane.setSelectedComponent(mRoomPanel);
				}
				tpPane.setSelectedComponent(mRoomPanel);
				
				}
		});
		
		JSeparator separator_1 = new JSeparator();
		mnQuanLy.add(separator_1);
		mntmQuanLyPhongBan.setIcon(new ImageIcon(getClass().getResource("/images/icons8_room_32px.png")));
		mntmQuanLyPhongBan.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnQuanLy.add(mntmQuanLyPhongBan);
		JMenuItem mntmQuanLyDuAn = new JMenuItem("Qu\u1EA3n L\u00FD D\u1EF1 \u00C1n");
		mntmQuanLyDuAn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(mProjectPanel==null) {
					mProjectPanel = new DuAnForm();
					//ImageIcon icon =new ImageIcon(getClass().getResource("edu/poly"))
					tpPane.addTab("Quản Lý Dự Án",mProjectPanel);
					tpPane.setSelectedComponent(mProjectPanel);
				}
				tpPane.setSelectedComponent(mProjectPanel);
			}
		});
		
		JSeparator separator_3 = new JSeparator();
		mnQuanLy.add(separator_3);
		mntmQuanLyDuAn.setIcon(new ImageIcon(getClass().getResource("/images/icons8_project_32px.png")));
		mntmQuanLyDuAn.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnQuanLy.add(mntmQuanLyDuAn);
	}
}
