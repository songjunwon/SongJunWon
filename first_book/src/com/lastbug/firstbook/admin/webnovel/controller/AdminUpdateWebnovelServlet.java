package com.lastbug.firstbook.admin.webnovel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.admin.webnovel.model.service.AdminWebNovelService;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;


@WebServlet("/admin/novel/update")
public class AdminUpdateWebnovelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("dd");
		
		int no = Integer.valueOf(request.getParameter("webNovNum"));
		AdminWebNovelService webAdminService = new AdminWebNovelService();
		WebNovelInfoDTO webNovelUpdate = webAdminService.adminSelectWebNovelDetail(no);
		
		
		String path = "";
		if(webNovelUpdate!= null) {
			path = "/WEB-INF/views/admin/webnovel/webNovelUpdate.jsp";
			request.setAttribute("webNovelUpdate", webNovelUpdate);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "adminSelectWebNovelDetail");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String webtitle = request.getParameter("webTitle");
		String imglocation2 = request.getParameter("imgLocation");
	
		System.out.println("title" + webtitle);
		System.out.println("imglocation(id)" + imglocation2);
	
	}

}
