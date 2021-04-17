package com.lastbug.firstbook.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lastbug.firstbook.member.model.service.MemberService;

/**
 * Servlet implementation class ChargeCoinServlet
 */
@WebServlet("/firstbook/member/chargeCoin")
public class ChargeCoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int webNumajax = Integer.parseInt(request.getParameter("webNumajax"));
		int webchapNumajax = Integer.parseInt(request.getParameter("webchapNumajax"));
		int webIdajax = Integer.parseInt(request.getParameter("webIdajax"));
		int webChapPerPriceajax = Integer.parseInt(request.getParameter("webChapPerPriceajax"));
		String chapPerIsUsedajax = request.getParameter("chapPerIsUsedajax");
		String chapReadorNotajax = request.getParameter("chapReadorNotajax");
		
		System.out.println("webNum" + webNumajax);
		
		MemberService memService = new MemberService();
		
//		int result = memService.chargeCoin(webNumajax, webchapNumajax, webIdajax);
		
	}



}
