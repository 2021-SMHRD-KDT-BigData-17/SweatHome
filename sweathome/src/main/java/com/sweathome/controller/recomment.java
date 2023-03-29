package com.sweathome.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.mb_user;

public class recomment extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 입력받은 식단과 필요 영양소의 차이를 계산하는 컨트롤러
		
		
		
		// 1. DB에서 영양소 값 가져오기
		
		// 2. 세션에 저장되어 있는 유저의 필요 영양소 값 가져오기
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		mb_user user = (mb_user) session.getAttribute("user_login");
		int USER_CARBOHYDRATE = user.getUSER_CARBOHYDRATE();
		int USER_PROTEIN = user.getUSER_CARBOHYDRATE();
		int USER_FAT = user.getUSER_CARBOHYDRATE();
		int USER_CALRORIES = user.getUSER_CALORIES();
		// 3. 진행했던 식단의 영양소 값 가져오기
		int ATE_CARBOHYDRATE = Integer.parseInt(request.getParameter("ate_carbohydrate"));
		int ATE_PROTEIN = Integer.parseInt(request.getParameter("ate_carbohydrate"));
		int ATE_FAT = Integer.parseInt(request.getParameter("ate_carbohydrate"));
		int ATE_CALORIES = Integer.parseInt(request.getParameter("ate_carbohydrate"));
		
		
		// 4. 2와 3의 오차 변수에 담기
		// 부족한 영양소, 과잉 영양소 출력
		int car_cnt = 0;
		int pro_cnt = 0;
		int fat_cnt = 0;
		int cal_cnt = 0;
		if(USER_CARBOHYDRATE > ATE_CARBOHYDRATE) {
			car_cnt = USER_CARBOHYDRATE - ATE_CARBOHYDRATE;
		}else{
			car_cnt = ATE_CARBOHYDRATE - USER_CARBOHYDRATE;
		}
		
		if(USER_PROTEIN > ATE_PROTEIN) {
			pro_cnt = USER_PROTEIN - ATE_PROTEIN;
		}else{
			pro_cnt = ATE_PROTEIN - USER_PROTEIN;
		}
		
		if(USER_FAT > ATE_FAT) {
			fat_cnt = USER_FAT - ATE_FAT;
		}else{
			fat_cnt = ATE_FAT - USER_FAT;
		}
		
		if(USER_CALRORIES > ATE_CALORIES) {
			fat_cnt = USER_CALRORIES - ATE_CALORIES;
		}else{
			fat_cnt = ATE_CALORIES - USER_CALRORIES;
		}
		
		request.setAttribute("car_cnt", car_cnt);
		request.setAttribute("pro_cnt", pro_cnt);
		request.setAttribute("fat_cnt", fat_cnt);
		request.setAttribute("cal_cnt", cal_cnt);
		
		
	}

}
