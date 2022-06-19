<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Login Form </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.loginForm;
			if(f.uID.value == "")
			{
				alert("아이디를 입력해 주세요.");
				f.uID.focus();
				return false;
			}
			else if(f.uPW.value == "")
			{
				alert("비밀번호를 입력해 주세요.");
				f.uPW.focus();
				return false;
			}
			else return true;
		}		
	</script>	
</head>
<body>
	Home > 로그인
	<hr>
	<form name="loginForm" action="loginSuccess.jsp" 
		method="post" onsubmit="return checkFun()" >
		<fieldset style="width:260px">
			<legend> 로그인 화면 </legend><p>
			<table>
			<tr height="30">
				<td align="right">아이디&nbsp;</td>
				<td><input type="text" name="uID"></td>
			</tr>
			<tr height="30">
				<td align="right">비밀번호&nbsp;</td>
				<td><input type="password" name="uPW"></td>
			</tr>
			<tr height="50">
				<td></td>
				<td><input type="submit" value=" 로그인 ▶▶ "></td>
			</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>