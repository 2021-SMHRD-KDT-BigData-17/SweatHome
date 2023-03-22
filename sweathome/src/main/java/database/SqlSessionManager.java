package database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	// SqlsessionFactory : SqlSession 생성(connection객체 생성)
	static SqlSessionFactory sqlSessionFactory;
	
	// static : 객체를 호출할 때 무조건 자동으로 한 번 실행되는 영영ㄱ
	static {
		try {
			String resource = "database/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			//DB연결을 미리 해놓음
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	// sqlSessionFactory를 DAO에서 사용할 수 있게 하는 메소드
	public static SqlSessionFactory getSqlSession(){
		return sqlSessionFactory;
	}
}
