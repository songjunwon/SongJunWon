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


@WebServlet("/admin/webnovelCloseOpen")
public class WebnovelCloseAndOpenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		System.out.println("closeOrOpen");
			
			int no = Integer.valueOf(request.getParameter("webNovNum"));
			
			AdminWebNovelService awnService = new AdminWebNovelService();
			
			WebNovelInfoDTO novList = awnService.adminSelectWebNovelDetail(no);
						
			
			String CloseOrOpen = novList.getWebNovOpenOrClose();
			

			
			
			if(CloseOrOpen.equals("Y")){
				
				CloseOrOpen = "N";
				
			} else if(CloseOrOpen.equals("N")) {
				
				CloseOrOpen = "Y";
				
			}
			
			int result = awnService.WebNovelCloseOrOpen(no, CloseOrOpen, novList);
			
			
			
	}


}
