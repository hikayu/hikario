<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<h1 class="page-title">つぶやき</h1>
			<a href="/Poetter/Logout" class="logout">ログアウト</a>
			<h6 class="userID">ユーザー：${loginUser.name}</h6>
		</header>
	</div>
	<br>
	<div class="button_wrapper">
		<form action="/Poetter/Main" method="post">
			<input type="text" name="text" class="forminput" maxlength="140"></input>
			<button class="btn-tsubuyaki" type="submit">つぶやく</button>
		</form>
		
		<p>
			<a href="/Poetter/Main" class="noLineLink">更新</a>
		</p>

		<c:if test="${not empty errorMsg}">
			<p>${errorMsg}</p>
		</c:if>
		
		<div class="form">
		<c:forEach var="mutter" items="${mutterList}">
			<div class="box26">
				<span class="box-title"><c:out value="${mutter.userName}" /></span>
				
				<p>
				<c:out value="${mutter.text}" />
				</p>
				<a href="/Poetter/Delete?id=${mutter.id}"><button class="delete_tweet">削除</button></a>
			</div>
		</c:forEach>
		</div>
	</div>
</body>
</html>