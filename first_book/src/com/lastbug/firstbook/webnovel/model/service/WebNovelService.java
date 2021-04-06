package com.lastbug.firstbook.webnovel.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.lastbug.firstbook.webnovel.model.dao.WebNovelDAO;
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

}
