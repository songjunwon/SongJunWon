package com.lastbug.firstbook.member.model.service;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.close;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.getConnection;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.lastbug.firstbook.member.model.dao.MemberDAO;
import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.member.model.dto.UseCoinDTO;

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
	
	
}
