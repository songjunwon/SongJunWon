package com.lastbug.firstbook.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lastbug.firstbook.common.paging.Pagenation;
import com.lastbug.firstbook.member.model.dto.MemberDTO;
import com.lastbug.firstbook.member.model.service.MemberService;
import com.lastbug.firstbook.webnovel.model.dto.PageInfoDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovContentDetailDTO;
import com.lastbug.firstbook.webnovel.model.dto.WebNovelInfoDTO;
import com.lastbug.firstbook.webnovel.model.service.WebNovelService;

/**
 * Servlet implementation class ChargeCoinServlet
 */
@WebServlet("/member/chargeCoin")
public class ChargeCoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String memId = request.getParameter("memId");
		int webNovNum = Integer.parseInt(request.getParameter("webNovNum"));
		int webNovChapNum = Integer.parseInt(request.getParameter("webNovChapNum"));
//		int remain = Integer.parseInt(request.getParameter("remain"));
//		int webNovNum = Integer.parseInt(request.getParameter("webNovNum"));
//		int memId = Integer.parseInt(request.getParameter("memId"));
//		int chapPerPrice = Integer.parseInt(request.getParameter("chapPerPrice"));
//		String chapPerIsUsed = request.getParameter("chapPerIsUsed");
//		String chapReadOrNot = request.getParameter("chapReadOrNot");
		
		int memNum = ((MemberDTO)request.getSession().getAttribute("loginMember")).getMemNum();
		MemberService memberService = new MemberService();
		
		MemberDTO loginMember = memberService.selectMember(memNum);
		

		System.out.println("webNovChapNum" + webNovChapNum);
//		MemberDTO memDTO = new MemberDTO();
		MemberService memService = new MemberService();
		WebNovelService webService = new WebNovelService();
		
		MemberDTO result = webService.chargeCoin(webNovNum, webNovChapNum, memId, memNum);
		
//		WebNovelInfoDTO webDetail = webNovelService.selectWebNovelDetail(no);
		
		String currentPage = request.getParameter("currentPage");
		
		int totalCount = webService.searchWebNovelCountPaid(webNovNum, webNovChapNum);
		
		WebNovelInfoDTO title = webService.searchTitlePaid(webNovNum);
		System.out.println("현재코인" + result.getMemCoin());
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int limit = 2;
		
		int buttonAmount = 10;

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		/* 각 페이지 (웹뷰어에서 2페이지씩 보여지도록)에 보여줄 웹소설 챕터별 내용 뽑아오기 */
		List<WebNovContentDetailDTO> perChap = webService.selectPerChap(pageInfo, webNovNum, webNovChapNum);
	
//		MemberDTO loginMember = new MemberService().loginCheck(result);
		String path = "";

			if(!perChap.isEmpty()) {
				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);
				path = "/WEB-INF/views/webnovel/webviewer.jsp";
				request.setAttribute("perChap", perChap);
				request.setAttribute("pageInfo", pageInfo);
				request.setAttribute("currentWebNov", webNovNum);
				request.setAttribute("currentChap", webNovChapNum);
				request.setAttribute("title", title);
			} else {
				path = "/WEB-INF/views/common/failed.jsp";
				request.setAttribute("failedCode", "perChapContext");
			}
			
			
//		}
		
		
		request.getRequestDispatcher(path).forward(request, response);

		
		
	}



}
