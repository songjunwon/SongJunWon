package com.lastbug.firstbook.admin.webnovel.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.admin.webnovel.model.service.AdminWebNovelService;
import com.lastbug.firstbook.common.paging.Pagenation;
import com.lastbug.firstbook.webnovel.model.dto.PageInfoDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovChapSearchDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovContentDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;


@WebServlet("/admin/novel/update")
public class AdminUpdateWebnovelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			/* 0보다 작은 숫자가 넘어오면 1페이지를 보여준다. */
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		WebNovelService webService = new WebNovelService();
		int totalCount = webService.selectTotalCount();
		
		int limit = 10;
		
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		
		
		
		int no = Integer.valueOf(request.getParameter("webNovNum"));
		AdminWebNovelService webAdminService = new AdminWebNovelService();
		WebNovelInfoDTO webNovelUpdate = webAdminService.adminSelectWebNovelDetail(no);
		
		
		
		WebNovelService webNovelService = new WebNovelService();
		
		WebNovelInfoDTO webDetail = webNovelService.selectWebNovelDetail(no);
		
		List<WebNovChapSearchDTO> webNovelChap = null;
		List<WebNovChapSearchDTO> webNovelChap2 = null;
		
		if(webDetail != null) {
			
			webNovelChap = webNovelService.selectWebNovelallChapter(webDetail);
			webNovelChap2 = webNovelService.selectWebNovelallChapterNotFree(webDetail);
	
			for(WebNovChapSearchDTO a : webNovelChap) {
				System.out.println("a" +a);
			}
			for(WebNovChapSearchDTO b : webNovelChap2) {
				System.out.println("b" + b);
			}
		}
		
				
		
		String path = "";
		if(webNovelUpdate!= null) {
			path = "/WEB-INF/views/admin/webnovel/webNovelUpdate.jsp";
			request.setAttribute("webNovelUpdate", webNovelUpdate);
			request.setAttribute("webnovel", webDetail);
			request.setAttribute("webnoveldetail", webNovelChap);
			request.setAttribute("webnoveldetail2", webNovelChap2);
			request.setAttribute("pageInfo", pageInfo);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "adminSelectWebNovelDetail");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int no = Integer.valueOf(request.getParameter("webNovNum"));
		
		
		
		String path = "";
		
		List<WebNovelInfoDTO> adminWebNovelList = new AdminWebNovelService().AdminSelectAllNovel();
				
		
		if(!adminWebNovelList.isEmpty()) {		// 관리자 페이지에서 웹소설이 조회 되었다면
			//			System.out.println("조회됨?");
			path = "/WEB-INF/views/admin/webnovel/adminWebnovel.jsp";
			request.setAttribute("adminWebNovelList", adminWebNovelList);

		}else {							// 관리자 페이지에서 웹소설이 조회 되지 않았다면
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "adminSelectAllWebNovel");


		}
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
