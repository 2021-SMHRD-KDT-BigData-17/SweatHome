package com.sweathome.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.KeySelector.Purpose;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;

public class Joincon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	
	int USER_CARBOHYDRATE = 0; // 유저 권장 섭취 탄수
	int USER_CALORIES = 0; // 유저 권장 섭취 칼로리
	int USER_PROTEIN = 0; // 유저 권장 섭취 단백질
	int USER_FAT = 0; // 유저 권장 섭취 지방
	
	
	String USER_ID = request.getParameter("user_id"); // 유저 아이디
	String USER_PW = request.getParameter("user_pw"); // 유저 비밀번호
	String USER_NAME = request.getParameter("user_name"); // 유저 이름
	String USER_PHONE = request.getParameter("user_phone"); // 유저 전화번호
	int USER_HEIGHT = Integer.parseInt(request.getParameter("user_height")); // 유저 키
	int USER_AGE = Integer.parseInt(request.getParameter("user_age")); // 유저 나이
	int USER_GENDER = Integer.parseInt(request.getParameter("user_gender")); // 유저 성별 (남자:0, 여자:1)
	int USER_WEIGHT = Integer.parseInt(request.getParameter("user_weight")); // 유저 몸무게
	int USER_PURPOSE = Integer.parseInt(request.getParameter("user_purpose")); // 유저 운동목적 (다이어트:0, 유지 : 1 벌크업: 2)
	int USER_MOMENT = Integer.parseInt(request.getParameter("user_moment")); // 유저 활동량 (매우적음:0, 적음:1, 보통:2, 많음:3, 매우 많음:4)
	int USER_DIET_DAY = Integer.parseInt(request.getParameter("user_diet_day")); // 유저 다이어트기간(달)
	
	
	
	// 유저가 기입하지 않는 보
	// 데이터베이스에 들어가지 않는, 유저 기초대사량 공식
	int base = 0;
	if(USER_GENDER == 0) {
		base = (int)(88.4+(13.4*USER_WEIGHT)+(4.8*USER_HEIGHT)-(5.68*USER_AGE));
	}else {
		base = (int)(447.6+(9.25*USER_WEIGHT)+(3.1*USER_HEIGHT)-(4.33*USER_AGE));
	}
	
	
	// 활동칼로리
	int USER_MOMENT_CALORIES = 0; // 유저 활동 칼로리
	switch(USER_MOMENT) {
		case 0 :
			USER_MOMENT_CALORIES = (int)(base*1.2);
			break;
		case 1 :
			USER_MOMENT_CALORIES = (int)(base*1.375);
			break;
		case 2 :
			USER_MOMENT_CALORIES = (int)(base*1.555);
			break;
		case 3 :
			USER_MOMENT_CALORIES = (int)(base*1.725);
			break;
		case 4 :
			USER_MOMENT_CALORIES = (int)(base*1.9);
			break;
		}
			
	
		switch(USER_PURPOSE) {
			case 0:
				USER_CALORIES = USER_MOMENT_CALORIES-750;
				break;
			case 1:
				USER_CALORIES = USER_MOMENT_CALORIES+500;
				break;
			case 2:
				USER_CALORIES = USER_MOMENT_CALORIES;
				break;
		}
		
		
	
		switch(USER_PURPOSE) {
			case 0:
				USER_CARBOHYDRATE = (int)(USER_CALORIES*0.4);
				break;
			case 1:
				USER_CARBOHYDRATE = (int)(USER_CALORIES*0.6);
				break;
}
	
	
	switch(USER_PURPOSE) {
	case 0:
		USER_PROTEIN = (int)(USER_CALORIES*0.4);
		break;
	case 1:
		USER_PROTEIN = (int)(USER_CALORIES*0.3);
		break;
}
	
	
	switch(USER_PURPOSE) {
	case 0:
		USER_FAT = (int)(USER_CALORIES*0.2);
		break;
	case 1:
		USER_FAT = (int)(USER_CALORIES*0.1);
		break;
}	
	int USER_ACCU_POINT = 0; // 유저 누적 포인트
	int USER_POINT = 0; // 유저 보유 포인트
	//String USER_JOINDATE = request.getParameter("user_joindate");// 유저 가입일자
	String USER_JOINDATE = "2023-03-28";// 유저 가입일자
	
	int USER_TYPE = 0; // 관리자 구분(일반 사용자:0, 관리자:1)
	
	
	mb_user user = new mb_user(USER_ID, USER_PW, USER_NAME, USER_PHONE, USER_HEIGHT, USER_AGE, USER_GENDER, USER_WEIGHT, USER_PURPOSE, USER_MOMENT, USER_DIET_DAY, USER_MOMENT_CALORIES, USER_CALORIES, USER_CARBOHYDRATE, USER_PROTEIN, USER_FAT, USER_ACCU_POINT, USER_POINT, USER_JOINDATE, USER_TYPE);
	
	DAO dao = new DAO();
	
	int cnt = dao.user_insert(user);
	
	if(cnt>0) {
		System.out.println("JoinCon : 회원가입 성공!!");
		//RequestDispatcher rd = request.getRequestDispatcher("");
		//request.setAttribute("joinEmail", email);
		//rd.forward(request, response);
		response.sendRedirect("");
		
	}else {
		System.out.println("JoinCon : 회원가입 실패!!");
		//RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
		//request.setAttribute("joinEmail", email);
		//rd.forward(request, response);
		response.sendRedirect("");
		}
	}

}
