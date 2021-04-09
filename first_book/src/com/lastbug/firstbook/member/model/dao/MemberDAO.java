package com.lastbug.firstbook.member.model.dao;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

public class MemberDAO {

	private final Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "member/member-mapper.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertMember(Connection con, MemberDTO newMember) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newMember.getMemName());
			pstmt.setString(2, newMember.getMemId());
			pstmt.setString(3, newMember.getMemPwd());
			pstmt.setString(4, newMember.getMemEmail());
			pstmt.setString(5, newMember.getMemAddress());
			pstmt.setDate(6, newMember.getMemBirthDate());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}

