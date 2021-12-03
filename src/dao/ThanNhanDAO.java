package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.ThanNhan;
import dbcontext.DBContext;

public class ThanNhanDAO {
	static Connection connection = DBContext.getConnection();
	static Statement statement;
	
	public ThanNhanDAO() {}
	
	public static ArrayList<ThanNhan> LayThongTinThanNhan(String sql){
		try {
			statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			ArrayList<ThanNhan> danhSach = new ArrayList<ThanNhan>();
			while(rs.next()) {
				ThanNhan tn = new ThanNhan(rs.getString(1),
											rs.getString(2),
											rs.getDate(3),
											rs.getString(4),
											rs.getInt(5));
				danhSach.add(tn);
			}
			return danhSach;
		} catch (SQLException err) {
			err.printStackTrace();
		}
		return null;
	}
	
	public static boolean themThanNhan(ThanNhan tn) {
		try {
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static boolean suaThanNhan(ThanNhan tn) {
		try {
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static boolean xoaThanNhan(int id) {
		try {
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
