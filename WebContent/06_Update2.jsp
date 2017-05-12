<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
  <%request.setCharacterEncoding("utf-8"); %>
 
<%  String num = request.getParameter("num");
String name = request.getParameter("name");
String email = request.getParameter("email");

%>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<script>
 
</script>
</head>
<body>
<center>
<h2>修正内容を入力してください。</h2>
<form method="post" action="06_Update3.jsp">
<input type="hidden" name="num" value="<%=num %>">
<table border="1" style="border-collapse:collapse">
<tr height="30" bgcolor="yellow">
            <td align="center" width="50">順番</td>
            <td align="center" width="100">名前</td>
            <td align="center" width="200">メール</td>
            <td align="center" width="50">修正</td>
        </tr>
       
        <%
       
                   
        %>
       
       
        <tr height="30">
       
            <td align="center" width="50"><%=num %></td>
            <td align="center" width="100"><input type="text"  name="name" value=<%=name %>></td>
            <td align="center" width="200"><input type="text" name="email" value=<%=email %>></td>

                  
            <td align="center"><input type="submit" value="修正"></td>
        </tr>
       
</table>
</form>
<br>

<br>
<br>

<a href="02_Main.jsp"><button>メインに戻る</button></a>
 
    </center>
    </body>
    </html>