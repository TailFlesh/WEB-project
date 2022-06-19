<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_id = request.getParameter("userID");
	String u_pw = request.getParameter("userPW");
	String u_name = request.getParameter("userNAME");
	String u_home = request.getParameter("userHOME");
	String sql = "update user set name=?, pw=?, address=? where id=?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_name);
	sm.setString(2, u_pw);
	sm.setString(3, u_home);
	sm.setString(4, u_id);

	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("updateSuccess.jsp");
	}else{
		response.sendRedirect("updateErr.jsp");
	}
	sm.close();
	conn.close();	
%>