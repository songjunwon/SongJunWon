package com.lastbug.firstbook.webnovel.model.service;


import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.lastbug.firstbook.webnovel.model.dao.WebNovelDAO;
import com.lastbug.firstbook.webnovel.model.dto.PageInfoDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovChapSearchDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovContentDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebnovelReplyDTO;

public class WebNovelService {

	private final WebNovelDAO webNovelDAO;
	public WebNovelService() {
		webNovelDAO = new WebNovelDAO();
	}

	/* 웹소설 전체 조회용 메소드 */
	public List<WebNovelInfoDTO> selectAllNovel() {

		Connection con = getConnection();

		//		System.out.println("커넥션에 왓니?");

		List<WebNovelInfoDTO> webNovelList = webNovelDAO.selectAllNovel(con);

		close(con);

		//		System.out.println("service의 목록" + webNovelList);

		return webNovelList;
	}

	/* 전체 웹소설 중에서 선택한 웹소설 정보 조회용 */
	public WebNovelInfoDTO selectWebNovelDetail(int no) {

		Connection con = getConnection();
		WebNovelInfoDTO novelDetail = null;

		/* 조회수 증가 */
		int result = webNovelDAO.incrementWebnovelCount(con, no);

//		System.out.println("조회수 : " + result);

		if(result > 0) {

			novelDetail = webNovelDAO.selectWebNovelDetail(con, no);
			if(novelDetail != null) {

				commit(con);
			} else {
				rollback(con);
			}

		}else {
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

	/* 선택한 웹소설의 챕터안에 있는 웹소설 내용 조회용 메소드 */
	public List<WebNovContentDetailDTO> selectPerChap(PageInfoDTO pageInfo, int currentWebNovNum, int currentChapNum) {

		Connection con = getConnection();
		List<WebNovContentDetailDTO> perChap = null;
		perChap = webNovelDAO.selectPerChap(con, pageInfo, currentWebNovNum, currentChapNum);

		if(perChap != null) {
			commit(con);
		}else {
			rollback(con);
		}

		close(con);

		return perChap;
	}

	/* 선택한 웹소설의 챕터의 쪽수 계산 */
	public int searchWebNovelCount(int currentWebNovNum, int currentChapNum) {
		Connection con = getConnection();

		int totalCount = webNovelDAO.searchWebNovelCount(con, currentWebNovNum, currentChapNum);

		if(totalCount > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		close(con);

		return totalCount;
	}

	/* 1~5화 제목 조회용 메소드 */
	public WebNovelInfoDTO searchTitle(int currentWebNovNum) {

		Connection con = getConnection();

		WebNovelInfoDTO title = webNovelDAO.searchTitle(con, currentWebNovNum);

		if(title != null) {
			commit(con);
		}else {
			rollback(con);
		}


		close(con);

		return title;
	}

	/* 전체 웹소설안에 챕터 개수 조회용 메소드 */
	public int selectTotalCount() {

		Connection con = getConnection();
		
		int result = webNovelDAO.selectTotalCount(con);
		
//		System.out.println("select total Count" + result);
		
		close(con);
		
		return result;

	}

	/* 선택한 웹소설 안에 있는 전체 챕터조회용 (유료) 메소드 */
	public List<WebNovChapSearchDTO> selectWebNovelallChapterNotFree(WebNovelInfoDTO webDetail) {

		Connection con = getConnection();

		List<WebNovChapSearchDTO> webNovelChap2 = null;

		webNovelChap2 = webNovelDAO.selectWebNovelallChapterNotFree(con, webDetail);

		//		System.out.println("web회차 정보 service" + webNovelChap);


		if(webNovelChap2 != null) {
			commit(con);
		}else {
			rollback(con);
		}

		close(con);
		return webNovelChap2;

	}

	/* 웹소설 안에 있는 모든 챕터 조회용 메소드 */
	public int selectTotalChapter(int currentWebNov) {

		Connection con = getConnection();
		
		int result = webNovelDAO.selectTotalChapter(con, currentWebNov);
		
//		System.out.println("select total Count(ajax)" + result);
		
		close(con);
		
		return result;

	}
	/* 6화부터 뿌려지는 웹소설 내용 조회용 메소드 */
	public int searchWebNovelCountPaid(int webNovNum, int webNovChapNum) {
		Connection con = getConnection();

		int totalCount = webNovelDAO.searchWebNovelCountPaid(con, webNovNum, webNovChapNum);

		if(totalCount > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		close(con);

		return totalCount;
	}

	/* 6화부터 뿌려지는 제목 조회용 메소드 */
	public WebNovelInfoDTO searchTitlePaid(int webNovNum) {
		Connection con = getConnection();

		WebNovelInfoDTO title = webNovelDAO.searchTitlePaid(con, webNovNum);

		if(title != null) {
			commit(con);
		}else {
			rollback(con);
		}


		close(con);

		return title;
	}

	/* 전체 댓글 리스트 조회용 메소드 */
	public List<WebnovelReplyDTO> selectAllReply() {
		
		Connection con = getConnection();

		System.out.println("커넥션에 왓니?");

		List<WebnovelReplyDTO> webnovAllReply = webNovelDAO.selectAllReply(con);

		close(con);

		//		System.out.println("service의 목록" + webNovelList);

		return webnovAllReply;
	}

	/* 해당 웹소설 댓글 리스트 조회 */
	public List<WebnovelReplyDTO> selectWebnovReply(int no) {

		Connection con = getConnection();

		System.out.println("커넥션에 왓니?");

		List<WebnovelReplyDTO> selectWebnovReply = webNovelDAO.selectWebnovReply(con, no);

		close(con);

		if(selectWebnovReply != null) {
			commit(con);
		}else {
			rollback(con);
		}


		return selectWebnovReply;
	}

	public int insertReply(String replytext, int webNovNum, int memNum) {

		Connection con = getConnection();
		
		int insertReply = webNovelDAO.insertReply(con, replytext, webNovNum, memNum);
		
		
		if(insertReply >  0) {
			
			commit(con);
		} else {
			
			rollback(con);
		}
		close(con);
		
		
		return insertReply;
	}

	public List<WebnovelReplyDTO> replydata(String replytext, int webNovNum, int memNum) {

		Connection con = getConnection();
		
		List<WebnovelReplyDTO> replydata = webNovelDAO.replydata(con, replytext, webNovNum, memNum);
		
		
		if(replydata != null) {
			
			commit(con);
		} else {
			
			rollback(con);
		}
		close(con);
		
		
		return replydata;

	}

}
















