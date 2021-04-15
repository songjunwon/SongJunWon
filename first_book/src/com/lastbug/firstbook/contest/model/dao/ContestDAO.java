package com.lastbug.firstbook.contest.model.dao;

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
import com.lastbug.firstbook.contest.model.dto.ContestDTO;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

public class ContestDAO {


	private final Properties prop;
	
	public ContestDAO() {
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "contest/contest-mapper.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 현재 참가자 조회
	public List<ContestDTO> selectAllContestList(Connection con, String month) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<ContestDTO> contestList = null;
		String query = prop.getProperty("selectAllContestList");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, month);
			
			
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
				contest.setCompetNovImgLocation(rset.getString("COMPET_NOV_IMG_LOCATION"));
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

	// 8강 조회
	public List<ContestDTO> rankEightconstList(Connection con, String month) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<ContestDTO> contestListRankEight = null;
		String query = prop.getProperty("rankEightconstList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, month);
			
			
			rset = pstmt.executeQuery();
			
			contestListRankEight = new ArrayList<>();
			
			while(rset.next()) {
			
				ContestDTO contest = new ContestDTO();

				contest.setCompetNum(rset.getInt("COMPET_NUM"));
				contest.setMemNum(rset.getInt("MEM_NUM"));
				contest.setCompetPaperYn(rset.getString("COMPET_PAPER_YN"));
				contest.setNovTitle(rset.getString("NOV_TITLE"));
				contest.setNovInfo(rset.getString("NOV_INFO"));
				contest.setCompetSsn(rset.getString("COMPET_SSN"));
				contest.setCompetNovImgLocation(rset.getString("COMPET_NOV_IMG_LOCATION"));
				contest.setScore(rset.getInt("SCORE"));
				contest.setCompetActYn(rset.getString("COMPET_ACT_YN"));
				contestListRankEight.add(contest);	
				
			
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return contestListRankEight;
	}
	

	
	
	



}

