<%@page import="java.sql.*"%>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String str = "";

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

		String sql = "select * from employees";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete</title>
</head>
<body>
<center>
<h2>社員E-mail名簿(削除)</h2>
<table border="1" style="border-collapse:collapse">
<tr height="30" bgcolor="yellow">
            <td align="center" width="50">順番</td>
            <td align="center" width="100">名前</td>
            <td align="center" width="200">メール</td>
            <td align="center" width="50">削除</td>
        </tr>
       
        <%
            while (rs.next()) {
                    int num = rs.getInt(1);
                    String name = rs.getString(2);
                    String email = rs.getString(3);
                
                   
        %>
       
        <tr height="30">
       
            <td align="center" width="50"><%=num %></td>
            <td align="center" width="100"><%=name %></td>
            <td align="center" width="200"><%=email %></td>
      
            <td align="center"><button onclick="document.location.href='05_DeletePro.jsp?num=<%=num%>'">削除</button></td>
        </tr>



<%
            }} catch (Exception e) {
		e.printStackTrace();
	}

	finally {
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
%>

</table>
	<br>
	
	<a href="02_Main.jsp"><button>メインに戻る</button></a>
	</center>
</body>

</html>