<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Logout  </title>
</head>
<body>
	Home > 로그 아웃
	<hr>
	세션을 종료 후 로그 아웃을 수행하였습니다. <br>
	그동안 수고 많으셨습니다.<p>
	<%
		String u_id = (String) session.getAttribute("memberId");
		String u_pw = (String) session.getAttribute("memberPw");

		session.removeAttribute("memberId");	
	%>
	<form action="main.jsp" method="post" >
		<input type="submit" value=" 메인 화면으로 이동 ▶ " >
	</form>
</body>
</html>