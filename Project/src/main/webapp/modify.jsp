<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 수정 정보 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.user_info;
			if(f.userPW.value.length < 6)
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
	<%
		String u_id = request.getParameter("userID");
		Statement sm = conn.createStatement();
		ResultSet rs= sm.executeQuery("select * from user where id like '"+u_id+"'");
	%>
	<hr>
	<form action="updateDB.jsp?userID=<%=u_id%>" name="user_info" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 회원 수정 화면 </legend><p>
	
			아이디 : <%=u_id %>
			<br><br>
		
			비밀번호 : <br> 
			<input type="password" size = "16" name="userPW"><br><br>
			
			이름 : <br>
			<input type="text" size="16" name="userNAME"><br><br>
			
			주소 : <br>
			<input type="text" size="16" name="userHOME"><br>		
			<hr>
			<input type="reset" value=" ◀ 다시작성 ">
			<input type="submit" value=" 수정완료 ▶ ">
			<br><br>
		</fieldset>
	</form>
	<%
		rs.close();
		sm.close();
		conn.close();	
	%>
</body>
</html>