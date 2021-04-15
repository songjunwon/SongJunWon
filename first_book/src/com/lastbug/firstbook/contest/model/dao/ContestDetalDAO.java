package com.lastbug.firstbook.contest.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;
import com.lastbug.firstbook.contest.model.dto.ContestDTO;
import com.lastbug.firstbook.contest.model.dto.ContestDetalDTO;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;

public class ContestDetalDAO {
	
	private final Properties prop;
	
	public ContestDetalDAO() {
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "contest/contestDetal-mapper.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/* 공모전 웹소설 상세페이지 가져오기 */
	public List<ContestDetalDTO> selectContestDetal(Connection con, int competNum) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<ContestDetalDTO> contestList = null;
		String query = prop.getProperty("selectContestDetal");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, competNum);
			
			
			rset = pstmt.executeQuery();
			
			contestList = new ArrayList<>();
			
			while(rset.next()) {
				
				ContestDetalDTO contest = new ContestDetalDTO();

				contest.setChapterNum(rset.getInt("CHAPTER_NUM"));
				contest.setCompetNum(rset.getInt("COMPET_NUM"));
				contest.setNovContent(rset.getString("NOV_CONTENT"));

				contestList.add(contest);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return contestList;
	}
	/* 공모전 정보 가져오기 */
	public List<ContestDTO> selectContestList(Connection con, int competNum) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<ContestDTO> contestList = null;
		String query = prop.getProperty("selectContestList");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, competNum);
			
			
			rset = pstmt.executeQuery();
			
			contestList = new ArrayList<>();
			
			while(rset.next()) {
				
				ContestDTO contest = new ContestDTO();

				contest.setCompetNum(rset.getInt("COMPET_NUM"));
				contest.setMemNum(rset.getInt("MEM_NUM"));
				contest.setCompetPaperYn(rset.getString("COMPET_PAPER_YN"));
				contest.setNovTitle(rset.getString("NOV_TITLE"));
				contest.setNovInfo(rset.getString("NOV_INFO"));
				contest.setCompetSsn(rset.getString("COMPET_SSN"));
				contest.setCompetNovImgaiion(rset.getString("COMPET_NOV_IMG_LOCATION"));
				contest.setScore(rset.getInt("SCORE"));
				contest.setCompetActYn(rset.getString("COMPET_ACT_YN"));

				contestList.add(contest);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return contestList;
	}
	
}
