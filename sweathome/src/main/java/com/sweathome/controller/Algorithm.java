package com.sweathome.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sweathome.domain.DAO;
import com.sweathome.domain.mb_user;
import com.sweathome.domain.tb_nutritionfact;
import com.sweathome.domain.tb_product;

public class Algorithm extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		// 탄수화물 - 단백질 - 지방 순으로 필요영양소에서 제품 영양소를 빼는 알고리즘
		
		// 1. 세션에 저장된 유저의 필요한 영양성분을 가져온다.
		HttpSession session = request.getSession();
		mb_user user = (mb_user) session.getAttribute("user_login");
		DAO dao = new DAO();
		
		int USER_CARBOHYDRATE = user.getUSER_CARBOHYDRATE();
		int USER_PROTEIN = user.getUSER_PROTEIN();
		int USER_FAT = user.getUSER_FAT();
		int USER_CALORIES = user.getUSER_CALORIES();
		
		// 1-1 3끼에 맞춰서 3등분하고 변수에 담는다.
		int meal_carbohydrate = (USER_CARBOHYDRATE / 3);
		int meal_protein = (USER_PROTEIN / 3);
		int meal_fat = (USER_FAT / 3);
		int meal_calories = (USER_CALORIES / 3);
		
		int i = 0;
		
		ArrayList<String> name = new ArrayList<>();
		
		
		
		List<tb_product> prod_calbodrate = dao.product_select_carbohydrate(meal_carbohydrate);
		
		
		while(true) {
			
			meal_carbohydrate = meal_carbohydrate - prod_calbodrate.get(i).getCARBOHYDRATE();
			meal_protein = meal_protein - prod_calbodrate.get(i).getPROTEIN();
			meal_fat = meal_fat - prod_calbodrate.get(i).getFAT();
		
			if(meal_carbohydrate < 10) {
			break;
			}else if(meal_protein < 7) {
			break;
			}else if(meal_fat < 5) {
			break;
			}
			i++;
			name.add(prod_calbodrate.get(i).getPROD_NAME());
		}
	
			
		List<tb_product> prod_protein = dao.product_select_protein(meal_protein);
		
		i = 0;
		while(true) {
			
			meal_carbohydrate = meal_carbohydrate - prod_protein.get(i).getCARBOHYDRATE();
			meal_protein = meal_protein - prod_protein.get(i).getPROTEIN();
			meal_fat = meal_fat - prod_protein.get(i).getFAT();
		
			if(meal_carbohydrate < 10) {
			break;
			}else if(meal_protein < 7) {
			break;
			}else if(meal_fat < 5) {
			break;
			}
			i++;
			name.add(prod_protein.get(i).getPROD_NAME());
		}
		
		List<tb_product> prod_fat = dao.product_select_fat(meal_fat);
		
		i = 0;
		while(true) {
			meal_carbohydrate = meal_carbohydrate - prod_fat.get(i).getCARBOHYDRATE();
			meal_protein = meal_protein - prod_fat.get(i).getPROTEIN();
			meal_fat = meal_fat - prod_fat.get(i).getFAT();
		
			if(meal_carbohydrate < 10) {
			break;
			}else if(meal_protein < 7) {
			break;
			}else if(meal_fat < 5) {
			break;
			}
			i++;
			name.add(prod_fat.get(i).getPROD_NAME());
		}
		
		
		
		
	}

}
