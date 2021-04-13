package com.lastbug.firstbook.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.member.model.dto.UseCoinDTO;
import com.lastbug.firstbook.member.model.service.MemberService;

@WebServlet("/member/mypage")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "";
		
		if(request.getSession().getAttribute("loginMember") != null) {
			
			MemberDTO loginMember = (MemberDTO) request.getSession().getAttribute("loginMember");
			int memNum = loginMember.getMemNum();
			
			MemberService memberService = new MemberService();
			
			List<UseCoinDTO> useCoinList = memberService.selectUseCoin(memNum);
			
			path = "/WEB-INF/views/member/myPage.jsp";
			request.setAttribute("useCoinList", useCoinList);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "noLogin");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
