package com.lastbug.firstbook.webnovel.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.webnovel.model.dto.WebNovelDetailDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;

@WebServlet("/webnovel/chapList")
public class ChapViewerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		int currentWebNovNum = Integer.valueOf(request.getParameter("currentWebNov"));
		int currentChapNum = Integer.valueOf(request.getParameter("currentChap"));
		
		System.out.println("현재 웹소설 번호" + currentWebNovNum);
		System.out.println("현재 웹소설의 챕터 번호" + currentChapNum);
		
		WebNovelService webService = new WebNovelService();
		WebNovelDetailDTO perChap = webService.selectPerChap(currentWebNovNum, currentChapNum);
	
		String path = "";
		
		if(perChap != null) {
			path = "/WEB-INF/views/webnovel/webviewer.jsp";
			request.setAttribute("perChap", perChap);			
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "해당 웹소설이 없습니다");
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
}
