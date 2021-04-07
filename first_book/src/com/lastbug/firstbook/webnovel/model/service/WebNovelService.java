package com.lastbug.firstbook.webnovel.model.service;


import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.lastbug.firstbook.webnovel.model.dao.WebNovelDAO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;

public class WebNovelService {

	private final WebNovelDAO webNovelDAO;
	public WebNovelService() {
		webNovelDAO = new WebNovelDAO();
	}

	public List<WebNovelInfoDTO> selectAllNovel() {

		Connection con = getConnection();

		List<WebNovelInfoDTO> webNovelList = webNovelDAO.selectAllNovel(con);

		close(con);

		System.out.println("service의 목록" + webNovelList);

		return webNovelList;
	}

	public WebNovelInfoDTO selectWebNovelDetail(int no) {

		Connection con = getConnection();
		WebNovelInfoDTO novelDetail = null;
		

		novelDetail = webNovelDAO.selectWebNovelDetail(con, no);
		
//		System.out.println("service에 선택된 자료" + novelDetail);
		
		if(novelDetail != null) {
			
			return novelDetail;
		} else {
			rollback(con);
		}

	close(con);

	return novelDetail;
}

	public List<WebNovelDetailDTO> selectWebNovelDetail2(WebNovelInfoDTO webDetail) {

		Connection con = getConnection();
		
		List<WebNovelDetailDTO> novelDetail2 = null;
		
		novelDetail2 = webNovelDAO.selectWebNovelDetail2(con, webDetail);
		
		if(novelDetail2 != null) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		return novelDetail2;
	}

}
