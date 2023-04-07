package com.sweathome.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.sweathome.domain.DAO;
import com.sweathome.domain.tb_product;

public class basketcon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO dao = new DAO();
		HttpSession session = request.getSession();
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		
		
		String PROD_NAME = request.getParameter("product_name");
		
		String[] list = gson.fromJson(PROD_NAME, String[].class);
		
		tb_product product = null;
		
		for (int i = 0; i < list.length; i++) {
			product = (tb_product) dao.product_name_select(list[i]);
			session.setAttribute("product"+i, product);
		}
		
//		tb_product prod = (tb_product)session.getAttribute("product0");
//		System.out.println(prod.getPROD_NAME());
		
		if(product != null) {
			System.out.println("받아온 값 결과 :::"+PROD_NAME+":::                빈값이면 없는 것");
			System.out.println("장바구니 검색 성공");
			String search_result = gson.toJson(product);
			out.print(search_result);
		} else {
			System.out.println("검색 안됐지롱");
		

		}
		
	}

}
