package com.lastbug.firstbook.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.member.model.service.MemberService;

@WebServlet("/member/updateFreeCoinYn")
public class UpdateCoinYnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int memNum = ((MemberDTO)request.getSession().getAttribute("loginMember")).getMemNum();
		
		MemberService memberService = new MemberService();
		
		int result = memberService.updateFreeCoinYn(memNum);
		
//		System.out.println("result" + result);
		
		String path = "";
		if(result > 0) {
			MemberDTO requestMember = memberService.selectMember(memNum);
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", requestMember);
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateFreeCoinYn");
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "updateFreeCoinYn");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
