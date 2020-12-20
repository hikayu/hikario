<%-- リスト10-6の状態 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ぽえったー</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style_login.css">
</head>
<body>
	<!--背景動かす用-->
	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>

	<header>
		<h1 class="page-title">ログイン</h1>
	</header>

	<!--メインのコンテンツ-->
	<main> <br>
	<h1 class="title">ひみつきち</h1>
	<div class="form">
		<form action="/Poetter/Login" method="post">
			<input type="text" name="name" value="${param.name}" placeholder="なまえ"><br>
			<input type="password" name="pass" value="" placeholder="合言葉：ドビーは悪い子？"><br>
			<button class="btn-login" type="submit" value="ログイン">ログイン</button>
		</form>
	</div>
	</main>
</body>
</html>