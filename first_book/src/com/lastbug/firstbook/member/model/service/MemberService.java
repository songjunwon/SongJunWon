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
import com.lastbug.firstbook.webnovel.model.dao.WebNovelDAO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovChapSearchDTO;

public class MemberService {
	static boolean isUpdate = false;
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
	
	public int updateWishList(int weblistNum, int memNum2) {

		Connection con = getConnection();

		int result = 0;

		//		System.out.println("boolean값(초기값) " + isUpdate);
		//
		if(!isUpdate) {	// 등록할 때
			if(result == 0) {	
				result = memberDAO.updateWishList(con, weblistNum, memNum2);
				System.out.println("result" + result);
				if(result > 0) {	//업데이트 성공시
					System.out.println("등록 됨?");
					isUpdate = true;
					commit(con);
					System.out.println("boolean값(등록 후) " + isUpdate);

				}else {
					rollback(con);
				}

			} 

		} else {	// 등록 삭제 할 때
			System.out.println("등록 실패??");
			if(result == 0) {
				result = memberDAO.deleteWishList(con, weblistNum, memNum2);

				if(result > 0) {
					commit(con);
					isUpdate = false;
				}else {
					rollback(con);
				}

			}

		}

		System.out.println("boolean값(리턴 전) " + isUpdate);

		return result;


	}

	/* 코인 차감용 메소드 */
	public MemberDTO chargeCoin(int webNovNum, int webNovChapNum, int memId) {

		Connection con = getConnection();

		/* 현재 적립금 조회 */
		MemberDTO result = memberDAO.selectMemPoint(con, memId);

		int currentCoin = result.getMemCoin();
		System.out.println("현재 적립급" + currentCoin);


		/* 웹소설 편당 코인 가져오기 */
		WebNovelDAO webnovelDAO = new WebNovelDAO();
		WebNovChapSearchDTO webchap = webnovelDAO.selectPerChapCoin(con, webNovNum, webNovChapNum);
		int perChapCoin = webchap.getChapPerPrice();
		System.out.println("편당 코인 " + perChapCoin);
		
		/* 현재 보유코인 - 편당 코인 */
		int restCoin = currentCoin - perChapCoin;
		System.out.println("보유한 금액 - 편당코인" + restCoin);

		/* 편당 코인 차감 후 다시 넣기 */
		int updateCoin = memberDAO.updateCoin(con, memId, restCoin);
		System.out.println("옵데이트 한 후 코인" + updateCoin);
		/* 읽을 수 있도록 전환하기 */
		int updateChap = webnovelDAO.updateChap(con, webNovNum, webNovChapNum);
		MemberDTO result2 = memberDAO.selectMemPoint(con, memId);

		if(updateCoin > 0 && updateChap > 0) {

			commit(con);
		}else {
			rollback(con);
		}

		close(con);

		return result2;
	}


}

















