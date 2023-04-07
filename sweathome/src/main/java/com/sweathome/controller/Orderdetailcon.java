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

public class Orderdetailcon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	
	HttpSession session = request.getSession();
	mb_user user_detail = (mb_user) session.getAttribute("user_login");
	
	DAO dao = new DAO();
	
	String USER_ID = user_detail.getUSER_ID(); // 세션에 저장되어 있는 유저 아이디
	
	List<tb_order> order = dao.order_select(USER_ID);
	
	session.setAttribute("order", order);
	
	if(order != null) {
		System.out.println("주문내역 조회 성공");
	}else {
		System.out.println("주문내역 조회 실패");
	}
	
//	session.setAttribute("", OD_CNT);
	
	}

}
