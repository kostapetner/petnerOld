<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 & 회원가입</title>
</head>
<body>
<h1>로그인 & 회원가입 페이지</h1>

<c:choose>
	<c:when test="${sessionScope.id eq null }">
		<a href="./login">Login</a>
	</c:when>
	
	<c:otherwise>
		<a href="./logout">Logout</a>
	</c:otherwise>
</c:choose>

<a href="./join">Join</a>

</body>
</html>