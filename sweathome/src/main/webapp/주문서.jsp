<%@page import="com.sweathome.domain.tb_product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<%
	request.setCharacterEncoding("utf-8");
	
		tb_product prod0 = (tb_product)session.getAttribute("product0");
		tb_product prod1 = (tb_product)session.getAttribute("product1");
		tb_product prod2 = (tb_product)session.getAttribute("product2");
		
		int prod_price0 = prod0.getPROD_PRICE();
		int prod_price1 = prod1.getPROD_PRICE();
		int prod_price2 = prod2.getPROD_PRICE();
		int sum = prod_price0+prod_price1+prod_price2;
%>
<head>
	<meta charset="utf-8">
	<title> 주문서 작성하기</title>
	<link href="CSS/text.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="CSS/주문서.css">
	<script src="out.js">alert('in html1');</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready( function() {

		$("#headers").load("header.jsp");  // 원하는 파일 경로를 삽입하면 된다
		$("#footers").load("footer1.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

});
	</script>

</head>
<body>
	<div id="headers"></div>
	<div class="container">
		<h1 class="text1">상품 주문서</h1>
		
		<form action="Ordercon">
			<h3>주문 정보</h3>
			
				<ul> 
                    <!-- 장바구니랑 연동 -->
					<li class="f-box">
						<label for=""><img class="jumunpto" src="<%= prod0.getPROD_URL()%>" alt=""></label>
						<label class="center"><%=prod0.getPROD_NAME()%></label>
						<label class="num"><input type="number" value="1" min="1" max="5">개 </label>
						<label class="pay"><%=prod_price0%>원</label>
					</li>
					<li class="f-box">
						<label for=""><img class="jumunpto" src="<%= prod1.getPROD_URL()%>" alt=""></label>
						<label class="center"><%=prod1.getPROD_NAME()%></label>
						<label class="num"><input type="number" value="1" min="1" max="5">개 </label>
						<label class="pay"><%=prod_price1%>원</label>
					</li>
					<li class="f-box">
						<label for=""><img class="jumunpto" src="<%= prod2.getPROD_URL()%>" alt=""></label>
						<label class="center"><%=prod2.getPROD_NAME()%></label>
						<label class="num"><input type="number" value="1" min="1" max="5">개 </label>
						<label class="pay"><%=prod_price2%>원</label>
					</li>
					
					
				<p name="price" style="text-align: right; font-size: x-large;">총<%=sum%>원</p>
			<fieldset>
            <legend style="text-align: center;">배송 정보</legend>
            <table class="adrs">
                    <!-- 가능하면 로그인정보와 연동 -->
               <tr>
                  <td>이름</td>
                  <td><input class="jumun1"type="text" id="uname" placeholder="여백없이 입력" required></td>
               </tr>
               <tr>
                  <td>연락처</td>
                  <td><input class="jumun2" type="tel" id="tel1" placeholder="연락가능한 번호"></td>
               </tr>
               <tr>
                  <td>주소</td>
                  <td><input class="jumun3" type="text" size="40" id="addr" required></td>
               </tr>
               <tr>
                  <td>요청사항</td>
                  <td><textarea class="jumun4" cols="40" rows="3" id="comment"></textarea></td>
               </tr>
            </table>
         </fieldset>
			
			<div class="centered">
				<input type="submit" class="button" value="주문하기">
			</div>
		</form>
	</div>
	<div id="footers"></div>
</body>
</html>