<%@page import="com.sweathome.domain.mb_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
	mb_user user = (mb_user)session.getAttribute("user_login");

	%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 화면</title>
	<link rel="stylesheet" href="CSS/header.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready( function() {

		$("#headers").load("common/header.html");  // 원하는 파일 경로를 삽입하면 된다
		$("#footers").load("footer1.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

});
	</script>
    

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script src="footer.js"></script>
</head>
<body>
	<!-- 헤더시작 (헤더로따로뺄것) -->

    <div class="top">
        <p id="banner" width="100%" height="50px" >자신의 몸은 부엌에서 만들어진다. (Your body is made in the kitchen).</p>
        <div class="in_Layer">
            <div class="utill_menu">
                <!-- <li class="JOINUS"> -->
                    <!-- <a href="회원가입.html" class="Join" rel="modal:open">
						<img src="/img/가입4.png" width="70px" height="60px"><br>	 -->
                        <!-- </a> -->
                        <!-- </li>
                            <li class="LOGIN"> -->
                                <!-- <a href="login.html" class="login" rel="modal:open"> -->
                                    <!-- <img src="/img/로그인3.png" width="60px" height="50px" ><br> -->
                                    <!-- </a> -->
                                    <!-- </li>
                                        <li class="goshop"> -->
                                            <!-- <a href="전자상거래.html" class="shop-move"> -->
                                                <!-- <img src="/img/샵이동2.png" width="60px" height="50px" ><br> -->
                
                
                <a href="전자상거래.jsp" class="goshop-text" id="moving-icon" >탄단지 샵</a>
                
                
                 
                <% if(user == null) { %>
                
                <a href="login.html" class="login-text" rel="modal:open">LOGIN</a> 
                <a href="회원가입2.html" class="Join-text" rel="modal:open">JOIN US</a>
					<!-- </a> -->
                <!-- </li> -->
                <%} else {%>
                <a href="Logoutcon" class="Join-text">로그아웃</a>
                <a href="" class="Join-text" rel="modal:open">마이페이지</a>
                
                <%} %>
                
            </div>
        </div>
    </div>
   
    <header>
        <div>
            <a href="main.jsp">
                <img src="img/logo1.png" alt height="70px" width="70px" >
            </a>
        </div>
		
	</header>
    <hr color=" #fabfba" size="4px" width="97%"  >
	
</body>
</html>