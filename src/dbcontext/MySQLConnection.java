package dbcontext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
	public static Connection getConnection() {		
		// Hoa
//		final String url="jdbc:mysql://localhost:3306/congty";
//		final String user = "";
//		final String password = "";
		
		// Phi
		final String url="jdbc:mysql://127.0.0.1:3306/congty";
		final String user = "nhatphi";
		final String password = "12345";

		// Thang
//		final String url="jdbc:mysql://localhost:3306/congty";
//		final String user = "";
//		final String password = "";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
