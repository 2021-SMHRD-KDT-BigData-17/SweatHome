package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;
import com.sweathome.domain.tb_shopping_basket;

public class Shopping_basketcon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		mb_user user =(mb_user) request.getAttribute("user_login");
		DAO dao = new DAO();
		String prod_name = request.getParameter("prod_name");
		
		// 클릭한 상품을 장바구니에 담는다.
		// 클릭한 상품의 이름을 가져온다.
		// 이름을 조건으로 상품의 인덱스값을 가져온다.
		
		String USER_ID = user.getUSER_ID();
		int PROD_IDX = dao.prod_idx_select(prod_name); 
		int PROD_CNT = Integer.parseInt(request.getParameter("prod_cnt"));
		
		tb_shopping_basket basket = new tb_shopping_basket(USER_ID, PROD_IDX, PROD_CNT, PROD_CNT);
		
		int basket_cnt = dao.shopping_basket_insert(basket);

		if(basket_cnt > 0) {
			System.out.println("장바구니 담기 성공");
			//장바구니로 이동할지, 계속 쇼핑할지 알림창 출력
		}else {
			System.out.println("장바구니 담기 실패");
		}
	
		
		//세션에 객체 담기
		session.setAttribute("basket", basket);
		
	}

}
