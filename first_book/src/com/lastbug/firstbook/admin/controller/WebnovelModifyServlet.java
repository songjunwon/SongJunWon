package com.lastbug.firstbook.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.admin.webnovel.model.service.AdminWebNovelService;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;


@WebServlet("/admin/webModify")
public class WebnovelModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String body0 = request.getParameter("body0");
		String body1 = request.getParameter("body1");
		int no = Integer.valueOf(request.getParameter("webNovNum"));

		int pg0 = Integer.valueOf(request.getParameter("pg0"));
		int pg1 = Integer.valueOf(request.getParameter("pg1"));
		
//		System.out.println("pg0 : " + pg0);
//		System.out.println("pg1 : " +pg1);
		
		String path = "";
		
		
		AdminWebNovelService awnService = new AdminWebNovelService();
		
		int result = awnService.WebNovelModify(no, pg0, pg1, body0, body1 );
		
//		List<WebNovelInfoDTO> adminWebNovelList = new AdminWebNovelService().AdminSelectAllNovel();
//				
//		
//		if(!adminWebNovelList.isEmpty()) {		// 관리자 페이지에서 웹소설이 조회 되었다면
//
//			path = "/WEB-INF/views/admin/webnovel/adminWebnovel.jsp";
//			request.setAttribute("adminWebNovelList", adminWebNovelList);
//
//		}else {							// 관리자 페이지에서 웹소설이 조회 되지 않았다면
//			path = "/WEB-INF/views/common/failed.jsp";
//			request.setAttribute("failedCode", "adminSelectAllWebNovel");
//
//
//		}
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

}
