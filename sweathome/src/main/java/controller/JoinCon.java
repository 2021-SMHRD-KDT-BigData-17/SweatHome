package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;
import domain.MemberDAO;

public class JoinCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		String email= request.getParameter("email");
		String pw =request.getParameter("pw");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");
		
		System.out.println(email);
		System.out.println(pw);
		System.out.println(tel);
		System.out.println(address);
		
		// 받아온 값을 Member 객체에 묶어 담아주기
		Member joinMember = new Member(email, pw, tel, address);
		// 받아온 값 확인
		System.out.println(joinMember.toString());
		
		// 3-1 DAO에 메소드 생성
		// 3-2 DAO 객체 생성
		MemberDAO dao = new MemberDAO();
		// 3-3 DAO 객체에 매개변수 담기
		// 3-4 DAO 메소드의 결과(반환)이 int형이나 객체 형태로 되면 다시 담아주기
		int cnt = dao.insertMember(joinMember);
		
		// 4 MemberMapper.xml에 sql문 작성
		
		// 5. 명령 후 처리
		// 회원가입 성공 -> joinSuccess.jsp이동
		// 회원가입 실패 -> main.jsp이동
		
		if(cnt>0) {
			System.out.println("JoinCon : 회원가입 성공");
			response.sendRedirect("joinSuccess.jsp");
		}else {
			System.out.println("JoinCon : 회원가입 실패");
			response.sendRedirect("main.jsp");
		}
	}

}
