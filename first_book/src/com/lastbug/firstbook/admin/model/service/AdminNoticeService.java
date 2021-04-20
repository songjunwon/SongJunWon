package com.lastbug.firstbook.admin.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import com.lastbug.firstbook.admin.model.dao.AdminNoticeDAO;

public class AdminNoticeService {
	
		private final AdminNoticeDAO anDAO;
		
		public AdminNoticeService() {
			
			anDAO = new AdminNoticeDAO();
			
		}
	
	
	public int NoticeActDeactive(int noticeNum, String noticeStatus) {

		Connection con = getConnection();
		
		int result = anDAO.NoticeActDeactive(con, noticeNum, noticeStatus);
		
		
		if(result > 0) {
		
			commit(con);
			
		} else {
		
			rollback(con);
		}
		
		close(con);
		
		return result;

	
	}


	public int NoticeModify(int noticeNum, String noticeName, String noticeContent) {
		
		Connection con = getConnection();
		
		int result = anDAO.NoticeModify(con, noticeNum, noticeName, noticeContent);
		
		
		if(result > 0) {
		
			commit(con);
		} else {
		
			rollback(con);
		}
		
		close(con);

		System.out.println(result);
		
		return result;
		
		
	}

}
