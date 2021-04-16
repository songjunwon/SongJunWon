package com.lastbug.firstbook.contest.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.contest.model.dto.ContestDTO;
import com.lastbug.firstbook.contest.model.dto.ContestDetalDTO;
import com.lastbug.firstbook.contest.model.service.ContestDetail;
import com.lastbug.firstbook.contest.model.service.ContestService;
import com.lastbug.firstbook.member.model.dto.MemberDTO;

@WebServlet("/contest/voting")
public class voting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int competNum = Integer.valueOf(request.getParameter("competNum"));
		
		List<ContestDetalDTO> contestDetailList = new ContestDetail().selectContestDetal(competNum);	//
		List<ContestDTO> contestlList = new ContestDetail().selectContestList(competNum);				// 웹소설 정보 검색
		List<MemberDTO> memberList = new ContestDetail().selectMemberList(competNum);					// 작가 정보 검색
		String category = new ContestDetail().selectCategory(competNum);		
		
		for(ContestDTO a : contestlList) {
			System.out.println(a);
		}
		
		String path = "";
		if(!contestDetailList.isEmpty()) {		
			path = "/WEB-INF/views/contest/contestDetail.jsp";
			request.setAttribute("contestDetailList", contestDetailList);
			request.setAttribute("contestlList", contestlList);
			request.setAttribute("memberList", memberList);
			request.setAttribute("category", category);
		} else {						  		
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("contestFailed", "작품 보러가기 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
