package com.lastbug.firstbook.contest.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import com.lastbug.firstbook.contest.model.dao.ContestDetalDAO;
import com.lastbug.firstbook.contest.model.dto.ContestDTO;
import com.lastbug.firstbook.contest.model.dto.ContestDetalDTO;

public class ContestDetail {
	
	private final ContestDetalDAO contestDetalDAO;
	
	public ContestDetail() {
		contestDetalDAO = new ContestDetalDAO();
	}

	/* 공모전 웹툰 회차 정보 가져오기 */
	public List<ContestDetalDTO> selectContestDetal(int competNum) {
	
		Connection con = getConnection();
		
		List<ContestDetalDTO> contestList = contestDetalDAO.selectContestDetal(con, competNum);
		
		close(con);
		
		return contestList;
	}

	/* 공모전 정보 가져오기 */
	public List<ContestDTO> selectContestList(int competNum) {
		
		Connection con = getConnection();
		
		List<ContestDTO> contestList = contestDetalDAO.selectContestList(con, competNum);
		
		close(con);
		
		return contestList;
	}


	
}
