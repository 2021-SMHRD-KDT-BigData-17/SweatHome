package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;


public class Deletecon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 유저의 아이디와 비밀번호를 불러와서 일치하면 컬럼 삭제, 세션 삭제
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		mb_user user_login =  (mb_user) session.getAttribute("user_login");
		
		DAO dao = new DAO();
		
		String USER_ID = user_login.getUSER_ID();
		String USER_PW = request.getParameter("user_pw");
		
		mb_user user = new mb_user(USER_ID, USER_PW);
		
		int cnt = dao.user_delete(user);
		
		if (cnt>0) {
			// 삭제 성공하면 세션도 같이 지우고 메인페이지로 이동
			session.removeAttribute("user_login");
			response.sendRedirect("main.jsp");
		}else {
			// 삭제 실패했으므로 다시 마이페이지로 이동
			response.sendRedirect("mypage.jsp");
		}
	}

}
