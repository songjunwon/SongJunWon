package com.greedy.jsp.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.greedy.jsp.member.model.dto.MemberDTO;
import com.greedy.jsp.member.model.service.MemberService;

@WebServlet("/member/login")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		
//		System.out.println(memberId);
//		System.out.println(memberPwd);
		
		MemberDTO requestMember = new MemberDTO();
		
		requestMember.setId(memberId);
		requestMember.setPwd(memberPwd);
		
		MemberService memberService = new MemberService();
		
		MemberDTO loginMember = memberService.loginCheck(requestMember);
		
		System.out.println("조회된 회원 : " + loginMember);
		
		if(loginMember != null) {
			
			
			HttpSession session = request.getSession();
			
			session.setAttribute("loginMember", loginMember);
			
			/* request.getContextPath() -> root명 (/jsp)와 같음 */
					
			response.sendRedirect(request.getContextPath());
			
			
			
			
		} else {
			
			request.setAttribute("message", "로그인 실패!");
			
			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
	}

}
