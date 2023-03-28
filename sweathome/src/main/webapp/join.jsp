<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join membership</title>
    <link rel="stylesheet" href="회원가입.css">
</head>
<body>
<form action="Joincon">
    <div class="wrapper">
        <div class="title">
            join from
        </div>
        <div class="form">
            <div class="input_field">
                <label for="">ID</label>
                <input type="text" name="user_id" class="input">
            </div>
            
            <div class="input_field">
                <label for="">PW</label>
                <input type="text" name="user_pw" class="input">
            </div>
            <div class="input_field">
                <label for="">이름</label>
                <input type="text" name="user_name" class="input">
            </div>
            <div class="input_field">
                <label for="">전화번호</label>
                <input type="text" name = "user_phone" class="input">
            </div>
            <div class="input_field">
                <label for="">키</label>
                <input type="text" class="input" name = "user_height">
            </div>
            <div class="input_field">
                <label for="">나이</label>
                <input type="text" class="input" name="user_age">세
            </div>
            
            <div class="input_field">
                <label for="">성별</label>
                <div class="custom_select">
                    <select name="user_gender">
                        <option value="">선택</option>
                        <option value="0">남</option>
                        <option value="1">여</option>
                    </select>
                </div>
            </div>
            
            <div class="input_field">
                <label for="">몸무게</label>
                <input type="text" class="input" name="user_weight">
                
            </div>
            
            <div class="input_field">
                <label for="">운동목적</label>
                <div class="custom_select">
                    <select name="user_purpose" id="">
                        <option value="">선택</option>
                        <option value="0">다이어트</option>
                        <option value="1">벌크업</option>
                        <option value="2">유지</option>
                    </select>
                </div>
            </div>
            
            <div class="input_field">
                <label for="">활동량</label>
                    <select name="user_moment" id="">
                        <option value="0">매우적음</option>
                        <option value="1">적음</option>
                        <option value="2">보통</option>
                        <option value="3">많음</option>
                        <option value="4">매우많음</option>
                    </select>
                
            </div>
            <div class="input_field">
                <label for="">다이어트 기간</label>
                <input type="text" class="input" name="user_diet_day">달
                
            </div>
            <div class="input_field1">
                <input type="submit" value="등록" class="btn">
                <span>&nbsp;&nbsp;</span>
                <input type="button" value="취소" class="btn">
            </div>
        </div>
    </div>
    </form>
</body>
</html>