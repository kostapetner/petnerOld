<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cssPath" value="${pageContext.request.contextPath}/resources/css"/>
<c:set var="imgPath" value="${pageContext.request.contextPath}/resources/images"/>
<script>
  // common js 로 분리할 부분
  $(document).ready(function(){
  
    $(document)
    .on("click", ".login_menu .mypage", function(){
      $(".float_mymenu").css({        
        "left" : $(".login_menu").offset().left + 10 + "px",
        "top":$(this).offset().top + $(this).height()+ 16 + "px",
        "transform" : "translateX(-50%)"
      })
      $(".float_mymenu").fadeToggle("200");
    })

   
   
  }) // jquery ENDS
  
  // resize
  $(window).resize(function(){
    $(".float_mymenu").hide();
  })
</script>


<!-- HEADER BASIC -->
<header id="header">
  <div class="header_inner">
    <h1><a href="/petner"><img src="${imgPath}/header_logo.png" alt="logo"></a></h1>
    <nav id="gnb">
      <c:choose>
      <c:when  test="${empty authUser}">
      <ul>
        <li><a href="/petner/findSitter">펫시터 찾기</a></li>
        <li><a href="/petner/findPet">돌봐줄 동물 찾기</a></li>
        <li><a href="#">공지사항</a></li>
      </ul>
      </c:when>
      
      <c:otherwise>
      <ul>
      	<li><a href="#">펫시터 찾기12313</a></li>
        <li><a href="#">돌봐줄 동물 찾기</a></li>
        <li><a href="#">공지사항</a></li>
      </ul>
      </c:otherwise>
      </c:choose>
    </nav>
    <div class="login_menu">
      
      <ul>
        <!-- 세션있을때  -->
        <c:if test="${not empty authUser}">
        <li class="in_session"><a class="heart transition02" href="#"><i class="fa-solid fa-heart"></i></a></li>
        <li class="in_session"><a class="heart transition02" href="#"><i class="fa-solid fa-comment-dots"></i></a></li>
        <li class="in_session"><a class="alert transition02" href="#"><i class="fa-solid fa-bell"></i></a></li>
        <li class="in_session mypage"><a a class="my transition02" href="#"><i class="fa-solid fa-user"></i> </a></li>
		</c:if>
        <!-- 세션없을때 로그인 -->
        <c:if test="${empty authUser}">
<<<<<<< HEAD
        <li><a class="login" href="./login">로그인</a></li>
=======
        <li><a class="login" href="/petner/login">로그인</a></li>
>>>>>>> development
        </c:if>
      </ul>
    </div>
    <!-- 마이페이지 플로트메뉴 / 로그아웃 -->
    <div class="float_mymenu">
      <div>
        <p class="pb10"><b >${id}</b></p>
        <p class="flex_between">
          <span class="second">${email}</span>
          <a style="font-weight: 300;" class="second" href="#">마이페이지</a>
        </p>
      </div>

      <div class="flex_between">
        <div>
          <p class="second pb4">닉네임</p>
          <p>${nickname}</p>
        </div>
        <div>
          <p class="second pb4">등급</p>
          <p>VIP</p>
        </div>
      </div>
      <!-- <div>
        <ul>
          <li><a href="#">팔로우/팔로워</a></li>
          <li><a href="#">리뷰관리</a></li>
        </ul>
      </div> -->
      <div><a href="./logout">로그아웃</a></div>
    </div>
  </div>
</header>