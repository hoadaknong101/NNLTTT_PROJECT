package dao;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.CallableStatement;
import java.sql.Statement;
import java.util.ArrayList;

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
		} catch (Exception e) { 
			return null;
		}
	}

	private static byte[] ImageIconToByteArray(ImageIcon icon) {
		if (icon == null)
			return null;
		try {
		    ByteArrayOutputStream bos = new ByteArrayOutputStream();
		    ImageIO.write((RenderedImage) icon, "jpg", bos );
		    byte [] data = bos.toByteArray();
		    return data;
		} catch (Exception ex) {
		    ex.printStackTrace();
		    return null;
		}
	}
	
	public static boolean themNhanVien(NhanVien nv) {
		try {
			CallableStatement statement = connection.prepareCall("{call insertNhanVien(?,?,?,?,?,?,?,?,?)}");
			statement.setInt(1, nv.getMaNhanVien());
			statement.setString(2, nv.getHoTen());
			statement.setDate(3, nv.getNgaySinh());
			statement.setString(4, nv.getDiaChi());
			statement.setString(5, nv.getPhai());
			statement.setString(6, nv.getLuong());
			statement.setInt(7, nv.getMaNQL());
			statement.setInt(8, nv.getMaPB());
			statement.setBytes(9, ImageIconToByteArray(nv.getImage()));
			statement.execute();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static boolean suaNhanVien(NhanVien nv) {
		try {
			CallableStatement statement = connection.prepareCall("{call updateNhanVien(?,?,?,?,?,?,?,?,?)}");
			statement.setInt(1, nv.getMaNhanVien());
			statement.setString(2, nv.getHoTen());
			statement.setDate(3, nv.getNgaySinh());
			statement.setString(4, nv.getDiaChi());
			statement.setString(5, nv.getPhai());
			statement.setString(6, nv.getLuong());
			statement.setInt(7, nv.getMaNQL());
			statement.setInt(8, nv.getMaPB());
			statement.setBytes(9, ImageIconToByteArray(nv.getImage()));
			statement.execute();
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean xoaNhanVien(int id) {
		try {
			CallableStatement statement = connection.prepareCall("{call deleteNhanVien(?)}");
			statement.setInt(1, id);
			statement.execute();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
