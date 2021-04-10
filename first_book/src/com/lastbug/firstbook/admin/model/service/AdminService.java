package com.lastbug.firstbook.admin.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.lastbug.firstbook.admin.model.dao.AdminDAO;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

public class AdminService {

	private final AdminDAO adminDAO;
	
	public AdminService() {
		
		adminDAO = new AdminDAO();
		
	}
	
	public List<MemberDTO> selectAllMemList() {

		Connection con = getConnection();
		
		List<MemberDTO> memList = adminDAO.selectAllMemList(con);
		
		
		close(con);
		
		return memList;
	}

	public List<MemberDTO> searchMemList(String condition, String value) {
		
		Connection con = getConnection();
		
		List<MemberDTO> searchMemList = adminDAO.searchMemList(con, condition, value);
		
		close(con);
		
		
		return searchMemList;
	}
	
}
