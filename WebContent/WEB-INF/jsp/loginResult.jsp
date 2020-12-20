<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%
	// セッションスコープからユーザー情報を取得
	User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ぽえったー</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
</head>

<body>
	<div class="header">
		<header>
			<h1 class="page-title">ログイン</h1>
			<a href="/Poetter/Logout" class="logout">ログアウト</a>
			<h6 class="userID">ユーザー：${loginUser.name}</h6>
		</header>
	</div>

	<div class="button_wrapper">
		<%
			if (loginUser != null) {
		%>
		<br>
		<p class="sizeResult">ログインに成功しました</p>
		<br>
		<p class="youkoso">ようこそ${loginUser.name}さん</p>
		<br><br>
		<div class="button_wrapper">
			<a href="/Poetter/Main"><button class="btn-login">つぶやきへ</button></a>
		</div>
		<%
			} else {
		%>	
		<br>
		<p class="sizeResult">ログインに失敗しました</p>
		<br><br>
		<a href="/Poetter/" class="menuLink">TOPへ</a>
		<%
			}
		%>
	</div>

</body>
</html>
