package com.lastbug.firstbook.webnovel.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@WebServlet("/firstbook/ajax/test")
public class WebnovelAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Gson gson = new Gson();
		
		/* toJson으로 json문자열을 만들 수 있다. */
//		String jsonString= gson.toJson();
//		System.out.println(jsonString);
		
		
		/*
		 * if(pageNo == 1) { pageInfo.setStartRow(1); pageInfo.setEndRow(10); } else {
		 * pageInfo.setStartRow(pageInfo.getPageNo() + (9 * (pageInfo.getPageNo() -
		 * 1))); pageInfo.setEndRow(pageInfo.getPageNo() * 10); }
		 */
		
		
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
//		out.print(jsonString);
		
		out.flush();
		out.close();
		
		
		
	}


}
