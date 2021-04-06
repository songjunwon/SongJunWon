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
			
			webNovelDetail = new WebNovelInfoDTO();
			webNovelDetail.setWebNovContent(new WebNovelDetailDTO());
			
			webNovelDetail.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
			webNovelDetail.setWebNovTitle(rset.getString("WEB_NOV_TITLE"));
			webNovelDetail.setWebNovAuthor(rset.getString("WEB_NOV_AUTHOR"));
			webNovelDetail.setWebNovNum(rset.getInt("WEB_NOV_NUM"));
			webNovelDetail.getWebNovContent().setWebNovContent(rset.getString("WEB_NOV_CONTENT"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}



}














