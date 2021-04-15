package com.lastbug.firstbook.contest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import com.lastbug.firstbook.contest.model.dto.ContestDTO;
import com.lastbug.firstbook.contest.model.service.ContestService;

@WebServlet("/contest/list")
public class ContestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	List<ContestDTO> contestList = new ContestService().selectAllconstList();
	List<ContestDTO> contestListRankEight = new ContestService().rankEightconstList();
	int date = new ContestService().selectdate(contestList);
	int date8 = new ContestService().selectdate8();
	int date4 = new ContestService().selectdate4();
		String path = "";
		if(!contestList.isEmpty()) {		// 공모전 작품이 검색되면
			path = "/WEB-INF/views/contest/contestForm.jsp";
			request.setAttribute("contestList", contestList);
			request.setAttribute("contestListRankEight", contestListRankEight);
			request.setAttribute("date", date);
			request.setAttribute("date8", date8);
			request.setAttribute("date4", date4);
			
		} else {						// 공모전 실패 하면
		
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공모전 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
