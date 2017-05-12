<%@ page import="java.sql.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

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
<title>Select</title>
</head>
<body>
<center>
<h2>社員e-mail名簿</h2>
<table border="1" style="border-collapse:collapse">
<tr height="30" bgcolor="yellow">
            <td align="center" width="50">順番</td>
            <td align="center" width="100">名前</td>
            <td align="center" width="200">メール</td>
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
        </tr>



	<%
		}
		} catch (Exception e) {
			out.print("例外："+e);
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
	<br><br>
	
<a href="02_Main.jsp"><button>メインに戻る</button></a>　
<a href="04_Insert.jsp"><button>追加</button></a> 
<a href="05_Delete.jsp"><button>削除</button></a> 
<a href="06_Update.jsp"><button>修正</button></a>
	</center>
</body>
</html>