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
	HttpSession session = request.getSession();
	DAO dao = new DAO();
	
	mb_user user_detail = (mb_user) session.getAttribute("user_login");
	String user_id = user_detail.getUSER_ID(); // 세션에 저장되어 있는 유저 아이디
	List<Integer> ORDER_IDX = dao.order_idx_selectAll(user_id);// 주문상태(0) and 유저 아이디
	String prod_name = request.getParameter("prod_name"); // 상품 이름
	int PROD_IDX = dao.prod_idx_select(prod_name);// 상품 이름 웨얼절 써서 가져오기
	
	int OD_CNT = Integer.parseInt(request.getParameter("od_cnt"));
	
//	session.setAttribute("", OD_CNT);
	
	}

}
