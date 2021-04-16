package com.lastbug.firstbook.webnovel.model.dao;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;


import com.lastbug.firstbook.common.config.ConfigLocation;
import com.lastbug.firstbook.webnovel.model.dto.GenreCategoryDTO;
import com.lastbug.firstbook.webnovel.model.dto.PageInfoDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovChapNumDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovChapSearchDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovContentDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovPageNumDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;

public class WebNovelDAO {

	private final Properties prop;

	public WebNovelDAO() {
		prop = new Properties();

		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "webnovel/webnovel-mapper.xml"));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<WebNovelInfoDTO> selectAllNovel(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;

		List<WebNovelInfoDTO> webNovelList = null;
//System.out.println("DAO는?");
		String query = prop.getProperty("selectAllNovel");
		System.out.println("쿼리" + query);

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			webNovelList = new ArrayList<>();

			while(rset.next()) {
				WebNovelInfoDTO webNovel = new WebNovelInfoDTO();

				webNovel.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
				webNovel.setWebNovTitle(rset.getString("WEB_NOV_TITLE"));
				webNovel.setWebNovAuthor(rset.getString("WEB_NOV_AUTHOR"));
				webNovel.setWebNovInform(rset.getString("WEB_NOV_INFORM"));
				webNovel.setCategoryCode(rset.getString("CATEGORY_CODE"));
				webNovel.setWebNovPublisher(rset.getString("WEB_NOV_PUBLISHER"));
				webNovel.setDayOfWeek(rset.getString("DAY_OF_WEEK"));
				webNovel.setWebNovImgLocation(rset.getString("WEB_NOV_IMG_LOCATION"));
				webNovel.setFinishedOrNot(rset.getString("FINISHED_OR_NOT"));
				webNovel.setWebNovOpenOrClose(rset.getString("WEB_NOV_OPEN_OR_CLOSE"));
				

				webNovelList.add(webNovel);
			}

			System.out.println(webNovelList);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}

		return webNovelList;
	}

	public WebNovelInfoDTO selectWebNovelDetail(Connection con, int no) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		WebNovelInfoDTO webNovelDetail = null;

		String query = prop.getProperty("selectWebNovelDetail");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);

			rset = pstmt.executeQuery();

			if(rset.next()) {
				webNovelDetail = new WebNovelInfoDTO();
				webNovelDetail.setCategoryName(new GenreCategoryDTO());

				webNovelDetail.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
				webNovelDetail.setWebNovTitle(rset.getString("WEB_NOV_TITLE"));
				webNovelDetail.setWebNovAuthor(rset.getString("WEB_NOV_AUTHOR"));
				webNovelDetail.setDayOfWeek(rset.getString("DAY_OF_WEEK"));
				webNovelDetail.setWebNovInform(rset.getString("WEB_NOV_INFORM"));
				webNovelDetail.setWebNovImgLocation(rset.getString("WEB_NOV_IMG_LOCATION"));
				webNovelDetail.getCategoryName().setCategoryName(rset.getString("CATEGORY_NAME"));
				//			webNovelDetail.setCategoryName(rset.getString("CATEGORY_NAME"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}


		return webNovelDetail;
	}

	public List<WebNovChapSearchDTO> selectWebNovelallChapter(Connection con, WebNovelInfoDTO webDetail) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;

//		System.out.println("webdetail" + webDetail);
		List<WebNovChapSearchDTO> webNovelChap = null;

		String query = prop.getProperty("selectWebNovelallChapter");
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setInt(1, webDetail.getWebNovNum());

			//			System.out.println("db전 웹소설 고유 번호" + webDetail.getWebNovNum());

			rset = pstmt.executeQuery();

//			System.out.println("query문" + query);
			webNovelChap = new ArrayList<WebNovChapSearchDTO>();

			while(rset.next()) {
				WebNovChapSearchDTO wbdDTO = new WebNovChapSearchDTO();
				wbdDTO.setWebNovNum(new WebNovelInfoDTO());
				wbdDTO.setWebNovChapNum(new WebNovChapNumDTO());

				//				wbdDTO.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
				wbdDTO.getWebNovNum().setWebNovNum(rset.getInt("WEB_NOV_NUM"));
				wbdDTO.getWebNovChapNum().setWebNovChapNum(rset.getInt("CHAP_NUM"));
				wbdDTO.setWebChapNumDate(rset.getDate("CHAP_WRITTEN_DATE"));
				wbdDTO.setChapReadOrNot(rset.getString("CHAP_READ_OR_NOT"));

				//				System.out.println("wbdDTO" + wbdDTO);

				webNovelChap.add(wbdDTO);

				//				System.out.println("DAO챕터별 정보" + webNovelChap);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}


		return webNovelChap;


	}

	public List<WebNovContentDetailDTO> selectPerChap(Connection con, PageInfoDTO pageInfo, int currentWebNovNum, int currentChapNum) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;	

		List<WebNovContentDetailDTO> perChap = null;

		String query = prop.getProperty("selectPerChap");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, currentWebNovNum);
			pstmt.setInt(2, currentChapNum);
			pstmt.setInt(3, pageInfo.getStartRow());
			pstmt.setInt(4, pageInfo.getEndRow());

			rset = pstmt.executeQuery();

			perChap = new ArrayList<WebNovContentDetailDTO>();

			while(rset.next()) {

				WebNovContentDetailDTO webnovel = new WebNovContentDetailDTO();

				webnovel.setWebNovNum(new WebNovelInfoDTO());
				webnovel.setWebNovChapNum(new WebNovChapNumDTO());
				webnovel.setWebNovPageNum(new WebNovPageNumDTO());
				
				webnovel.getWebNovNum().setWebNovNum(rset.getInt("WEB_NOV_NUM"));
				webnovel.getWebNovChapNum().setWebNovChapNum(rset.getInt("CHAP_NUM"));
				webnovel.getWebNovPageNum().setWebNovPageNum(rset.getInt("WEB_NOV_PAGE_NUM"));
				webnovel.setWebNovPageContent(rset.getString("WEB_NOV_PAGE_CONTENT"));
				
				perChap.add(webnovel);
			}


		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}


		return perChap;

	}

	/* 웹소설 내용이 총 몇개인지 세는 메소드 */
	public int searchWebNovelCount(Connection con, int currentWebNovNum, int currentChapNum) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("searchWebNovelCount");
		
		int webNovCount = 0;
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, currentWebNovNum);
			pstmt.setInt(2, currentChapNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				webNovCount = rset.getInt("COUNT(*)");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return webNovCount;
	}

	/* 선택한 웹소설 웹뷰어 페이지에 제목을 조회하는 메소드 */
	public WebNovelInfoDTO searchTitle(Connection con, int currentWebNovNum) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		WebNovelInfoDTO webNovelDetail = null;

		String query = prop.getProperty("searchTitle");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, currentWebNovNum);

			rset = pstmt.executeQuery();

			if(rset.next()) {
				webNovelDetail = new WebNovelInfoDTO();
				webNovelDetail.setCategoryName(new GenreCategoryDTO());

				webNovelDetail.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
				webNovelDetail.setWebNovTitle(rset.getString("WEB_NOV_TITLE"));
				webNovelDetail.setWebNovAuthor(rset.getString("WEB_NOV_AUTHOR"));
				webNovelDetail.setDayOfWeek(rset.getString("DAY_OF_WEEK"));
				webNovelDetail.setWebNovInform(rset.getString("WEB_NOV_INFORM"));
				webNovelDetail.getCategoryName().setCategoryName(rset.getString("CATEGORY_NAME"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}


		return webNovelDetail;
	}

	public int incrementWebnovelCount(Connection con, int no) {

		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("incrementWebnovelCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			pstmt.setInt(2, no);
			
			result = pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public int selectTotalCount(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		
		int totalCount = 0;
		
		String query = prop.getProperty("selectTotalCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				totalCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return totalCount;
	}


}
















