<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	Home > 로그인
	<hr>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		
		String sql = "select pw,manager from user where id = ?";
		PreparedStatement sm;
		sm=conn.prepareStatement(sql);
		sm.setString(1, u_id);
		ResultSet rs= sm.executeQuery();
		if(rs.next()){
			if(rs.getString(1).equals(u_pw)){
				session.setAttribute("memberId", u_id);
				session.setAttribute("memberPw", u_pw);
				out.println("새로운 세션 생성 성공 ! <br>");
				if(rs.getInt("manager")==1){
					out.println("관리자 [ " + u_id + " ]님이 입장하였습니다. <p>");
	%>
					 <script>location.href="membersList.jsp";</script>
	<%
				}
				else if(rs.getInt("manager")==0){
					out.println("사용자 [ " + u_id + " ]님이 입장하였습니다. <p>");
	%>
				 <script>location.href="membership.jsp";</script>
	<%
				}
			}else 
				response.sendRedirect("loginErr.jsp");
		}
		else{
			response.sendRedirect("loginErr.jsp");
		}
	%>
</body>
</html>