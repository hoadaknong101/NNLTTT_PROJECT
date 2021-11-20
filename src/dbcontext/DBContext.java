package dbcontext;

import java.sql.Connection;

public class DBContext {
	public static Connection connection = MySQLConnection.getConnection();	
}
