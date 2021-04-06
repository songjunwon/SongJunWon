package com.lastbug.firstbook.webnovel.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;

/**
 * Servlet implementation class ShowDetailWebNovelServlet
 */
@WebServlet("/webnovel/detail")
public class ShowDetailWebNovelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int no = Integer.valueOf(request.getParameter("webNovNum"));
		
		WebNovelService webNovelService = new WebNovelService();
		
		WebNovelInfoDTO webDetail = webNovelService.selectWebNovelDetail(no);
	
		
		
		
	}


}
