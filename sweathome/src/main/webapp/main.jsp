<%@page import="com.sweathome.domain.tb_product"%>
<%@page import="java.util.List"%>
<%@page import="com.sweathome.domain.DAO"%>
<%@page import="com.sweathome.domain.mb_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	mb_user user = (mb_user)session.getAttribute("user_login");
	DAO dao = new DAO();
	List<tb_product> prod_list = dao.product_name_price_select();
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 화면</title>
	<link rel="stylesheet" href="CSS/main.css">
	<link rel="stylesheet" href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
	<script src="js/전자상거래.js"></script>
	<link rel="stylesheet" href="/login.html">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready( function() {

		$("#headers").load("header.jsp");  // 원하는 파일 경로를 삽입하면 된다
		$("#footers").load("footer1.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다
});
	</script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script src="footer.js"></script>
</head>
<body>
	<div id="headers"></div>

	<!-- 광고슬라이드 (늘릴수있음)----------------------------------------------------------------------------------------------------------->
<div id="wrap">
	
	<section>
			<div class="slide-container">
				<!-- 1번광고 -->
                <div class="slide active">
                    <img src="https://picsum.photos/id/237/800/300" alt="슬라이드 이미지 1">
				
                </div>
                <!-- 2번광고 -->
                <div class="slide">
                    <img src="https://picsum.photos/id/238/800/300" alt="슬라이드 이미지 2">
                </div>
                <!-- 3번광고 -->
                <div class="slide">
                    <img src="https://picsum.photos/id/239/800/300" alt="슬라이드 이미지 3">
                </div>
                
                <div class="slide-controls">
                    <button class="active" onclick="changeSlide(0)">1</button>
                    <button onclick="changeSlide(1)">2</button>
                    <button onclick="changeSlide(2)">3</button>
                </div>
            </div>
	</section>
	<!-- 추천상품   js쓸것 *****************************************************************************************************-->
    <section>
		<div class="RDproduct">
    		<%if(user != null) {%>	
            <h1 style="padding-left: 30%;"> <%=user.getUSER_MB_NAME()%>님을 위한 추천상품</h1>
			<%}else{%> 
			<h1 style="padding-left: 30%;"> 회원님을 위한 추천상품</h1>
			<% }%>
			
			<div class="shop-content">
				<!-- 상품1 -->
				<div class="product-box" >
					<img src="img/sel.jpg" alt="" class="product-img">
					<h2 class="product-title"><%=prod_list.get(0).getPROD_NAME()%></h2>
					<span class="price"><%=prod_list.get(0).getPROD_PRICE()%>₩</span>
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품2 -->
				<div class="product-box">
					<img src="img/sel.jpg" alt="" class="product-img">
					<h2 class="product-title"><%=prod_list.get(1).getPROD_NAME()%></h2>
					<span class="price"><%=prod_list.get(1).getPROD_PRICE()%>₩</span>
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품3 -->
				<div class="product-box">
					<img src="img/sel.jpg" alt="" class="product-img">
					<h2 class="product-title"><%=prod_list.get(2).getPROD_NAME()%></h2>
					<span class="price"><%=prod_list.get(2).getPROD_PRICE()%>₩</span>
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품4 -->
				<div class="product-box">
					<img src="img/sel.jpg" alt="" class="product-img">
					<h2 class="product-title"><%=prod_list.get(3).getPROD_NAME()%></h2>
					<span class="price"><%=prod_list.get(3).getPROD_PRICE()%>₩</span>
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
			</div>
		</div>
<!-- 칼로리검색기********************************************************************************************************************************** -->
		<div class="Search">
			<div class="enter">
				<h2>음식 칼로리 검색</h2>
				<form action="/search/result" method="GET">
					<input type="text" id="searchWord" name="searchWord" placeholder="음식을 입력하세요"
						maxlength="50" size="60" >
					<!-- <input id="searchButton" type="image" src="" style="width:25px; height:25px;" alt="Submit Form"/> -->
					<button class="searchButton">
						<img class="searchButtonImg" alt="Submit Form" src="/img/enter.gif" style="width:10px; height:10px;">
					</button>
				</form>
			</div>
			<div class="food-list">
				<table border>
					<th>번호</th>
					<th>음식명</th>
					<th>양</th>
					<th>칼로리</th>
					<th>탄수화물</th>
					<th>단백질</th>
					<th>지방</th>
					<tr>
						<td>1</td>
						<td>닭가슴살</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
				</table>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>

				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>a</p><br>
				<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p><br>
			</div>
		</div>
	</section>
	<!-- 퀵바 js처리할것(최근본상품 데이터베이스에 저장(임의의갯수 퀵바늘어남)후 출력************************************************************************ -->
    <div class="quickbar">
		<div class="quick_banner">
            <!-- <h2>
                최근상품
            </h2> -->
        </div>
		<!-- 최근본상품 1 -->
		<!-- <div class="quick_pk">
			<a href="">
           		<img src="/img/m1.jpg" alt="" width="50px" height="50px">
			</a>
        </div> -->
		<!-- 최근본상품 2 -->
		<!-- <div class="quick_pk">
			<a href="">
            	<img src="/img/m1.jpg" alt="" width="50px" height="50px">
			</a>
        </div> -->
		<!-- 최근본상품 3 -->
		<!-- <div class="quick_pk">
			<a href="">
            	<img src="/img/m1.jpg" alt="" width="50px" height="50px">
			</a>
        </div> -->
	
		<div class="quick_top">
            <a href="">
                
                TOP
            </a>
        </div>
	</div>
</div>
<br>
<hr color=" #fabfba" size="4px" width="97%"  >
<div class="youtub">
	<h1>간단한 홈트레이닝 추천영상!</h1>
	<video width="730" height="400" src="" controls></video>
	<video width="730" height="400" src="" controls></video>
	
</div>
	<!-- footer불러오기 -->
	<div id="footers"></div>

    <script>
		let slides = document.querySelectorAll('.slide');
		let controls = document.querySelectorAll('.slide-controls button');
		let currentSlide = 0;
		function changeSlide(index) {
			slides[currentSlide].classList.remove('active');
			controls[currentSlide].classList.remove('active');
			slides[index].classList.add('active');
			controls[index].classList.add('active');
			currentSlide = index;
		}
		
		setInterval(function() {
			let nextSlide = (currentSlide + 1) % slides.length;
			changeSlide(nextSlide);
		}, 5000);
		
	</script>
	
</body>
</html>