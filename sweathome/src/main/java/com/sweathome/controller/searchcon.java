package com.sweathome.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.google.gson.Gson;
import com.sweathome.domain.DAO;
import com.sweathome.domain.tb_nutritionfact;

public class searchcon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	DAO dao = new DAO();	
	request.setCharacterEncoding("utf-8");
	ServletContext context = getServletContext();
	// String json = request.getParameter("json");
	Gson gson = new Gson();
	
	String keyword = request.getParameter("searchWord");
	
	List<tb_nutritionfact> search = dao.nutri_search(keyword);
	
	// ajax 사용
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
	
	request.setAttribute("search", search);
	
	if(search != null) {
		String search_result = gson.toJson(search);
		out.print(search_result);
		

	} else {

	}
	
	}

}
