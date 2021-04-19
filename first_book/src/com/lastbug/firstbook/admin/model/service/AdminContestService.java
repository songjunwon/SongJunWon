package com.lastbug.firstbook.admin.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import com.lastbug.firstbook.admin.model.dao.AdminContestDAO;

public class AdminContestService {

	private final AdminContestDAO acDAO;
	
	public AdminContestService() {
		
		acDAO = new AdminContestDAO();
		
	}

	public int ContestModify(int nop, int pg0, String body0, int pg1, String body1) {
		
		Connection con = getConnection();
		
		int result = acDAO.ContestModify(con, nop, pg0, body0, pg1, body1);
		
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;

	}
	
	
}
