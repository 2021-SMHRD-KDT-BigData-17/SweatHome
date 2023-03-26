<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>회원가입 폼</title>
  </head>
  <body>
    <h1>회원가입 폼</h1>
    <form>
      <label for="username">사용자 이름:</label>
      <input type="text" id="username" name="username" required><br><br>
      <label for="password">비밀번호:</label>
      <input type="password" id="password" name="password" required><br><br>
      <label for="phone">전화번호:</label>
      <input type="tel" id="phone" name="phone"><br><br>
      <input type="submit" value="가입">
    </form>
  </body>
</html>