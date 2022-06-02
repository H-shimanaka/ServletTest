<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

	<form action="/ServletTest/servlet/Contact" method="post">
		<p>氏名：<input type="text" name="name" required></p>
		<p>会社：<input type="text" name="company"></p>
		<p>メールアドレス：<input type="text" name="mail" required></p>
		<p>お問い合わせ内容：<textarea name="question" required></textarea></p>

		<p>メルマガ種類：</p>
		<input type="checkbox" name="mail-magazine" value="総合案内">総合案内
		<input type="checkbox" name="mail-magazine" value="セミナー案内">セミナー案内
		<input type="checkbox" name="mail-magazine" value="求人採用情報">求人採用情報

		<p>資料請求希望：</p>
		<input type="radio" name="resume" value="Yes">Yes
		<input type="radio" name="resume" value="No">No

		<p><input type="submit" value="確定"></p>

	</form>

</body>

</html>