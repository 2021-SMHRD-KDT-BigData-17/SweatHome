<%@page import="java.util.List"%>
<%@page import="com.sweathome.domain.tb_order"%>
<%@page import="com.sweathome.domain.mb_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% 
mb_user user = (mb_user)session.getAttribute("user_login");
List<tb_order> order = (List<tb_order>)session.getAttribute("order");
String gusghkd = "";
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/주문정보조회.css">
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
<!-- <div id='headers'></div> -->
    <div class="section_path"></div>
    <div class="myshoparea">
        <div class="titlearea">
            <h2>주문 조회</h2>
            <%if(user != null){ %>
            <span class="dsc"><%=user.getUSER_MB_NAME()%>님의 주문 정보입니다</span>
            <%}else{%>
            <span class="dsc">회원님의 주문 정보입니다</span>
            <% }%>
            	
        </div>
        <div class="page_body">
            <div class="tbox">
                <table summary="번호, 주문일자, 상품명, 결제금액, 결제상태, 주문상태, 주문상세, 배송현황">
                    <caption>주문내역</caption>
                    <!-- <colgroup>
                        <col width="70">
                        <col width="135">
                        <col width="*">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="75">
                        <col width="75">
                    </colgroup> -->
                    <thead>
                        <tr>
                            <th scope="row" id="no">
                                <div class="tb-center">번호</div>
                            </th>
                            <th scope="row">
                                <div class="tb-center">주문일자</div>
                            </th>
                            <th scope="row">
                                <div class="tb-center">결제금액</div>
                            </th>
                            <th scope="row">
                                <div class="tb-center">결제상태</div>
                            </th>
                            <th scope="row">
                                <div class="tb-center">주문상태</div>
                            </th>
                            <th scope="row">
                                <div class="tb-center">배송현황</div>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        	<% if(order != null){ %>
							<%for(int i =0; i<order.size(); i++){ %>
                        <tr>
                        	<%if(order.get(i).getORDER_STATUS() == 0){
                        		gusghkd = "상품 준비중";
                        	}else if(order.get(i).getORDER_STATUS() == 1){
                        		gusghkd = "배송중";
                        	}else if(order.get(i).getORDER_STATUS() == 2){
                        		gusghkd = "배송완료";
                        	}
                        		
                        		%>
                            <td align="center" class="tle">
                                <nobr><%=order.get(i).getORDER_IDX()%></nobr>

                            </td>
                            <td align="center" class="tle">
                                <nobr><%=order.get(i).getORDER_DT()%></nobr>
                            </td>
                            <td align="center" class="tle">
                                <a href="#"><%=order.get(i).getTOTAL_AMOUNT()%>원</a>

                            </td>
                            <td align="center" class="tle">
                                <nobr>결제완료</nobr>

                            </td>
                            <td align="center" class="tle">
                                <nobr>주문완료</nobr>

                            </td>
                            <td align="center" class="tle">
                                <nobr><%=gusghkd%></nobr>
                            </td>
                        </tr>
							<%}} %>
                            <!-- <td colspan="8">
                                <div class="tb-center">주문내역이 없습니다.</div>
                            </td> -->
                    </tbody>
                </table>

            </div>
        </div>
        <div class="myshopmain">
            <div class="subtitle">
                <h3>나의 쇼핑 정보</h3>
            </div>
            <ul class="menu">
                <li>
                    <a href="주문정보조회.jsp" class="btn22">주문 조회</a>
                </li>
            </ul>
            <div class="subtitle">
                <h3>나의 정보</h3>
            </div>
            <ul class="menu">
                <li>
                    <a href="회원정보수정.jsp" class="btn22">회원정보수정</a>
                </li>
            </ul>

        </div>
    </div>
    <!-- <div id='footers'></div> -->
</body>

</html>