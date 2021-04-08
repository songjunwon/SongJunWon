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
import com.lastbug.firstbook.webnovel.model.dto.WebNovelDetailDTO;
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
		
		String query = prop.getProperty("seletAllNovel");
		
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
				
				webNovelList.add(webNovel);
			}
			
			
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
			
			webNovelDetail.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
			webNovelDetail.setWebNovTitle(rset.getString("WEB_NOV_TITLE"));
			webNovelDetail.setWebNovAuthor(rset.getString("WEB_NOV_AUTHOR"));
			webNovelDetail.setDayOfWeek(rset.getString("DAY_OF_WEEK"));
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return webNovelDetail;
	}

	public List<WebNovelDetailDTO> selectWebNovelDetail2(Connection con, WebNovelInfoDTO novelDetail) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<WebNovelDetailDTO> novelDetail2 = null;
		
		String query = prop.getProperty("selectWebNovelDetail2");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, novelDetail.getWebNovNum());
			
			rset = pstmt.executeQuery();
			
			novelDetail2 = new ArrayList<>();
			
			while(rset.next()) {
				WebNovelDetailDTO wbdDTO = new WebNovelDetailDTO();
				wbdDTO.setChapNum(rset.getInt("CHAPTER_NUM"));
				wbdDTO.setWebNovContent(rset.getString("WEB_NOV_CONTENT"));
				
				novelDetail2.add(wbdDTO);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return novelDetail2;
	}



}
