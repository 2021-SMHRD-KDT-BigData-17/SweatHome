<%@page import="com.sweathome.domain.mb_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% 
	mb_user user = (mb_user)session.getAttribute("user_login");
	String purpose = null;
	String moment = null;
	String gender = null;
	
	
	switch(user.getUSER_GENDER()){
			case 0 : gender = "남자";
				break;
			case 1 : gender = "여자";
				break;
	}
	
	switch(user.getUSER_MOMENT()){
		case 0 : purpose = "매우적음";
				break;
		case 1 : purpose = "적음";
				break;
		case 2 : purpose = "보통";
				break;
		case 3 : purpose = "많음";
				break;
		case 4 : purpose = "매우많음";
				break;
	}
	
	switch(user.getUSER_PURPOSE()){
		case 0 : moment = "다이어트";
				break;
		case 1 : moment = "벌크업";
				break;
		case 2 : moment = "유지";
				break;
	}
	
	
	%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>my page</title>
    <link rel="stylesheet" href="CSS/mypage.css">
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
   <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <script type="text/javascript">
   
      $(document).ready( function() {

      $("#headers").load("header.jsp");  // 원하는 파일 경로를 삽입하면 된다
      $("#footers").load("footer1.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

});
   </script>
    
</head>
<!-- 이름 전화번호 아이디 나이 성별 키 몸무게 운동목적 -->
<body>
<div id='headers'></div>
    <div class="path"></div>
    <div id="container">
        <div id="contents">
            
            <div class="user">
                <div class="user_info">
                    <div class="usertable">
                        <div class="user_t">
                            <div class="user_name">
                                <div class="titleArea">
                                    <h2>MY PAGE</h2>
                                </div>
                                <span class="txt">안녕하세요 <%=user.getUSER_MB_NAME()%>님!</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="area"></div>
            <div class="member-edit">
                <div class="table">
                    <table border="1">


                        <colgroup>
                            <col>
                            <col>
                        </colgroup>
                        <tbody>
                            <tr class="content">
                                <th scope="row" class="head">
                                    이름
                                </th>

                                <td>
                                    <%= user.getUSER_MB_NAME()%>
                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    전화번호  
                                </th>
                                <td>
                                    <%= user.getUSER_PHONE()%>
                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    아이디
                                </th>

                                <td>
                                    <%= user.getUSER_ID() %>
                                </td>
                            </tr>
<!-- 이름 전화번호 아이디 나이 성별 키 몸무게 운동목적 -->
                            <tr class="content">
                                <th scope="row" class="head">
                                    나이
                                </th>

                                <td>
                                    <%= user.getUSER_AGE()%>세

                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    성별
                                </th>

                                <td>
                                    <%=gender%>
                                    
                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    키
                                </th>

                                <td>
                            
                                    <%= user.getUSER_HEIGHT() %>cm
                                    <p class="txtInfo" id="heightMsg"></p>

                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    몸무게
                                </th>

                                <td>
                                    <%=user.getUSER_WEIGHT() %>kg
                                    <p class="txtInfo" id="weightMsg"></p>

                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    운동목적
                                </th>

                                <td>
                                    <%=purpose %>
                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    활동량
                                </th>

                                <td>
                                    <%=moment %>
                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    다이어트 기간
                                </th>

                                <td>
                                    <%=user.getUSER_DIET_DAY() %>개월
                                </td>
                            </tr>
                            <tr class="content">
                                <th scope="row" class="head">
                                    적립금
                                </th>
									
                                <td>
                                    <%= user.getUSER_POINT() %>원
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="base-button">
                	<a href="주문정보조회.jsp">
                    	<section class="order-button">
                    		<input type="submit" value="주문조회" class="btn">
                    	</section>
                    </a>
                    <span>&nbsp;&nbsp;</span>
                    <form action="회원정보수정.jsp">
                        <section class="select-button">
                        <input type="submit" value="회원정보수정" class="btn">
                    </form>
                    
                    </section>
                    <!-- 비밀번호만 입력하는 팝업창으로 갈 수 있게 -->
                    <span>&nbsp;&nbsp;</span>
                    
                    <form action="회원탈퇴.html">
                        <section class="out-button">
                            <input type="submit" value="회원탈퇴" class="btn">
                        </section> 
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div id='footers'></div>
</body>

</html>