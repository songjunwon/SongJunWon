package com.lastbug.firstbook.member.model.dao;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;

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
import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.member.model.dto.UseCoinDTO;
import com.lastbug.firstbook.member.model.dto.WishlistDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;

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
				loginMember.setMemWeeklyCoinYn(rs.getString("MEM_WEEKLY_COIN_YN"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginMember;
	}

	/* 회원 코인 사용 내역 전체 조회용 메소드 */
	public List<UseCoinDTO> selectUseCoin(Connection con, int memNum) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<UseCoinDTO> useCoinList = null;
		
		String query = prop.getProperty("selectUseCoin");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memNum);
			
			rs = pstmt.executeQuery();
			
			useCoinList = new ArrayList<>();
			
			while(rs.next()) {
				UseCoinDTO useCoin = new UseCoinDTO();
				WebNovelInfoDTO webNov = new WebNovelInfoDTO();
				
				useCoin.setCoinUseNum(rs.getInt("COIN_USE_NUM"));
				useCoin.setCoinUseDate(rs.getDate("COIN_USE_DATE"));
				useCoin.setCoinUsage(rs.getInt("COIN_USAGE"));
				useCoin.setChapterNum(rs.getInt("CHAPTER_NUM"));
				useCoin.setMemNum(rs.getInt("MEM_NUM"));
				
				webNov.setWebNovNum(rs.getInt("WEB_NOV_NUM"));
				webNov.setCategoryCode(rs.getString("CATEGORY_CODE"));
				webNov.setWebNovTitle(rs.getString("WEB_NOV_TITLE"));
				webNov.setWebNovAuthor(rs.getString("WEB_NOV_AUTHOR"));
				webNov.setChapPerCoin(rs.getInt("CHAP_PER_COIN"));
				webNov.setWebNovPublisher(rs.getString("WEB_NOV_PUBLISHER"));
				webNov.setWebNovInform(rs.getString("WEB_NOV_INFORM"));
				webNov.setWebNovImgLocation(rs.getString("WEB_NOV_IMG_LOCATION"));
				webNov.setDayOfWeek(rs.getString("DAY_OF_WEEK"));
				webNov.setWebNovOpenOrClose(rs.getString("WEB_NOV_IS_OPEN"));
				webNov.setFinishedOrNot(rs.getString("FINISHED_OR_NOT"));
				
				useCoin.setWebNov(webNov);
				useCoinList.add(useCoin);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return useCoinList;
	}

	/* 회원 정보 수정용 메소드 */
	public int updateMember(Connection con, MemberDTO requestMember) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemName());
			pstmt.setString(2, requestMember.getMemPwd());
			pstmt.setString(3, requestMember.getMemEmail());
			pstmt.setString(4, requestMember.getMemAddress());
			pstmt.setDate(5, requestMember.getMemBirthDate());
			pstmt.setString(6, requestMember.getMemId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/* 회원 탈퇴용 메소드 */
	public int deleteMember(Connection con, MemberDTO requestMember) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/* 위시리스트 조회용 메소드 */
	public List<WishlistDTO> selectWishlist(Connection con, int memNum) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<WishlistDTO> wishlist = null;
		
		String query = prop.getProperty("selectWishlist");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memNum);
			
			rs = pstmt.executeQuery();
			
			wishlist = new ArrayList<>();
			
			while(rs.next()) {
				WishlistDTO wish = new WishlistDTO();
				WebNovelInfoDTO webNov = new WebNovelInfoDTO();
				
				wish.setMemNum(rs.getInt("MEM_NUM"));
				wish.setWishlistDate(rs.getDate("WISHLIST_DATE"));
				
				webNov.setWebNovNum(rs.getInt("WEB_NOV_NUM"));
				webNov.setCategoryCode(rs.getString("CATEGORY_CODE"));
				webNov.setWebNovTitle(rs.getString("WEB_NOV_TITLE"));
				webNov.setWebNovAuthor(rs.getString("WEB_NOV_AUTHOR"));
				webNov.setChapPerCoin(rs.getInt("CHAP_PER_COIN"));
				webNov.setWebNovPublisher(rs.getString("WEB_NOV_PUBLISHER"));
				webNov.setWebNovInform(rs.getString("WEB_NOV_INFORM"));
				webNov.setWebNovImgLocation(rs.getString("WEB_NOV_IMG_LOCATION"));
				webNov.setDayOfWeek(rs.getString("DAY_OF_WEEK"));
				webNov.setWebNovOpenOrClose(rs.getString("WEB_NOV_IS_OPEN"));
				webNov.setFinishedOrNot(rs.getString("FINISHED_OR_NOT"));
				
				wish.setWebNov(webNov);
				wishlist.add(wish);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return wishlist;
	}

	/* 로그인 횟수 증가용 메소드 */
	public int incrementLoginCount(Connection con, MemberDTO requestMember) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("incrementLoginCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/* 무료 코인 지급용 메소드 */
	public int incrementFreeCoin(Connection con, int memNum) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("incrementFreeCoin");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memNum);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public MemberDTO selectMember(Connection con, int memNum) {
		System.out.println(memNum+"번호");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		MemberDTO requestMember = null;
		
		String query = prop.getProperty("selectMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memNum);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				requestMember = new MemberDTO();
				requestMember.setMemNum(rs.getInt("MEM_NUM"));
				requestMember.setMemName(rs.getString("MEM_NAME"));
				requestMember.setMemId(rs.getString("MEM_ID"));
				requestMember.setMemPwd(rs.getString("MEM_PWD"));
				requestMember.setMemEmail(rs.getString("MEM_EMAIL"));
				requestMember.setMemAddress(rs.getString("MEM_ADDRESS"));
				requestMember.setMemBirthDate(rs.getDate("MEM_BIRTHDATE"));
				requestMember.setMemLoginCount(rs.getInt("MEM_LOGIN_COUNT"));
				requestMember.setMemCoin(rs.getInt("MEM_COIN"));
				requestMember.setMemCanVoteYn(rs.getString("MEM_CAN_VOTE_YN"));
				requestMember.setMemWithdrawYn(rs.getString("MEM_WITHDRAW_YN"));
				requestMember.setMemWithdrawDate(rs.getDate("MEM_WITHDRAW_DATE"));
				requestMember.setMemClass(rs.getString("MEM_CLASS"));
				requestMember.setMemBlockYn(rs.getString("MEM_BLOCK_YN"));
				requestMember.setMemBlockDate(rs.getDate("MEM_BLOCK_DATE"));
				requestMember.setMemEnrollDate(rs.getDate("MEM_ENROLL_DATE"));
				requestMember.setMemWeeklyCoinYn(rs.getString("MEM_WEEKLY_COIN_YN"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("dao" + requestMember);
		return requestMember;
	}

	/* 무료 코인 버튼 활성화용 메소드 */
	public int updateFreeCoinYn(Connection con, int memNum) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateFreeCoinYn");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memNum);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateWishList(Connection con, int weblistNum, int memNum2) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateWishList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, weblistNum);
			pstmt.setInt(2, memNum2);
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectMemPoint(Connection con, int webIdajax) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("selectMemPoint");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, webIdajax);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteWishList(Connection con, int weblistNum, int memNum2) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteWishList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, weblistNum);
			pstmt.setInt(2, memNum2);
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}

















