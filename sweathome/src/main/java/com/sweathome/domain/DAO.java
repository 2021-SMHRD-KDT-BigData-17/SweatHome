package com.sweathome.domain;

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
				loginMember = sqlSession.selectOne("user_select", login);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
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
}