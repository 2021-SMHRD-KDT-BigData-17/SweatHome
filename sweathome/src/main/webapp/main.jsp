<%@page import="com.sweathome.domain.tb_order"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="com.sweathome.domain.tb_nutritionfact"%>
<%@page import="com.sweathome.domain.tb_product"%>
<%@page import="java.util.List"%>
<%@page import="com.sweathome.domain.DAO"%>
<%@page import="com.sweathome.domain.mb_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	// 로그인할 때 저장한 세션 가져오기
	mb_user user = (mb_user)session.getAttribute("user_login");
	response.setCharacterEncoding("UTF-8");
	//List<tb_nutritionfact> search = (List<tb_nutritionfact>)request.getAttribute("search");
	List<tb_order> order = (List<tb_order>)session.getAttribute("order");
	DAO dao = new DAO();
	Random rd = new Random();
	
	int a = 0;
	int b = 0;
	int c = 0;
	int d = 0;
	
	// 데이터베이스에 저장된 모든 상품 가져오기
	List<tb_product> PRODUCT = dao.product_page();
	// 데이터베이스에 저장된 영양소 가져오기
	List<tb_nutritionfact> nutritionfacts = dao.nutritionfacts();
	
	
	// 리스트에 각영양소 별 음식 담기	
	List<tb_product> prod_calbohydrate = null;
	List<tb_product> prod_protein = null;
	List<tb_product> prod_fat = null;
	List<tb_product> prod_allinone = dao.product_select_allinone();
	

	System.out.println(prod_allinone.size()); 
	
	d = rd.nextInt(prod_allinone.size());
		// 탄수화물 - 단백질 - 지방 순으로 필요영양소에서 제품 영양소를 빼는 알고리즘
		
		// 1. 세션에 저장된 유저의 필요한 영양성분을 가져온다.
	if(user != null){	
		int USER_CARBOHYDRATE = user.getUSER_CARBOHYDRATE()/4;
		int USER_PROTEIN = user.getUSER_PROTEIN()/4;
		int USER_FAT = user.getUSER_FAT()/4;
		int USER_CALORIES = user.getUSER_CALORIES()/4;
		
		// 1-1 3끼에 맞춰서 3등분하고 변수에 담는다.
		int meal_carbohydrate = (USER_CARBOHYDRATE / 3);
		int meal_protein = (USER_PROTEIN / 3);
		int meal_fat = (USER_FAT / 3);
		int meal_calories = (USER_CALORIES / 3);
		
		
		
		
		// 필요 영양소와 비슷한 범위의 제품과 필요 영양소를 뺀다
			prod_calbohydrate = dao.product_select_carbohydrate(meal_carbohydrate);
			if(prod_calbohydrate.size()>0){
			a = rd.nextInt(prod_calbohydrate.size());
			}
	if(prod_calbohydrate.size() != 0){
		while(true) {
			if(meal_carbohydrate < 10) {
			break;
			}else if(meal_protein < 5) {
			break;
			}else if(meal_fat < 2) {
			break;
			}
			meal_carbohydrate = meal_carbohydrate - prod_calbohydrate.get(a).getCARBOHYDRATE();
			meal_protein = meal_protein - prod_calbohydrate.get(a).getPROTEIN();
			meal_fat = meal_fat - prod_calbohydrate.get(a).getFAT();
			meal_calories = meal_calories - prod_calbohydrate.get(a).getCALORIES();
			
		}
	}
			
		prod_protein = dao.product_select_protein(meal_protein);
		
		if(prod_protein.size()>0){
		 b = rd.nextInt(prod_protein.size());
		}
		
		if(prod_protein.size() != 0){
		while(true) {
			
			meal_carbohydrate = meal_carbohydrate - prod_protein.get(b).getCARBOHYDRATE();
			meal_protein = meal_protein - prod_protein.get(b).getPROTEIN();
			meal_fat = meal_fat - prod_protein.get(b).getFAT();
			meal_calories = meal_calories - prod_protein.get(b).getCALORIES();
			if(meal_carbohydrate < 10) {
			break;
			}else if(meal_protein < 7) {
			break;
			}else if(meal_fat < 5) {
			break;
			}
			}
		}	
		prod_fat = dao.product_select_fat(meal_fat);
		
		if(prod_fat.size()>0){
		 c = rd.nextInt(prod_fat.size());
		}
	if(prod_fat.size() != 0){
		while(true) {
			meal_carbohydrate = meal_carbohydrate - prod_fat.get(c).getCARBOHYDRATE();
			meal_protein = meal_protein - prod_fat.get(c).getPROTEIN();
			meal_fat = meal_fat - prod_fat.get(c).getFAT();
			meal_calories = meal_calories - prod_fat.get(c).getCALORIES();
			if(meal_carbohydrate < 10) {
			break;
			}else if(meal_protein < 7) {
			break;
			}else if(meal_fat < 5) {
			break;
			}
			}
		}
	System.out.println(prod_calbohydrate.size()); 
	System.out.println(prod_protein.size()); 
	System.out.println(prod_fat.size()); 
	}
		
%>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 화면</title>
   <link rel="stylesheet" href="CSS/main.css">
   <link rel="stylesheet" href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
   <link rel="stylesheet" href="login.html">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
                    <img src="img/광고2.jpg" alt="슬라이드 이미지 1">
            
                </div>
                <!-- 2번광고 -->
                <div class="slide">
                    <img src="img/광고1.jpg" alt="슬라이드 이미지 2">
                </div>
                <!-- 3번광고 -->
                <div class="slide">
                    <img src="img/광고3.jpg" alt="슬라이드 이미지 3">
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
            <% if(user != null && prod_calbohydrate.size()!=0){ %>
               <img src="<%=prod_calbohydrate.get(a).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=prod_calbohydrate.get(a).getPROD_NAME()%></h2>
               <%}else{ %>
               <img src="<%=PRODUCT.get(1).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=PRODUCT.get(1).getPROD_NAME()%></h2>
               <%} %>
               <!-- <span class="price">5000₩</span> -->
               <!-- <i class='bx bx-shopping-bag add-cart'></i> -->
            </div>
   
            <!-- 상품2 -->
            <div class="product-box" >
            <% if(user != null && prod_protein.size()!=0){ %>
               <img src="<%=prod_protein.get(b).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=prod_protein.get(b).getPROD_NAME()%></h2>
               <%}else{ %>
               <img src="<%=PRODUCT.get(5).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=PRODUCT.get(5).getPROD_NAME()%></h2>
               <%} %>
               <!-- <span class="price">5000₩</span> -->
               <!-- <i class='bx bx-shopping-bag add-cart'></i> -->
            </div>
   
            <!-- 상품3 -->
            <div class="product-box">
               <% if(user != null && prod_fat.size()!=0){ %>
               <img src="<%=prod_fat.get(c).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=prod_fat.get(c).getPROD_NAME()%></h2>
               <%}else{ %>
               <img src="<%=PRODUCT.get(8).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=PRODUCT.get(8).getPROD_NAME()%></h2>
               <%} %>
               <!-- <span class="price">5000₩</span> -->
               <!-- <i class='bx bx-shopping-bag add-cart'></i> -->
            </div>
   
            <!-- 상품4 -->
         <div class="product-box">   
            <% if(user != null && prod_allinone.size()!=0){ %>
               <img src="<%=prod_allinone.get(d).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=prod_allinone.get(d).getPROD_NAME()%></h2>
               <%}else{ %>
               <img src="<%=PRODUCT.get(13).getPROD_URL()%>" alt="" class="product-img">
               <h2 class="product-title"><%=PRODUCT.get(13).getPROD_NAME()%></h2>
               <%} %>
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
            <form action="">
               <input type="text" id="searchWord" name="searchWord" placeholder="음식을 입력하세요" height="100px"
                  maxlength="50" size="60"  >
               <!-- <input id="searchButton" type="image" src="" style="width:25px; height:25px;" alt="Submit Form"/> -->
               
               <!-- 작업위치 -->
               <button type="button" class="searchButton" onclick="search()">
             		검색
               </button>
            </form>
                        
         </div>
         <!-- <form action=""> -->
            <div class="food-list">
            <table border-collapse="collapse">
            <thead>
            <tr>
               <th>선택</th>
               <th style=" max-height: 10px;">음식이름</th>
               <th>1회 제공량(g)</th>
               <th>칼로리</th>
               <th>탄수화물</th>
               <th>단백질</th>
               <th>지방</th>
            </tr>
            </thead>
              <tbody id="tb">
              <%--  <%if(search != null){ %>
                  <% for(int i =0; i<search.size(); i++){ %>
                  <td><input type="checkbox" name="food-select" value="food<%=i%>"></td>
                  <td name="food_name<%=i%>"><%=search.get(i).getFOOD_NAME()%></td>
                  <td name="food_serving<%=i%>"><%=search.get(i).getSERVING_SIZE()%>g</td>
                  <td name="food_calories<%=i%>"><%=search.get(i).getCALORIES() %></td>
                  <td name="food_car<%=i%>"><%=search.get(i).getCARBOHYDRATE() %></td>
                  <td name="food_pro<%=i%>"><%=search.get(i).getPROTEIN() %></td>
                  <td name="food_fat<%=i%>"><%=search.get(i).getFAT() %></td>
               </tr>
               <%}
                  }else{ %>
               <tr>
               <% %>
                  <% for(int i =0; i<nutritionfacts.size(); i++){ %>
                  <td><input type="checkbox" name="food-select" value="food<%=i%>" ></td>
                  <td name="food_name<%=i%>"><%=nutritionfacts.get(i).getFOOD_NAME()%></td>
                  <td name="food_serving<%=i%>"><%=nutritionfacts.get(i).getSERVING_SIZE()%>g</td>
                  <td name="food_calories<%=i%>"><%=nutritionfacts.get(i).getCALORIES() %></td>
                  <td name="food_car<%=i%>"><%=nutritionfacts.get(i).getCARBOHYDRATE() %></td>
                  <td name="food_pro<%=i%>"><%=nutritionfacts.get(i).getPROTEIN() %></td>
                  <td name="food_fat<%=i%>"><%=nutritionfacts.get(i).getFAT() %></td>
               <%} 
                  }%> --%>
               </tbody>
            </table>
            
         </div>
         <button id='selectBtn' class="pass-bt" type="submit" value="">보내기</button>
      <!-- </form> -->
      </div>
      
   </section>
   <div class="my-nutrient">
      <h1>나의 맞춤 영양소</h1>
      <div class="select-food2">
         <table  border style="margin: 20px;">
            <thead>
            <tr>
               <th>음식명</th>
               <th>양(g)</th>
               <th>칼로리(cal)</th>
               <th>탄수화물(g)</th>
               <th>단백질(g)</th>
               <th>지방(g)</th>
            </tr>
            </thead>
            
            
            <!-- 들어갈 값 -->
            <tbody id='you'>
            
            </tbody>
         </table>
         
      </div>
      <div class="eat-nutrient"></div>
      <hr style="margin: 20px;">
      <table border style="margin: 20px;">
      <thead>
         <tr>
            <th>총 칼로리(cal)</th>
            <th>총 탄수화물(g)</th>
            <th>총 단백질(g)</th>
            <th>총 지방(g)</th>
         </tr>
         
      </thead>
      <tbody id='all-tan'></tbody>
      </table>
      <!-- <button type="submit" value="분석">분석</button> -->
     <!--   <a href="#" onclick="location.href='index.html'" class="find">칼로리 계산</a>-->
      
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
   <h1>간단한 홈트레이닝 추천영상!</h1>
   <iframe width="700" height="400" src="https://www.youtube.com/embed/qcTxaFMWzKs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
   <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
   <iframe width="700" height="400" src="https://www.youtube.com/embed/2hg7dbVtdDs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>	
</div>


   <!-- footer불러오기 -->
   <div id="footers"></div>
   
   
   
	<script src="js/jquery-3.6.3.min.js"></script>
    <script type ="text/javascript">
    
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
      
      
      
      
      
      // ajax 작업위치
      
/*       function search(){
    	$.ajax({
		 url : "searchcon",
		type : "POST",
		data : {
			"searchWord" : $("input[name=searchWord]").val()
		},
		dataType : "json",
		success : function(search){
			console.log(search)
			let tb = ""
			for(let i = 0; i>search.length; i++){
				tb +="<td>"+ search[i].FOOD_NAME+"</td>"
				tb +="<td>"+ search[i].SERVING_SIZE+"</td>"
				tb +="<td>"+ search[i].CALORIES+"</td>"
				tb +="<td>"+ search[i].CARBOHYDRATE+"</td>"
				tb +="<td>"+ search[i].PROTEIN+"</td>"
				tb +="<td>"+ search[i].FAT+"</td>"
				
				$("#tb").html(tb);
			}
		},
		error : function{
			alert("통신실패");
		} 
    	});
      } */

		function search(){
			
			$.ajax({
		         url : "searchcon",
		         type : "post",
		         data : {
		 			"searchWord" : $("input[name=searchWord]").val()
		 		},
		         dataType : "json",
		         async: false,
		         success : function(res){
		            let a = ""
		    			for(let i = 0; i<res.length; i++){
		    				a += "<tr>"
		    				a += "<td><input type=checkbox name=food-select></td>"
		    				a += "<td>"+ res[i].FOOD_NAME+"</td>"
		    				a += "<td>"+ res[i].SERVING_SIZE+"</td>"
		    				a += "<td>"+ res[i].CALORIES+"</td>"
		    				a += "<td>"+ res[i].CARBOHYDRATE+"</td>"
		    				a += "<td>"+ res[i].PROTEIN+"</td>"
		    				a += "<td>"+ res[i].FAT+"</td>"
		    				a += "</tr>"
		    			}
		            		
		    				$("#tb").html(a);
		    		},
		         error : function(){
		            alert("Ajax 통신 실패~");
		         }
		      });//ajax끝
			
			
		}
      
      $("#selectBtn").click(function(){ 
         var rowData = new Array();
         var tdArr = new Array();
         var checkbox = $("input[name=food-select]:checked");
         var html = '';
         
         // 체크된 체크박스 값을 가져온다
         checkbox.each(function(i) {
            
            // checkbox.parent() : checkbox의 부모는 <td>이다.
            // checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
            var tr = checkbox.parent().parent().eq(i);
            var td = tr.children();
            
            // 체크된 row의 모든 값을 배열에 담는다.
            rowData.push(tr.text());
            
            // td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
            var food1 = td.eq(1).text();
            var food2 = td.eq(2).text();
            var food3 = td.eq(3).text();
            var food4 = td.eq(4).text();
            var food5 = td.eq(5).text();
            var food6 = td.eq(6).text();
            
            // 가져온 값을 배열에 담는다.
            tdArr.push({name:food1,size:food2,cal:food3,car:food4,pro:food5,fet:food6});
         
            
            
         
         });
         
         for(key in tdArr){
               
               html += '<tr>';
               html += '<td>'+tdArr[key].name+'</td>';
               html += '<td>'+tdArr[key].size+'</td>';
               html += '<td>'+tdArr[key].cal+'</td>';
               html += '<td>'+tdArr[key].car+'</td>';
               html += '<td>'+tdArr[key].pro+'</td>';
               html += '<td>'+tdArr[key].fet+'</td>';
               html += '</tr>';
            }
         var all = '';
         var allcal = 0;
         var allcar = 0;
         var allpro = 0;
         var allfet = 0;
         for(key in tdArr){
            allcal += Number(tdArr[key].cal);
            allcar += Number(tdArr[key].car);
            allpro += Number(tdArr[key].pro);
            allfet += Number(tdArr[key].fet);
         }
         all+='<tr>'
         all+='<td>'+allcal+'</td>'
         all+='<td>'+allcar+'</td>'
         all+='<td>'+allpro+'</td>'
         all+='<td>'+allfet+'</td>'
         all+='</tr>'
         
            //console.log("no : " + no);
            //console.log("userid : " + userid);
            //console.log("name : " + name);
            //console.log("email : " + email);
         
         $("#you").empty();
         $("#you").append(html);
         
         $("#all-tan").empty();
         $("#all-tan").append(all);
         
      });
   </script>
   
</body>
</html>