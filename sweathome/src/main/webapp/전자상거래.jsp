<%@page import="com.sweathome.domain.tb_product"%>
<%@page import="java.util.List"%>
<%@page import="com.sweathome.domain.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAO dao = new DAO();
List<tb_product> PRODUCT = dao.product_page();
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>샵</title>
    <link rel="stylesheet" href="CSS/전자상거래.css">
    <link rel="stylesheet" href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
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
    <section>
    <div class="webshop">
        <div class="container">
            <!-- <a href="#" class="logo">Ecommerce</a>
            <i class='bx bx-shopping-bag' id="cart-icon"></i> -->
            <div class="cart">
                <div class="box" >
                <h2 class="cart-title">장바구니</h2>
                <hr color=" #fabfba" size="4px" width="50%"  >
                <div class="cart-content">
                    <div class="cart-box">
                        <!-- <img src="" alt="" class="cart-img"> -->
                        <div class="detail-box">
                            <!-- <div class="cart-product-title"></div>
                            <div class="cart-price"></div>
                            <input type="number" value="1" class="cart-quantity"> -->
                        </div>
                        
                      
                        <!-- 카트 삭제 -->
                        <!-- <i class='bx bxs-trash-alt cart-remove'></i> -->
                    </div>
                </div>
                <!-- 칼로리 계산 -->
                <div class="Calculate">
                    
                </div>
                <!-- 전체 가격 -->
                <div class="total">
                    <ul class="Calculate_Count">
                      <!--   <li>칼로리</li> 불러올 값 
                        <li>탄수화물</li>
                        <li>단백질</li>
                        <li>지방</li>
                        <hr>
                    <span class="total-title">Total</span>
                    <span class="total price">0₩</span> -->
                </div>
                <!-- 구매 버튼 -->
              
                <!-- <a href="주문서.html" > !-->
                <a href="주문서.jsp"><button type="button" class="btn-buy" onclick="search()">Buy now</button></a>
                <!--  </a> -->
                <!-- 카트 닫기 -->
                <!-- <i class='bx bx-x' id="close-cart"></i> -->
            </div>
            </div>
        </div>
    </section>
    <section class="shop">
        <h2 class="section-title">Diet Food</h2>
        <div class="shop-content">
            
            
            <%for(int i = 0; i<PRODUCT.size(); i++){ %>
            <!-- 상품1 -->
            <div class="product-box">
                <img src="<%=PRODUCT.get(i).getPROD_URL()%>" alt="" class="product-img">
                <h2 class="product-title"><%=PRODUCT.get(i).getPROD_NAME()%></h2>
                <pre>Cal <%=PRODUCT.get(i).getCALORIES() %> 탄 <%=PRODUCT.get(i).getCARBOHYDRATE()%> 단 <%=PRODUCT.get(i).getPROTEIN()%> 지 <%=PRODUCT.get(i).getFAT()%></pre>
                <span class="price"><%=PRODUCT.get(i).getPROD_PRICE()%>₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <%} %>

        </div>
    </section>
    
</div>
<div class="gap"></div>
<div id="footers"></div>
<script src="js/전자상거래.js"></script>
<script src="js/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
function search(){
	
	var el_txt = []
	  $('.cart-product-title').each(function(index,item){
		 el_txt.push($(item).text());
		 console.log(el_txt[0]);
	  });
	
	//console.log($('.cart-product-title').text());
	//console.log(typeof($('.cart-product-title').text()));
	
	
	
	$.ajax({
         url : "basketcon",
         type : "post",
         data : {
 			"product_name" : JSON.stringify(el_txt)
 		},
         dataType : "json",
         async: false,
         success : function(res){
        	 console.log(res);
    		},
         error : function(){
            alert("Ajax 통신 실패~");
         }
      });//ajax끝
	
	
}

</script>
</body>

</html>