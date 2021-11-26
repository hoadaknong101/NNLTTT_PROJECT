package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Window.Type;

public class ThanNhanForm {

	private JFrame frmDanhSchNgi;

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
		frmDanhSchNgi.setType(Type.UTILITY);
		frmDanhSchNgi.setTitle("Danh s\u00E1ch ng\u01B0\u1EDDi th\u00E2n");
		frmDanhSchNgi.setBounds(100, 100, 957, 512);
		frmDanhSchNgi.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

}
