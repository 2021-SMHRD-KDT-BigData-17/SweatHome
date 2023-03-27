package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;

public class Logincon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String USER_ID = request.getParameter("user_id");
		String USER_PW = request.getParameter("user_pw");
		
		DAO dao = new DAO();
		
		mb_user login = new mb_user(USER_ID, USER_PW);
		
		mb_user user_login = dao.user_select(login);
		
		if(user_login != null) {
			// 로그인 성공
			
			// 로그인 한 사람의 정보를 세션에 저장 후, main.jsp로 이동
			// servler에서 session을 사용하는 경우엔 Session객체 생성
			HttpSession session = request.getSession();
			session.setAttribute("user_login", user_login);
			
		}else {
			// 로그인 실패 창
		}
		
		// 로그인을 성공했든 안했든 main.jsp 이동하기 때문에 한 번만 작성
		response.sendRedirect("");
		
	}

}
