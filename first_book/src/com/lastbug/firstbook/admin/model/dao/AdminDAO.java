package com.lastbug.firstbook.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.*;

public class AdminDAO {
	
	private final Properties prop;
	
	
	public AdminDAO() {
		
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "admin/admin-mapper.xml"));
		
		} catch (IOException e) {

			e.printStackTrace();
		}
		
	}
	
	
	public List<MemberDTO> selectAllMemList(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		
		List<MemberDTO> memList = null;
		
		String query = prop.getProperty("selectAllMemList");
		
		System.out.println(query);
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			memList = new ArrayList<>();
		
			while(rset.next()) {
				
				MemberDTO mem = new MemberDTO();
				
				mem.setMemNum(rset.getInt("MEM_NUM"));
				mem.setMemName(rset.getString("MEM_NAME"));
				mem.setMemId(rset.getString("MEM_ID"));
				mem.setMemPwd(rset.getString("MEM_PWD"));
				mem.setMemEmail(rset.getString("MEM_EMAIL"));
				mem.setMemAddress(rset.getString("MEM_ADDRESS"));
				mem.setMemBirthDate(rset.getDate("MEM_BIRTHDATE"));
				mem.setMemLoginCount(rset.getInt("MEM_LOGIN_COUNT"));
				mem.setMemCoin(rset.getInt("MEM_COIN"));
				mem.setMemCanVoteYn(rset.getString("MEM_CAN_VOTE_YN"));
				mem.setMemWithdrawYn(rset.getString("MEM_WITHDRAW_YN"));
				mem.setMemWithdrawDate(rset.getDate("MEM_WITHDRAW_DATE"));
				mem.setMemClass(rset.getString("MEM_CLASS"));
				mem.setMemBlockYn(rset.getString("MEM_BLOCK_YN"));
				mem.setMemBlockDate(rset.getDate("MEM_BLOCK_DATE"));
				mem.setMemEnrollDate(rset.getDate("MEM_ENROLL_DATE"));
				
				memList.add(mem);
				
			}
			
			System.out.println(memList);
			
		} catch (SQLException e) {

			e.printStackTrace();
		
		} finally {
			
			close(rset);
			close(stmt);	
			
		}
				
		
		return memList;
	
	}
	
	
}
