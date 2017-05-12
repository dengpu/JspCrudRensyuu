<%@page import="java.sql.*"%>

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");

	String email = request.getParameter("email");
%>



<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

		String sql = "insert into employees (name, email) values (?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}

	response.sendRedirect("03_Select.jsp");
%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertPro</title>
</head>
<body>

</body>
</html>