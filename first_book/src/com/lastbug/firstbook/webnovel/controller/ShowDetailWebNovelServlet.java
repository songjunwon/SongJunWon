package com.lastbug.firstbook.webnovel.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.webnovel.model.dto.WebNovChapSearchDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;


@WebServlet("/webnovel/detail")
public class ShowDetailWebNovelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		System.out.println("웹소설 디테일 서블릿 왔니?");
		int no = Integer.valueOf(request.getParameter("webNovNum"));
		
		WebNovelService webNovelService = new WebNovelService();
		
		/* 앞에서 전체 웹소설 목록 중에서 선택한 웹소설 번호로 웹소설 정보 조회 */
		WebNovelInfoDTO webDetail = webNovelService.selectWebNovelDetail(no);
		
		System.out.println("webDetail" + webDetail);
		List<WebNovChapSearchDTO> webNovelChap = null;
		List<WebNovChapSearchDTO> webNovelChap2 = null;
		
		
//		System.out.println("내가 선택한 회차는 " + webDetail);
		
		String path = "";
		/* 선택한 웹소설 조회가 null이 아닌 경우 */
		if(webDetail != null) {
			
			webNovelChap = webNovelService.selectWebNovelallChapter(webDetail);
			webNovelChap2 = webNovelService.selectWebNovelallChapterNotFree(webDetail);
	
			for(WebNovChapSearchDTO a : webNovelChap) {
				System.out.println("a" +a);
			}
			for(WebNovChapSearchDTO b : webNovelChap2) {
				System.out.println("b" + b);
			}
			
//			System.out.println("회차정보가 있나? " + webNovelChap);
			path = "/WEB-INF/views/webnovel/webDetail.jsp";
			request.setAttribute("webnovel", webDetail);
			request.setAttribute("webnoveldetail", webNovelChap);
			request.setAttribute("webnoveldetail2", webNovelChap2);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "webnovelPerChap");
		}
	
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}