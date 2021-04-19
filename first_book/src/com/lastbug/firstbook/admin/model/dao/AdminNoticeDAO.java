package com.lastbug.firstbook.admin.model.dao;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;

public class AdminNoticeDAO {

private final Properties prop;
	
	public AdminNoticeDAO() {
		
		prop = new Properties();

		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "admin/admin-notice-mapper.xml"));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int NoticeActDeactive(Connection con, int noticeNum, String noticeStatus) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("NoticeActDeactive");
		
		
		try {							
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, noticeStatus);
			pstmt.setInt(2, noticeNum);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;

	}

	public int NoticeModify(Connection con, int noticeNum, String noticeName, String noticeContent) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("NoticeModify");
		
		
		try {							
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, noticeName);
			pstmt.setString(2, noticeContent);
			pstmt.setInt(3, noticeNum);

			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}
	
	
}
