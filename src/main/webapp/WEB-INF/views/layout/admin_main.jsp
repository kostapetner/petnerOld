<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cssPath" value="${pageContext.request.contextPath}/resources/css"/>
<c:set var="imgPath" value="${pageContext.request.contextPath}/resources/images"/>

<!DOCTYPE html>
<html>
<head>
	<title>${title}</title>
</head>
<body>
  <div id="wrapper">
    <!-- HEADER BASIC -->
    관리자페이지
    <!-- CONTAINER -->
    <div class="container">
     <c:import url='/WEB-INF/views/${page}.jsp'/>
    </div>
  </div>
</body>
</html>