package com.lastbug.firstbook.member.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;

import com.lastbug.firstbook.member.model.dao.MemberDAO;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

public class MemberService {
	
	private final MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}

	public int insertMember(MemberDTO newMember) {
		
		Connection con = getConnection();
		
		int result = memberDAO.insertMember(con, newMember);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	
	
}
