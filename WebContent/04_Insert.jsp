<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body>
	<center>
		<form method="post" action="04_InsertPro.jsp">

			<h2>追加する内容を入力してください。</h2>
			<table border="0" bgcolor="yellow">
				<tr>

					<td>名前</td>
					<td><input type="text" name="name"></td>
				</tr>

				<tr>

					<td>E-mail</td>
					<td><input type="text" name="email"></td>
				</tr>
			</table>
			<br> 
			<input type="submit" value="追加"> 
			<input type="reset" value="書き直し"> 
			
		</form>
<br><br>
<a href="02_Main.jsp"><button>メインに戻る</button></a>
	</center>

</body>
</html>