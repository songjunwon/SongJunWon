package com.lastbug.firstbook.admin.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.lastbug.firstbook.admin.model.dao.AdminDAO;
import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;

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

	

	public int selectMemberBlockUnblock(MemberDTO mem) {

		Connection con = getConnection();
		
		int result = adminDAO.selectMemberBlockUnblock(con, mem);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;

	}

	public int allMemberCount() {

		Connection con = getConnection();
		
		int allMemberCount = adminDAO.allMemberCount(con);
		
		
		close(con);
		
		return allMemberCount;
		

	}


	
}






















