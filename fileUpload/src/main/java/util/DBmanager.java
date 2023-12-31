package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBmanager {
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/TestDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	// select을 수행한 후 리솧스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		 try {
			 if(rs != null)rs.close();
			 if(stmt != null)stmt.close();
			 if(conn != null)conn.close();
		 } catch (Exception e) {
			 e.printStackTrace();
		 }
	}
	// insert, update, delete 작업을 수행한 후 리솧스 해제를 위한 메소드	
	public static void close(Connection conn, Statement stmt) {
		try {
			if(stmt != null)stmt.close();
			if(conn != null)conn.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
