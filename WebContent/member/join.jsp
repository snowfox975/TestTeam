<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <fieldset>
  <form action="./MemberJoinAction.me" method="post">
      아이디 <input type="text" name="id"><br>
      비밀번호 <input type="password" name="pass"><br>
      이름 <input type="text" name="name"><br> <!-- 실명인증 api추가할것 -->
      전화번호 <input type="text" name="phone"><br>
      이메일 <input type="email" name="email"><br> 
      주소 <input type="text" name="address"><br> <!-- 주소찾기 api -->
      계좌 <input type="text" name="account"><br> <!-- 은행계좌 api -->
   <input type="submit" value="회원가입">
   <input type="reset" value="초기화">
  </form>
 </fieldset>
</body>
</html>