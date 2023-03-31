package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.mb_user;

public class Logoutcon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		session.removeAttribute("user_login");
		response.sendRedirect("main.jsp");
		
		mb_user user = (mb_user) session.getAttribute("user_login");
		if(user == null) {
			System.out.println("로그아웃 성공");
		}else {
			System.out.println("로그아웃 실패");
		}
		
	}

}
