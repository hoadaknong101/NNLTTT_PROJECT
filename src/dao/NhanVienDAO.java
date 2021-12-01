package dao;

import java.io.ByteArrayInputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import bean.NhanVien;
import dbcontext.DBContext;

public class NhanVienDAO {
	static Connection connection = DBContext.getConnection();
	static Statement statement;
	static NhanVien nhanVien;
	
	public NhanVienDAO() {}
	
	public static ArrayList<NhanVien> LayThongTinNhanVien(String sql){
		try {
			statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			ArrayList<NhanVien> danhSach = new ArrayList<NhanVien>();
			while(rs.next()) {
				NhanVien nv = new NhanVien(rs.getInt(1),
											rs.getString(2),
											rs.getDate(3),
											rs.getString(4),
											rs.getString(5),
											rs.getString(6),
											rs.getInt(7),
											rs.getInt(8),
											ByteArrayToImageIcon(rs.getBytes(9)));
				danhSach.add(nv);
			}
			return danhSach;
		} catch (SQLException err) {
			err.printStackTrace();
		}
		return null;
	}
	
	private static ImageIcon ByteArrayToImageIcon(byte[] data) {
		try {
			ByteArrayInputStream bis = new ByteArrayInputStream(data);
		    BufferedImage img = ImageIO.read(bis);
			ImageIcon icon = new ImageIcon(img);  
			return icon;
		} catch (Exception e) { }
		return null;
	}
}
