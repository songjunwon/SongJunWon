package com.lastbug.firstbook.member.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.lastbug.firstbook.member.model.dao.MemberDAO;
import com.lastbug.firstbook.member.model.dto.FaqDTO;
import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.member.model.dto.NoticeDTO;
import com.lastbug.firstbook.member.model.dto.UseCoinDTO;
import com.lastbug.firstbook.member.model.dto.WishlistDTO;
import com.lastbug.firstbook.webnovel.model.dto.PageInfoDTO;

public class MemberService {
	
	private final MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}

	/* 회원 가입용 메소드 */
	public int insertMember(MemberDTO newMember) {
		
		Connection con = getConnection();
		
		int result = memberDAO.insertMember(con, newMember);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	/* 아이디 중복검사용 메소드 */
	public String idCheck(String memId) {
		
		Connection con = getConnection();
		
		String result = memberDAO.idCheck(con, memId);
		
		close(con);
		
		return result;
	}

	/* 로그인 처리용 메소드 */
	public MemberDTO loginCheck(MemberDTO requestMember) {
		
		Connection con = getConnection();
		MemberDTO loginMember = null;
		
		String encPwd = memberDAO.selectEncryptedPwd(con, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
//		System.out.println(requestMember.getMemPwd());
		if(passwordEncoder.matches(requestMember.getMemPwd(), encPwd)) {
			
			loginMember = memberDAO.selectLoginMember(con, requestMember);
		}
		
		return loginMember;
	}

	/* 코인 사용 내역 조회용 메소드 */
	public List<UseCoinDTO> selectUseCoin(int memNum) {
		
		Connection con = getConnection();
		
		List<UseCoinDTO> useCoinList = memberDAO.selectUseCoin(con, memNum);
		
		close(con);
		
		return useCoinList;
	}

	/* 회원 정보 수정용 메소드 */
	public int updateMember(MemberDTO requestMember) {
		
		Connection con = getConnection();
		
		int result = memberDAO.updateMember(con, requestMember);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	/* 회원 탈퇴용 메소드 */
	public int deleteMember(MemberDTO requestMember) {
		
		Connection con = getConnection();
		int result = 0;
		
		String encPwd = memberDAO.selectEncryptedPwd(con, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(requestMember.getMemPwd(), encPwd)) {
			
			result = memberDAO.deleteMember(con, requestMember);
			
			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
		}
		
		close(con);
		
		return result;
	}

	/* 위시리스트 조회용 메소드 */
	public List<WishlistDTO> selectWishlist(int memNum) {
		
		Connection con = getConnection();
		
		List<WishlistDTO> wishlist = memberDAO.selectWishlist(con, memNum);
		
		close(con);
		
		return wishlist;
	}

	/* 로그인 시 로그인 카운트 증가 */
	public int incrementLoginCount(MemberDTO requestMember) {
		
		Connection con = getConnection();
		
		int result = memberDAO.incrementLoginCount(con, requestMember);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	/* 무료 코인 지급용 메소드 */
	public int incrementFreeCoin(int memNum) {
		
		Connection con = getConnection();
		
		int result = memberDAO.incrementFreeCoin(con, memNum);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return result;
	}

	/* 회원 정보 조회용 메소드 */
	public MemberDTO selectMember(int memNum) {

		Connection con = getConnection();
		
		MemberDTO requestMember = memberDAO.selectMember(con, memNum);
		
		close(con);
		
		return requestMember;
	}

	public int selectTotalCount() {

		Connection con = getConnection();
		
		int totalCount = memberDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo) {

		Connection con = getConnection();
		
		List<NoticeDTO> noticeList = memberDAO.selectNoticeList(con, pageInfo);
		
		close(con);
		
		return noticeList;
	}

	public NoticeDTO selectNoticeDetail(int noticeNum) {

		Connection con = getConnection();
		
		NoticeDTO noticeDetail = null;
		
		int result = memberDAO.incrementNoticeCount(con, noticeNum);
		
		if(result > 0) {
			noticeDetail = memberDAO.selectNoticeDetail(con, noticeNum);
			
			if(noticeDetail != null) {
				commit(con);
			} else {
				rollback(con);
			}
		} else {
			rollback(con);
		}
		
		close(con);
		
		return noticeDetail;
	}

	public int selectFAQTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = memberDAO.selectFAQTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<FaqDTO> selectFAQList(PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<FaqDTO> faqList = memberDAO.selectFAQList(con, pageInfo);
		
		close(con);
		
		return faqList;
	}

	public FaqDTO selectFaqDetail(int faqNum) {

		Connection con = getConnection();
		
		FaqDTO faqDetail = memberDAO.selectFaqDetail(con, faqNum);
			
		
		close(con);
		
		return faqDetail;
	}	
	
}
