<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 가입 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.user_info;
			if(f.userID.value.length < 2 || f.userID.value.length > 16)
			{
				alert("아이디는 2~16자 이내로 입력해야 합니다.");
				f.userID.focus();
				return false;
			}
			else if(f.userPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				f.userPW.focus();
				return false;
			}
			else if(f.userNAME.value == "")
			{
				alert("이름은 반드시 입력해야 합니다.");
				f.userNAME.focus();
				return false;
			}			
			else return true;
		}		
	</script>
</head>
<body>
	Home > 회원 가입
	<hr>
	<form action="insertDB.jsp" name="user_info" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 회원 가입 화면 </legend><p>
	
			아이디 : <br>
			<input type="text" size = "16" name="userID"><br><br>
		
			비밀번호 : <br> 
			<input type="password" size = "16" name="userPW"><br><br>
			
			이름 : <br>
			<input type="text" size="16" name="userNAME"><br><br>
			
			주소 : <br>
			<input type="text" size="16" name="userHOME"><br>		
			<hr>
			<input type="reset" value=" ◀ 다시작성 ">
			<input type="submit" value=" 가입하기 ▶ ">
			<br><br>
		</fieldset>
	</form>
</body>
</html>