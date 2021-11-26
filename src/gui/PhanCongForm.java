package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Window.Type;

public class PhanCongForm {

	private JFrame frmBngPhnCng;

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
		frmBngPhnCng.setType(Type.UTILITY);
		frmBngPhnCng.setTitle("B\u1EA3ng ph\u00E2n c\u00F4ng c\u00F4ng vi\u1EC7c");
		frmBngPhnCng.setBounds(100, 100, 903, 485);
		frmBngPhnCng.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

}
