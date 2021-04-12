package com.lastbug.firstbook.contest.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import com.lastbug.firstbook.contest.model.dao.ContestDAO;
import com.lastbug.firstbook.contest.model.dto.ContestDTO;

public class ContestService {
	
	private final ContestDAO contestDAO;
	
	public ContestService() {
		contestDAO = new ContestDAO();
	}

	public List<ContestDTO> selectAllconstList() {
		

		Connection con = getConnection();
		String Month = "";
		String trueMonth ="";
		
		
		switch (NowMonth()) {
		case "01"  : trueMonth += 1; break;
		case "02"  : trueMonth += 1; break;
		case "03"  : trueMonth += 1; break;
		case "04"  : trueMonth += 2; break;
		case "05"  : trueMonth += 2; break;
		case "06"  : trueMonth += 2; break;
		case "07"  : trueMonth += 3; break;
		case "08"  : trueMonth += 3; break;
		case "09"  : trueMonth += 3; break;
		case "10"  : trueMonth += 4; break;
		case "11"  : trueMonth += 4; break;
		case "12"  : trueMonth += 4; break;
		}
		
		Month = NowYear() + "Q" + trueMonth;
		System.out.println(Month);
		
		
		List<ContestDTO> contestList = contestDAO.selectAllContestList(con, Month);
		
		close(con);
		
		return contestList;
		
	}
	
	// 투표 관련 서비스
	public int selectVoting() {
		Connection con = getConnection();
		
		int result = contestDAO.selectVoting(con);
		
		
		
		close(con);
		return result;
	}
	
	// 현재 년도 알아오는 메소드
	public static String NowYear() {
		//long 타입으로 System.currentTimeMillis() 데이터를 받아야합니다
		long time = System.currentTimeMillis();
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy");
		String str = dayTime.format(new Date(time));
		return str; //return은 메소드 호출 후 데이터를 반환해줍니다.
	}
	
	// 현재 달 알아오는 메소드 
	public static String NowMonth() {
		//long 타입으로 System.currentTimeMillis() 데이터를 받아야합니다
		long time = System.currentTimeMillis(); 
		SimpleDateFormat dayTime = new SimpleDateFormat("MM");
		String str = dayTime.format(new Date(time));
		return str; //return은 메소드 호출 후 데이터를 반환해줍니다.
	}

	
}
