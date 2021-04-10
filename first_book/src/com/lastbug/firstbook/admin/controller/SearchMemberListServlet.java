package com.lastbug.firstbook.admin.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.admin.model.service.AdminService;
import com.lastbug.firstbook.member.model.dto.MemberDTO;


@WebServlet("/admin/search")
public class SearchMemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String condition = request.getParameter("memSearchCondition");

		String value = request.getParameter("memSearchValue");
		
		System.out.println("condition : " + condition);
		System.out.println("value : " + value);
		
		
		AdminService adminService = new AdminService();
		
		List<MemberDTO> searchMemList = adminService.searchMemList(condition, value);
		
		for(MemberDTO md : searchMemList) {
			
			System.out.println(md);
			
		}
		
		String path="";
		
		if(!searchMemList.isEmpty()) {
			
			path = "/WEB-INF/views/admin/list.jsp";
			request.setAttribute("searchMemList", searchMemList);
			request.setAttribute("memSearchCondition", condition);
			request.setAttribute("memSearchValue" , value);
			
		} else {
			
			path = "/WEB-INF/views/common/errorPage.jsp";
			request.setAttribute("message", "회원 검색 조회 실패");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
		
		
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
