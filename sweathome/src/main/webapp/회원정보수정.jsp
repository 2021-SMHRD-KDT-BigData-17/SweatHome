<%@page import="com.sweathome.domain.mb_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
	mb_user user = (mb_user)session.getAttribute("user_login");
%>




<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>my page</title>
    <link rel="stylesheet" href="CSS/회원정보수정.css">
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
<div id='headers'></div>
	<form action="updatecon">
    <div class="area"></div>
    <div class="titleArea">
        <h2>회원 정보 수정</h2>
    </div>
    <div class="area"></div>

    <div class="member-edit">
        <div class="box">
           
        </div>
        <div class="table">

            <table border="1">


                <colgroup>
                    <col>
                    <col>
                </colgroup>

                <tbody>
                    <tr class="content">
                        <th scope="row" class="head">
                            아이디
                        </th>

                        <td>
                            <%=user.getUSER_ID() %>
                            
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            변경할 비밀번호
                        </th>

                        <td>

                            <input id="passwd" class="input" type="password" name="user_pw">
                            
                            <span class="txtInfo">(영문소문자/숫자/특수문자 포함)</span>
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            비밀번호 확인
                        </th>

                        <td>
                            <input id="passwd_confirm" class="input" type="password" name="user_new_pw">
                            <p class="txtInfo" id="pwconfirmMsg"></p>
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            이름
                        </th>

                        <td>
                            <input type="text" id="member_name" class="input" name="user_name">
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            전화번호
                        </th>

                        <td>
                            <input type="text" id="member_phone" class="input" name="user_phone">
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            나이
                        </th>

                        <td>
                            <input type="text" id="member_age" class="input" name="user_age">
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            키
                        </th>

                        <td>
                            <input id="height" class="input" type="text" name="user_height">
                            cm
                            <p class="txtInfo" id="heightMsg"></p>

                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            몸무게
                        </th>

                        <td>
                            <input id="weight" class="input" type="text" name="user_weight">
                            kg
                            <p class="txtInfo" id="weightMsg"></p>
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            운동 목적
                        </th>

                        <td>
                    <select name="user_purpose">
                        <option value="">선택</option>
                        <option value="0">다이어트</option>
                        <option value="1">벌크업</option>
                        <option value="2">유지</option>
                    </select>

                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            활동량
                        </th>

                        <td>
                            <select name="user_moment">
                                <option value="">선택</option>
                                <option value="0">매우적음</option>
                                <option value="1">적음</option>
                                <option value="2">보통</option>
                                <option value="3">많음</option>
                                <option value="4">매우많음</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="content">
                        <th scope="row" class="head">
                            다이어트 기간
                        </th>

                        <td>
                            <input type="text" id="member_date" class="input" name="user_diet_day">
                        </td>

                </tbody>
            </table>
        </div>

        <div class="base-button">
            <input type="submit" value="회원정보수정" class="btn">
            <span>&nbsp;&nbsp;</span>
        	<a href="mypage.jsp" class="btn">취소</a>
        </div>
    </div>
    </div>
    </div>
    </form>
    <div id='footers'></div>
</body>

</html>