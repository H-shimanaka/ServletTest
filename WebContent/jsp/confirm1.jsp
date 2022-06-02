<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

	<p>名前：${contact.name}</p>
	<p>会社：${contact.company}</p>
	<p>メールアドレス：${contact.mail}</p>
	<p>メルマガ：
	<% String[] magazines = request.getParameterValues("mail-magazine"); %>
	<%
	for(int i = 0;i < magazines.length;i++){
		out.println("「" + magazines[i] + "」");
	}
	%></p>
	<p>お問い合わせ内容：${contact.question}</p>
	<p>資料請求希望：${contact.resume}</p>

</body>

</html>