package com.lastbug.firstbook.webnovel.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;


@WebServlet("/webnovel/list")
public class ShowAllWebNovelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		System.out.println("여기왓니?");
		List<WebNovelInfoDTO> webNovelList = new WebNovelService().selectAllNovel();
	
		String path = "";
		
		if(!webNovelList.isEmpty()) {		// 공지사항이 조회 되었다면
			path = "/WEB-INF/views/webnovel/webMain.jsp";
			request.setAttribute("webNovelList", webNovelList);
			
		}else {							// 공지사항이 조회 되지 않았다면
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 조회 실패!");
			
		}
		request.getRequestDispatcher(path).forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
