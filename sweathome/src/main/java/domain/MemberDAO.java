package domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	
	   // DB에서 연결 고리를 만들어 놓고 가져다 쓸 수 있게 sqlSession생성
	   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	   SqlSession sqlSession = sqlSessionFactory.openSession();
	   
	   // 회원가입 기능 구현
	   
	   public int insertMember(Member joinMember) {
		   int cnt = 0;
		   try {
			  cnt = sqlSession.insert("insertMember", joinMember);
			  if (cnt>0) {
				  System.out.println("DAO에서는 회원가입 성공");
				  sqlSession.commit();
			  }else {
				  System.out.println("회원가입 실패");
				  sqlSession.rollback();
			  }
		   }catch(Exception e) {
			   e.printStackTrace();
		   }finally {
			//DB 연결고리인 sqlSession반납
			   sqlSession.close();
		}
		   
		   
		   
		   
		   return cnt;
	   }//insertMember 끝
	
}
