package com.lastbug.firstbook.webnovel.model.service;


import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.lastbug.firstbook.webnovel.model.dao.WebNovelDAO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovChapSearchDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovContentDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;

public class WebNovelService {

	private final WebNovelDAO webNovelDAO;
	public WebNovelService() {
		webNovelDAO = new WebNovelDAO();
	}

	/* 웹소설 전체 조회용 메소드 */
	public List<WebNovelInfoDTO> selectAllNovel() {

		Connection con = getConnection();

		List<WebNovelInfoDTO> webNovelList = webNovelDAO.selectAllNovel(con);

		close(con);

		//		System.out.println("service의 목록" + webNovelList);

		return webNovelList;
	}

	/* 전체 웹소설 중에서 선택한 웹소설 정보 조회용 */
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
	/* 선택한 웹소설에 대한 챕터 조회용 메소드 */
	public List<WebNovChapSearchDTO> selectWebNovelallChapter(WebNovelInfoDTO webDetail) {

		Connection con = getConnection();

		List<WebNovChapSearchDTO> webNovelChap = null;

		webNovelChap = webNovelDAO.selectWebNovelallChapter(con, webDetail);

		//		System.out.println("web회차 정보 service" + webNovelChap);


		if(webNovelChap != null) {
			commit(con);
		}else {
			rollback(con);
		}

		close(con);
		return webNovelChap;
	}

	public List<WebNovContentDetailDTO> selectPerChap(int currentWebNovNum, int currentChapNum) {

		Connection con = getConnection();
		List<WebNovContentDetailDTO> perChap = null;
		perChap = webNovelDAO.selectPerChap(con, currentWebNovNum, currentChapNum);

		if(perChap != null) {
			commit(con);
		}else {
			rollback(con);
		}

		close(con);

		return perChap;
	}

}
















