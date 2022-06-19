<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<form action="membersList.jsp" method="post">
		<select name="findType">
			<option value="">::검색 유형::</option>
			<option value="1">회원이름</option>
			<option value="2">아이디</option>
			<option value="3">주소</option>
		</select>
		<input type="text" name="findKeyword" placeholder="검색어를 입력하세요">
		<input type="submit" value="검 색">
	</form><br>
	<% 
		String type = request.getParameter("findType");
		String keyword = request.getParameter("findKeyword");
		
		Statement sm = conn.createStatement();
		ResultSet rs= sm.executeQuery("SELECT * FROM user");
		if(type==null){
			rs = sm.executeQuery("SELECT * FROM user");
		}
		else if(type.equals("1")){
			rs = sm.executeQuery("select * from user where name like '%"+keyword+"%'");
		}
		else if(type.equals("2")){
			rs = sm.executeQuery("select * from user where id like '%"+keyword+"%'");
		}
		else if(type.equals("3")){
			rs = sm.executeQuery("select * from user where address like '%"+keyword+"%'");
		}
		
		String str = "";
		int count = 1;
	%>
	<table border="1" cellspacing="0">
		<tr>
		<td>ID</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>주소</td>
		<td>관리자여부</td>
		<TD>비고</TD>
		<TD>삭제</TD>
		</tr>
		<%
			while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getInt("pw") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("address") %></td>
		<td><%=rs.getInt("manager") %></td>
		<TD>
		<button onClick="location='modify.jsp?userID=<%=rs.getString("ID") %>'">수정</button>
		</TD>
		<TD>
		<A href="drawCheck.jsp?userID=<%=rs.getString("id") %>">삭제</A>
		</TD>
		<tr>
	<%
		}
	%>
	</table>
	<%
		rs.close();
		sm.close();
		conn.close();	
	%>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp" method="post" >
					<input type="submit" value=" ◀ 회원 탈퇴시키기 " >
				</form>
			</td>	 
			<td>
				<form action="logout.jsp" method="post" >
					<input type="submit" value=" 로그 아웃 ▶" >
				</form>
			</td>
		</tr>
	</table>  		
</body>
</html>	