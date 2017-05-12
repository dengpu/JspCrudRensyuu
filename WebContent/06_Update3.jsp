<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String email = request.getParameter("email");

	out.print(num);
	out.print(name);
	out.print(email);
%>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

		String sql = "update employees set name=?,email=? where num=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, num);

		pstmt.executeUpdate();
	} catch (Exception e) {
		out.print(e);
	}

	finally {

		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}

	 response.sendRedirect("06_Update.jsp");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
</head>
<body>

</body>
</html>