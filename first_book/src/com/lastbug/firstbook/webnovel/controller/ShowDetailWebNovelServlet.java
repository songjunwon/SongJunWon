package com.lastbug.firstbook.webnovel.controller;

import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.commit;
import static com.lastbug.firstbook.common.jdbc.JDBCTemplate.rollback;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.webnovel.model.dto.WebNovelDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;

/**
 * Servlet implementation class ShowDetailWebNovelServlet
 */
@WebServlet("/webnovel/detail")
public class ShowDetailWebNovelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		System.out.println("웹소설 디테일 서블릿 왔니?");
		int no = Integer.valueOf(request.getParameter("webNovNum"));
		
		WebNovelService webNovelService = new WebNovelService();
		
		WebNovelInfoDTO webDetail = webNovelService.selectWebNovelDetail(no);
		List<WebNovelDetailDTO> novelDetail2 = null;
		
		
		String path = "";
		/* 전체 웹소설이 null이 아닌 경우 */
		if(webDetail != null) {
			
			novelDetail2 = webNovelService.selectWebNovelDetail2(webDetail);
				/* 해당 웹소설에 대한 상세 정보가 있을 경우 */
				if(novelDetail2 != null) {
					
				}
			
//			System.out.println("내가 선택한 회차는 " + webDetail);
//			System.out.println("회차정보가 있나? " + novelDetail2);
			path = "/WEB-INF/views/webnovel/webDetail.jsp";
			request.setAttribute("webnovel", webDetail);
			request.setAttribute("webnoveldetail", novelDetail2);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "웹소설 상세 보기 조회에 실패하셨습니다.");
		}
	
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}