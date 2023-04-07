package com.sweathome.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sweathome.database.SqlSessionManager;

public class DAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int user_insert(mb_user user) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("user_insert", user);
			if(cnt>0) {
				System.out.println("DAO에서는 회원가입 성공");
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		} // finally 끝
		
		
		return cnt;
	}
	
	// 로그인 기능 구현
		public mb_user user_select(mb_user login) {
			mb_user loginMember = null;
			try {
				loginMember = sqlSession.selectOne("user_login", login);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
			} // finally 끝
			
			return loginMember;
		}
		
		
		// 회원 탈퇴 기능
		
		public int user_delete(mb_user user) {
			int cnt = 0;
			try {
				cnt = sqlSession.delete("user_delete", user);
				if(cnt>0) {
					sqlSession.commit();
					// 메인페이지 이동
				}else {
					sqlSession.rollback();
					// 마이페이지 이동
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			} // finally 끝
			return cnt;
		}
		
		// 회원 수정 기능
		public int user_update(mb_user user_update) {
			int cnt=0;
			
			try {
				cnt = sqlSession.insert("user_update", user_update);
				if(cnt>0) {
					System.out.println("DAO에서는 회원수정 성공");
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			} // finally 끝
			return cnt;
	}
		
		// 일정범위내의 탄수화물 리스트를 가져오는 기능
		public List<tb_product> product_select_carbohydrate(int carbohydrate) {
			List<tb_product> algorithm_product = null;
			
			try {
				algorithm_product = sqlSession.selectList("product_select_carbohydrate", carbohydrate);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			return algorithm_product;
		}
		
		public List<tb_product> product_select_protein(int protein) {
			List<tb_product> algorithm_product = null;
			
			try {
				algorithm_product = sqlSession.selectList("product_select_protein", protein);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			return algorithm_product;
		}
		
		public List<tb_product> product_select_fat(int fat) {
			List<tb_product> algorithm_product = null;
			
			try {
				algorithm_product = sqlSession.selectList("product_select_fat", fat);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			return algorithm_product;
		}
		
		public List<tb_product> product_select_allinone() {
			List<tb_product> algorithm_product = null;
			
			try {
				algorithm_product = sqlSession.selectList("product_select_allinone");
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			return algorithm_product;
		}
		
		public int order_insert(tb_order order) {
			int cnt = 0;
			try {
				cnt = sqlSession.insert("order_insert", order);
				if(cnt>0) {
					System.out.println("DAO에서는 주문서 입력 완료");
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			} // finally 끝
			return cnt;
		}
		
		public int prod_idx_select(String prod_name) {
			int prod_idx = 0;
			
			try {
				prod_idx = sqlSession.selectOne("prod_idx_select", prod_name);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return prod_idx;
		}
		
		public int shopping_basket_insert(tb_shopping_basket basket) {
			int cnt = 0;
			try {
				cnt = sqlSession.insert("shoppint_basket_insert", basket);
				if(cnt>0) {
					System.out.println("DAO에서는 회원가입 성공");
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			} // finally 끝
			return cnt;
}
		
		public List<Integer> order_idx_selectAll(String user_name) {
			
			
			List<Integer> order_idx_selectAll = null;
			
			try {
				order_idx_selectAll = sqlSession.selectList("order_index selectAll", user_name);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			} // finally 끝
			
			return order_idx_selectAll;
		}

		
		public List<tb_product> product_name_price_select() {
			List<tb_product> product_name_price = null;
			
			try {
				product_name_price = sqlSession.selectList("product_name_price_select");
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return product_name_price;
		}
		
		public List<tb_product> product_page() {
			List<tb_product> product_page = null;
			
			try {
				product_page = sqlSession.selectList("product_page");
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			if(product_page != null) {
			}else {
			}
			
			return product_page;
		}
		
		public List<tb_nutritionfact> nutritionfacts(){
			List<tb_nutritionfact> nutritionfacts = null;
			
			try {
				nutritionfacts = sqlSession.selectList("nutritionfacts");
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			if(nutritionfacts != null) {
			}else {
			}
			
			return nutritionfacts;
		}
		
		public List<tb_nutritionfact> nutri_search(String keyword){
			List<tb_nutritionfact> nutri_search = null;
			
			try {
				nutri_search = sqlSession.selectList("nutri_search", keyword);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			if(nutri_search != null) {
				System.out.println("서치 성공");
			}else {
				System.out.println("서치 실패");
			}
			
			return nutri_search;
		}
		
		
		public tb_product product_name_select(String PROD_NAME) {
			tb_product product_page = null;
			
			try {
				product_page = sqlSession.selectOne("product_name_select", PROD_NAME);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			if(product_page != null) {
			}else {
			}
			
			return product_page;
		}
		
		public List<tb_order> order_select(String user_id) {
			List<tb_order> product_page = null;
			
			try {
				product_page = sqlSession.selectList("order_select", user_id);
			}catch(Exception e){
				e.printStackTrace();
			}finally {
			}
			if(product_page != null) {
			}else {
			}
			return product_page;
		}
		
//		public int product_stock_minus() {
//			int cnt=0;
//			
//			try {
//				cnt = sqlSession.insert("product_stock_minus", user_update);
//				if(cnt>0) {
//					System.out.println("상품재고 차감 성공");
//					sqlSession.commit();
//				}else {
//					sqlSession.rollback();
//				}
//			}catch (Exception e) {
//				e.printStackTrace();
//			}finally {
//				sqlSession.close();
//			} // finally 끝
//			return cnt;
//	}3
		
		
}