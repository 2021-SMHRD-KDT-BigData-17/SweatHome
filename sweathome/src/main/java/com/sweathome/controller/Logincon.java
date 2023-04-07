package com.sweathome.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;
import com.sweathome.domain.tb_order;

public class Logincon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String USER_ID = request.getParameter("id");
		String USER_PW = request.getParameter("password");
		DAO dao = new DAO();
		mb_user login = new mb_user(USER_ID, USER_PW);
		mb_user user_login = dao.user_select(login);
		
		
		
		if(user_login != null) {
			// 로그인 성공
			
			// 로그인 한 사람의 정보를 세션에 저장 후, main.jsp로 이동
			// servler에서 session을 사용하는 경우엔 Session객체 생성
			session.setAttribute("user_login", user_login);
			response.sendRedirect("main.jsp");
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
			// 로그인 실패 창
		}
		
		// 로그인을 성공했든 안했든 main.jsp 이동하기 때문에 한 번만 작성
		mb_user user = (mb_user) session.getAttribute("user_login");
		
		String USER_ID1 = user.getUSER_ID(); // 세션에 저장되어 있는 유저 아이디
		
		List<tb_order> order = dao.order_select(USER_ID1);
		
		session.setAttribute("order", order);
		
		if(order != null) {
			System.out.println("주문내역 조회 성공");
		}else {
			System.out.println("주문내역 조회 실패");
		}
		
		
		
	}

}
