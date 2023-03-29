package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;
import com.sweathome.domain.tb_order;
import com.sweathome.domain.tb_product;

public class Ordercon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		mb_user order = (mb_user) session.getAttribute("user_login");
		String USER_ID = order.getUSER_ID();
		int POINT = order.getUSER_POINT(); // 세션에 저장된 유저의 원래 포인트
		int TOTAL_AMOUNT = Integer.parseInt(request.getParameter(""));
		int USER_POINT = (int) (POINT + TOTAL_AMOUNT*0.01); // 적립되는 포인트
		
		tb_order user_order = new tb_order(USER_ID, TOTAL_AMOUNT, USER_POINT);
				
		DAO dao = new DAO();
		int order_cnt = dao.order_insert(user_order);
		
		if(order_cnt >0) {
			System.out.println("주문 성공");
			response.sendRedirect(""); // 주문성공 페이지
		}else {
			System.out.println("주문 실패");
			response.sendRedirect(""); // 주문서 페이지
		}
		
		
		
		
	}

}
