package com.lastbug.firstbook.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.admin.model.service.AdminService;
import com.lastbug.firstbook.member.model.dto.MemberDTO;


@WebServlet("/admin/block")
public class BlockMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String blockCheck = request.getParameter("blockCheck");
		
		System.out.println("y or n : " +  blockCheck);
			
		
		String path = "";
		
		if(blockCheck!=null) {
			
			path = "/WEB-INF/views/admin/memberList.jsp";
			request.setAttribute("blockCheck", blockCheck);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("failedCode", "멤버리스트 조회실패");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String blockCheck = request.getParameter("blockCheck");
		
		System.out.println("post" + blockCheck);
		
		AdminService adminService = new AdminService();
		
		List<MemberDTO> memList = adminService.selectAllMemList();
		
		
	}
	
	
}
