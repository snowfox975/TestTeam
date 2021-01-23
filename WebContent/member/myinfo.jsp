<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// * 스클립틀릿의 코드는 (java/jsp)한번에 실행 가장먼저
	String id = (String)session.getAttribute("id");

	//id의 정보가 없을때, (로그인을 안한경우 다시 로그인 페이지로 이동)
	if(id == null){
		response.sendRedirect("./MemberLogin.me");
	}
%>

<h3>로그인 회원 : <%=id%></h3>
<input type="button" value="로그아웃" onclick="location.href='./MemberLogout.me';">

<hr>
<h2><a href="./MemberInfo.me">회원정보 확인(SELECT) </a></h2>

<h2><a href="./MemberUpdate.me">회원정보 수정(UPDATE) </a></h2>

<h2><a href="./MemberDelete.me">회원정보 삭제(DELETE) </a></h2>


<%
//아이디가 있으면서, 아이디가 관리자인 사람만 확인가능
//=>가능하면 객체 레퍼런스 비교시에는 항상 null인지 비교먼저 하기
// if(id != null){
// 	if(id.equals("admin")) {
	if((id != null)&&(id.equals("admin"))){
	%>
<hr>
<hr>
<h2><a href="./MemberList.me">회원정보 리스트(SELECT) </a></h2>
 <% 
	}
//  	}
//  } 
 %>
</body>
</html>