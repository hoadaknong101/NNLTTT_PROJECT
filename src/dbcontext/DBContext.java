package dbcontext;

import java.sql.Connection;

public class DBContext {
	private static Connection connection = MySQLConnection.getConnection();	
}
