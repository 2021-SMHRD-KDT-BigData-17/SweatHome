package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.DAO;

public class Orderdetailcon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session = request.getSession();
	
	DAO dao = new DAO();
	String prod_name = request.getParameter("prod_name");
	int PROD_IDX = dao.prod_idx_select(prod_name);
	int OD_CNT = Integer.parseInt(request.getParameter("od_cnt"));
	
//	session.setAttribute("", OD_CNT);
	
	}

}
