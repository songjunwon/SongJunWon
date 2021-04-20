package com.lastbug.firstbook.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.common.paging.Pagenation;
import com.lastbug.firstbook.member.model.dto.NoticeDTO;
import com.lastbug.firstbook.member.model.service.MemberService;
import com.lastbug.firstbook.webnovel.model.dto.PageInfoDTO;


@WebServlet("/admin/notice")
public class AdminNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		MemberService memberService = new MemberService();
		int totalCount = memberService.selectTotalCount();
		
//		System.out.println("게시 가능한 게시물의 총 갯수 : " + totalCount);
		
		int limit = 14;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<NoticeDTO> noticeList = memberService.selectNoticeList(pageInfo);
		
//		for(NoticeDTO n : noticeList) {
//			System.out.println("한 페이지에 보여질 게시글들 : " + n);
//		}
		
		String path = "";
		if(!noticeList.isEmpty()) {
			path = "/WEB-INF/views/admin/adminNotice.jsp";
			request.setAttribute("noticeList", noticeList);
			request.setAttribute("pageInfo", pageInfo);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "noticeSelectList");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
		
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
