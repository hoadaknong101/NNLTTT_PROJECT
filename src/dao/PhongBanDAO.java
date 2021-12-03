package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.PhongBan;
import dbcontext.DBContext;

public class PhongBanDAO {
	static Connection connection = DBContext.getConnection();
	static Statement statement;
	
	public PhongBanDAO() { }
	
	public static ArrayList<PhongBan> LayThongTinPhongBan(String sql){
		try {
			statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			ArrayList<PhongBan> danhSach = new ArrayList<PhongBan>();
			while(rs.next()) {
				PhongBan pb = new PhongBan(rs.getInt(1),
										   rs.getString(2),
										   rs.getInt(3),
										   rs.getDate(4),
										   rs.getString(5));
				danhSach.add(pb);
			}
			return danhSach;
		} catch (SQLException err) {
			err.printStackTrace();
		}
		return null;
	}
	
	public static boolean themPhongBan(PhongBan pb) {
		try {
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static boolean suaPhongBan(PhongBan pb) {
		try {
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static boolean xoaPhongBan(int id) {
		try {
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
