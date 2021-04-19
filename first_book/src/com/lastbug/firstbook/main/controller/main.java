package com.lastbug.firstbook.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import com.lastbug.firstbook.contest.model.dto.ContestDTO;
import com.lastbug.firstbook.contest.model.dto.ContestSsnDTO;
import com.lastbug.firstbook.contest.model.service.ContestService;
import com.lastbug.firstbook.novel.model.dto.NovelDTO;
import com.lastbug.firstbook.novel.model.service.NovelService;

@WebServlet("/main/main")
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List<ContestDTO> contestList = new ContestService().mainTopContest();
	List<NovelDTO> NovelList = new NovelService().selectAllNovel();
	
	String path = "";
	if(!contestList.isEmpty()) {		// 공모전 작품이 검색되면
		path = "/WEB-INF/views/main/main.jsp";
		request.setAttribute("contestList", contestList);
		request.setAttribute("NovelList", NovelList);
		
	} else {						// 공모전 실패 하면
	
		path = "/WEB-INF/views/common/failed.jsp";
		request.setAttribute("message", "공모전 조회 실패!");
	}
	
	request.getRequestDispatcher(path).forward(request, response);
	
	}

}
