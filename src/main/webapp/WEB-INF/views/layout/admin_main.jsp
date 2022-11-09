<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cssPath" value="${pageContext.request.contextPath}/resources/css"/>
<c:set var="imgPath" value="${pageContext.request.contextPath}/resources/images"/>

<!DOCTYPE html>
<html>
<head>
<!-- CSS -->
<link rel="stylesheet" href="${cssPath}/common.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
<link rel="stylesheet" href="./css/admin_main.css">

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>

	<!-- <c:import url='/WEB-INF/views/include/common_head.jsp'/> -->
	
</head>

<style>
/* 기본카드 스타일 */
.ad_card {
  border: 1px solid #E1E3E6;
  box-shadow: 0px 8px 24px -4px rgba(27, 46, 94, 0.08);
  border-radius: 8px;
}
/* 기본 카드 nav 스타일 */
.ad_card_nav {

}
.ad_card_nav .nav-link {
  color: #333;
}
.ad_card_nav .nav-link:hover {
  font-weight: bold;
  border-bottom: 2px solid red;
}
</style>

<body>
  <div id="wrapper">
    <!-- HEADER BASIC -->
    <c:import url='/WEB-INF/views/include/ad_header.jsp'/>
    
    <!-- NAV -->
	<c:import url='/WEB-INF/views/include/ad_nav.jsp'/>
   
    <!-- CONTAINER -->
    
     <c:import url='/WEB-INF/views/${page}.jsp'/>
    
  </div>
</body>
</html>