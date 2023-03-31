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
	
	List<tb_product> PRODUCT = dao.product_page();
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
                    <img src="img/메인광고.jpg" alt="슬라이드 이미지 1">
				
                </div>
                <!-- 2번광고 -->
                <div class="slide">
                    <img src="img/메인광고2.jpg" alt="슬라이드 이미지 2">
                </div>
                <!-- 3번광고 -->
                <div class="slide">
                    <img src="img/메인광고3.jpg" alt="슬라이드 이미지 3">
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
			<div class="shop-content">
				<%if(user != null){ %>
				<h1 style="padding-left: 2%;"><%=user.getUSER_MB_NAME()%>님을 위한 추천상품</h1>
				<%}else{ %>
				<h1 style="padding-left: 2%;">회원님을 위한 추천상품</h1>
				<%} %>
				
				
				<!-- 상품1 -->
				<div class="product-box" >
					<img src="/img/샐러드.jpg" alt="" class="product-img">
					<h2 class="product-title">제품이름</h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품2 -->
				<div class="product-box">
					<img src="/img/오트밀.png" alt="" class="product-img">
					<h2 class="product-title">제품이름</h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품3 -->
				<div class="product-box">
					<img src="/img/sel.jpg" alt="" class="product-img">
					<h2 class="product-title">제품이름</h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품4 -->
				<div class="product-box">
					<img src="/img/닭가슴덮밥.jpg" alt="" class="product-img">
					<h2 class="product-title">제품이름</h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
				<hr color=" #fabfba" size="4px" width="97%"  >
				
				
				
				<!-- ............................................................................... -->
				
				
				<h1 class="title2"style="padding-left: 2%;">신규상품</h1>
				
				<div class="product-box" >
					<img src="<%=PRODUCT.get(26).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(26).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품2 -->
				<div class="product-box">
					<img src="<%=PRODUCT.get(28).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(28).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품3 -->
				<div class="product-box">
					<img src="<%=PRODUCT.get(14).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(14).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품4 -->
				<div class="product-box">
					<img src="<%=PRODUCT.get(18).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(18).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
				<hr color=" #fabfba" size="4px" width="97%"  >

				<!-- ,.................................................................................... -->
				<h1 class="title2"  style="padding-left: 2%;">인기상품</h1>
				<div class="product-box" >
					<img src="<%=PRODUCT.get(19).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(19).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품2 -->
				<div class="product-box">
					<img src="<%=PRODUCT.get(12).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(12).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품3 -->
				<div class="product-box">
					<img src="<%=PRODUCT.get(3).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(3).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
	
				<!-- 상품4 -->
				<div class="product-box">
					<img src="<%=PRODUCT.get(11).getPROD_URL()%>" alt="" class="product-img">
					<h2 class="product-title"><%=PRODUCT.get(11).getPROD_NAME()%></h2>
					<!-- <span class="price">5000₩</span> -->
					<!-- <i class='bx bx-shopping-bag add-cart'></i> -->
				</div>
			</div>
		</div>
<!-- 칼로리검색기********************************************************************************************************************************** -->
		<div class="Search">
			<div class="enter">
				<h2>음식 칼로리 검색</h2>
				<form action="/search/result" method="GET">
					<input type="text" id="searchWord" name="searchWord" placeholder="음식을 입력하세요" height="100px"
						maxlength="50" size="60"  >
					<!-- <input id="searchButton" type="image" src="" style="width:25px; height:25px;" alt="Submit Form"/> -->
					<button class="searchButton">
						<img class="searchButtonImg" alt="Submit Form" src="/img/돋보기.jpg" style="width:10px; height:10px;">
					</button>
				</form>
			</div>
			<form action="">
				<div class="food-list">
				<table border-collapse="collapse">
				<tr>
					<th>선택</th>
					<th style=" max-height: 10px;">음식명</th>
					<th>양(g)</th>
					<th>칼로리(cal)</th>
					<th>탄수화물(g)</th>
					<th>단백질(g)</th>
					<th>지방(g)</th>
				</tr>
				
					<tr>
						<td><input type="checkbox" name="food-select" value="food1"></td>
						<td>닭가슴살</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value="food2"></td>
						<td>닭가슴살1</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value="food3"></td>
						<td>닭가슴살2</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value="food4"></td>
						<td>닭가슴살3</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value="food5"></td>
						<td>닭가슴살4</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살5</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살6</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살7</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살8</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살9</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살10</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살11</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살12</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살13</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>닭가슴살14</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="food-select" value=""></td>
						<td>발효곤약 짜장라면</td>
						<td>100g</td>
						<td>150</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>

				</table>
				
			</div>
			<button class="pass-bt" type="submit" value="">보내기</button>
		</form>
		</div>
		
	</section>
	<div class="my-nutrient">
		<h2>나의 맞춤 영양소</h1>
		<div class="select-food2">
			<table  border style="margin: 20px;">
				<tr>
					<th style=" max-height: 10px;">음식명</th>
					<th>양(g)</th>
					<th>칼로리(cal)</th>
					<th>탄수화물(g)</th>
					<th>단백질(g)</th>
					<th>지방(g)</th>
				</tr>
			</table>
		</div>
		<div class="eat-nutrient"></div>
		<hr style="margin: 20px;">
		<!-- <button type="submit" value="분석">분석</button> -->
		<a href="#" onclick="location.href='index.html'" class="find">칼로리 계산</a>
		
	</div>
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
	<h1 style="padding-left: 3%;">간단한 홈트레이닝 추천영상!</h1>
	<video width="730" height="400" src="/vdo/-21985.mp4" controls></video>
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