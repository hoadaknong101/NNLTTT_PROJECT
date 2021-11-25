package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import java.awt.Font;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JSeparator;
import javax.swing.ImageIcon;
import javax.swing.JToolBar;
import javax.swing.JButton;
import javax.swing.JTabbedPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class MainForm {
	private NhanVienForm mStaffPanel;
	private PhongBanForm mRoomPanel;
	private DuAnForm mProjectPanel;
	private JFrame frame;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainForm window = new MainForm();
					window.frame.setLocationRelativeTo(null);
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
	public MainForm() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 1000, 700);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JMenuBar menuBar = new JMenuBar();
		menuBar.setBounds(0, 0, 986, 30);
		menuBar.setFont(new Font("Times New Roman", Font.BOLD, 16));
		frame.getContentPane().add(menuBar);
		
		JMenu mnNewMenu = new JMenu("H\u1EC7 th\u1ED1ng");
		mnNewMenu.setFont(new Font("Times New Roman", Font.BOLD, 16));
		menuBar.add(mnNewMenu);
		
		JMenuItem mntmNewMenuItem = new JMenuItem("\u0110\u0103ng xu\u1EA5t");
		mntmNewMenuItem.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_Logout_32px.png"));
		mntmNewMenuItem.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu.add(mntmNewMenuItem);
		
		JSeparator separator = new JSeparator();
		mnNewMenu.add(separator);
		
		JMenuItem mntmNewMenuItem_1 = new JMenuItem("Tho\u00E1t");
		mntmNewMenuItem_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
		});
		mntmNewMenuItem_1.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_cancel_32px.png"));
		mntmNewMenuItem_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu.add(mntmNewMenuItem_1);
		
		JMenu mnNewMenu_1 = new JMenu("Qu\u1EA3n L\u00FD");
		mnNewMenu_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		menuBar.add(mnNewMenu_1);
		
		JMenuItem mntmNewMenuItem_7 = new JMenuItem("Ph\u00E2n c\u00F4ng & L\u01B0\u01A1ng");
		mntmNewMenuItem_7.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_salary_male_32px.png"));
		mntmNewMenuItem_7.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu_1.add(mntmNewMenuItem_7);
		
		JMenu mnNewMenu_2 = new JMenu("Tr\u1EE3 Gi\u00FAp");
		mnNewMenu_2.setFont(new Font("Times New Roman", Font.BOLD, 16));
		menuBar.add(mnNewMenu_2);
		
		JMenuItem mntmNewMenuItem_4 = new JMenuItem("New menu item");
		mntmNewMenuItem_4.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu_2.add(mntmNewMenuItem_4);
		
		JSeparator separator_2 = new JSeparator();
		mnNewMenu_2.add(separator_2);
		
		JMenuItem mntmNewMenuItem_5 = new JMenuItem("New menu item");
		mntmNewMenuItem_5.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu_2.add(mntmNewMenuItem_5);
		
		JTabbedPane tpPane = new JTabbedPane(JTabbedPane.TOP);
		tpPane.setBounds(10, 40, 966, 613);
		frame.getContentPane().add(tpPane);
		
		JMenuItem mntmNewMenuItem_2 = new JMenuItem("Qu\u1EA3n L\u00FD Nh\u00E2n Vi\u00EAn");
		mntmNewMenuItem_2.addActionListener(new ActionListener() {
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
		mnNewMenu_1.add(separator_5);
		mntmNewMenuItem_2.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_name_tag_32px.png"));
		mntmNewMenuItem_2.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu_1.add(mntmNewMenuItem_2);
		JMenuItem mntmNewMenuItem_3 = new JMenuItem("Qu\u1EA3n L\u00FD Ph\u00F2ng Ban");
		mntmNewMenuItem_3.addActionListener(new ActionListener() {
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
		mnNewMenu_1.add(separator_1);
		mntmNewMenuItem_3.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_room_32px.png"));
		mntmNewMenuItem_3.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu_1.add(mntmNewMenuItem_3);
		JMenuItem mntmNewMenuItem_6 = new JMenuItem("Qu\u1EA3n L\u00FD D\u1EF1 \u00C1n");
		mntmNewMenuItem_6.addActionListener(new ActionListener() {
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
		mnNewMenu_1.add(separator_3);
		mntmNewMenuItem_6.setIcon(new ImageIcon("C:\\Users\\THANG\\Documents\\GitHub\\NNLTTT_PROJECT\\ImageIcon\\icons8_project_32px.png"));
		mntmNewMenuItem_6.setFont(new Font("Times New Roman", Font.BOLD, 16));
		mnNewMenu_1.add(mntmNewMenuItem_6);
	}
}
