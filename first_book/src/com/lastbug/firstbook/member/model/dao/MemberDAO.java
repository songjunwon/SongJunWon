package com.lastbug.firstbook.member.model.dao;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.lastbug.firstbook.common.config.ConfigLocation;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

public class MemberDAO {

	private final Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "member/member-mapper.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/* MEM_INFO TABLE 신규 회원 insert용 메소드 */
	public int insertMember(Connection con, MemberDTO newMember) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newMember.getMemName());
			pstmt.setString(2, newMember.getMemId());
			pstmt.setString(3, newMember.getMemPwd());
			pstmt.setString(4, newMember.getMemEmail());
			pstmt.setString(5, newMember.getMemAddress());
			pstmt.setDate(6, newMember.getMemBirthDate());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/* 아이디 조회용 메소드 (아이디 중복검사) */
	public String idCheck(Connection con, String memId) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String result = "";
		
		String query = prop.getProperty("idCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getString("MEM_ID");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return result;
	}

	/* 암호화 처리 된 비밀번호 조회용 메소드(로그인 확인용) */
	public String selectEncryptedPwd(Connection con, MemberDTO requestMember) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String encPwd = null;
		
		String query = prop.getProperty("selectEncryptedPwd");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemId());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				encPwd = rs.getString("MEM_PWD");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return encPwd;
	}

	/* 회원의 전체 정보 조회용 메소드 (로그인용) */
	public MemberDTO selectLoginMember(Connection con, MemberDTO requestMember) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		MemberDTO loginMember = null;
		
		String query = prop.getProperty("selectLoginMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemId());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				loginMember = new MemberDTO();
				loginMember.setMemNum(rs.getInt("MEM_NUM"));
				loginMember.setMemName(rs.getString("MEM_NAME"));
				loginMember.setMemId(rs.getString("MEM_ID"));
				loginMember.setMemPwd(rs.getString("MEM_PWD"));
				loginMember.setMemEmail(rs.getString("MEM_EMAIL"));
				loginMember.setMemAddress(rs.getString("MEM_ADDRESS"));
				loginMember.setMemBirthDate(rs.getDate("MEM_BIRTHDATE"));
				loginMember.setMemLoginCount(rs.getInt("MEM_LOGIN_COUNT"));
				loginMember.setMemCoin(rs.getInt("MEM_COIN"));
				loginMember.setMemCanVoteYn(rs.getString("MEM_CAN_VOTE_YN"));
				loginMember.setMemWithdrawYn(rs.getString("MEM_WITHDRAW_YN"));
				loginMember.setMemWithdrawDate(rs.getDate("MEM_WITHDRAW_DATE"));
				loginMember.setMemClass(rs.getString("MEM_CLASS"));
				loginMember.setMemBlockYn(rs.getString("MEM_BLOCK_YN"));
				loginMember.setMemBlockDate(rs.getDate("MEM_BLOCK_DATE"));
				loginMember.setMemEnrollDate(rs.getDate("MEM_ENROLL_DATE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return loginMember;
	}
}

