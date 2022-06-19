<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 전용 공간 </title>
</head>
<body>
	Home > 회원 전용 공간
	<hr>
	반갑습니다.<br>
	여기는 회원 전용 공간입니다.<br>
	회원을 탈퇴하려면 버튼을 눌러주세요.<br><br>
	
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp" method="post" >
					<input type="submit" value=" ◀ 메인 화면 " >
				</form>
			</td>
			<td>	
				<form action="withdraw.jsp" method="post" >
					<input type="submit" value=" 회원 탈퇴하기 ▶" >
				</form>
			</td>
		</tr>	
	</table>	 	
</body>
</html>