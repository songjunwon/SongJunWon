package com.lastbug.firstbook.common.jdbc;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;

/* DB와의 연결, close(preparedStatement, ResultSet, Statement) commit, rollback 메소드를 따로 모아 놓은 클래스 */
public class JDBCTemplate {
	
	public static Connection getConnection() {
		
		Connection con = null;
		
		Properties prop = new Properties();
		
		try {
			prop.load(new FileReader(ConfigLocation.CONNECTION_CONFIG_LOCATION));
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			
			Class.forName(driver);
			
			con = DriverManager.getConnection(url,prop);
			
//			System.out.println(con);
			
			/* 수동으로 커밋과 롤백을 하기 위한 설정을 하자 */
			con.setAutoCommit(false);
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void close(Connection con) {
		try {
			if(con != null && !con.isClosed()) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con) {
		try {
			if(con != null && !con.isClosed()) {
				con.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			if(con != null && !con.isClosed()) {
				con.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}
