package com.lastbug.firstbook.admin.model.dao;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;

public class AdminContestDAO {
	
	private final Properties prop;
	
	public AdminContestDAO() {
		
		prop = new Properties();

		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "admin/admin-contest-mapper.xml"));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int ContestModify(Connection con, int nop, int pg0, String body0, int pg1, String body1) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("ContestModify");
		
		
		try {							
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pg0);
			pstmt.setString(2, body0);
			pstmt.setInt(3, pg1);
			pstmt.setString(4, body1);
			pstmt.setInt(5, nop);
			pstmt.setInt(6, pg0);
			pstmt.setInt(7, pg1);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
		
		

	}
	
	

	
	
}
