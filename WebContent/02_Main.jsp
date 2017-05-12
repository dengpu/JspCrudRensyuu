



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main</title>
</head>
<body>
<center>

<%request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

%>
<h2>USEN社員メール管理プログラム</h2>
ようこそ！
<br><br>
<a href="03_Select.jsp"><button>名簿を見る</button></a><br><br>
<a href="04_Insert.jsp"><button>追加</button></a><br><br>
<a href="05_Delete.jsp"><button>削除</button></a><br><br>
<a href="06_Update.jsp"><button>修正</button></a>

</center>
</body>
</html>