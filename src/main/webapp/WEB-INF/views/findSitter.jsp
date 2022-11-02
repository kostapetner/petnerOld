<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../resources/css/common.css">
   <link rel="stylesheet" href="../resources/css/form-brown.css">
  <script src="https://kit.fontawesome.com/064a55beb6.js" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
  <title>Petner</title>
  <style type="text/css">
  #ptitle{
    text-align: center;
    border-bottom: 1px solid;
    padding-bottom: 26px;
    width: 800px;
    margin: 0 auto;
  }
   /* padding, margin -> common*/
  .pb15{padding-bottom:15px;}
  </style>
</head>

<body>
  <div id="wrapper">
    <!-- HEADER BASIC -->
    <header id="header">
      <div class="header_inner">
        <h1><img src="../resources/images/header_logo.png" alt="logo"></h1>
        <nav id="gnb">
          <ul>
            <li><a href="findsitter">펫시터 찾기</a></li>
            <li><a href="#">돌봐줄 동물 찾기</a></li>
            <li><a href="#">공지사항</a></li>
          </ul>
        </nav>
        <div class="login_menu">
          <ul>
            <!-- 세션있을때  -->
            <li class="in_session"><a class="heart transition02" href="#"><i class="fa-solid fa-heart"></i></a></li>
            <li class="in_session"><a class="alert transition02" href="#"><i class="fa-solid fa-bell"></i></a></li>
            <li class="in_session mypage"><a a class="my transition02" href="#"><i class="fa-solid fa-user"></i> </a></li>

            <!-- 세션없을때 로그인 -->
            <li><a class="login" href="#">로그인</a></li>
          </ul>
        </div>
        <div class="float_mymenu">
          <div>
            <p class="pb10"><b >petpetid123</b></pc>
            <p class="flex_between">
              <span class="second">pet1234@gmail.com</span>
              <a style="font-weight: 300;" class="second" href="#">마이페이지</a>
            </p>
          </div>

          <div class="flex_between">
            <div>
              <p class="second pb4">닉네임</p>
              <p>코스타펫스타</p>
            </div>
            <div>
              <p class="second pb4">등급</p>
              <p>VIP</p>
            </div>
          </div>
          <div>
            <ul>
              <li><a href="#">팔로우/팔로워</a></li>
              <li><a href="#">내가찜한게시글</a></li>
              <li><a href="#">쪽지</a></li>
              <li><a href="#">리뷰관리</a></li>
            </ul>
          </div>
          <div><a href="#">로그아웃</a></div>
        </div>
      </div>
    </header>
    
    <!-- CONTAINER -->
	<div class="container">
		<p id="ptitle">펫시터 찾기</p>
		<!-- 셀렉트 -->
		<div class="pb15">
			<select class="fcc_select" name="" id="">
				<option value="">셀렉트옵션</option>
				<option value="">셀렉트옵션</option>
				<option value="">셀렉트옵션</option>
			</select>
		</div>
		<div class="pb15">
			<p class="fc_title">통합검색</p>
			<input type="text" placeholder="통합검색" />
		</div>
		<div class="pb15">
			<label class="fcRadio1">
				<input type="radio" name="coconut"><span>라디오버튼내용1</span>
			</label> <label class="fcRadio1"> <input type="radio" name="coconut"><span>라디오버튼내용2</span>
			</label>
		</div>






		</div>

		<!-- FOOTER BASIC -->
    <footer id="footer">
      <div class="footer_inner">
        <div class="footer_logo"><img src="../resources/images/footer_logo.png" alt=""></div>
        <div class="footer_menu">
          <!-- 마이페이지 -->
          <div>
            <p class="fm_title">마이페이지</p>
            <div class="fms">
              <a href="#">마이페이지</a>
              <a href="#">팔로우 / 팔로워</a>
              <a href="#">쪽지</a>
              <a href="#">내가찜한게시글</a>
              <a href="#">리뷰관리</a>
              <a href="#">1:1문의</a>
            </div>
          </div>
          <!-- 펫시터찾기 -->
          <div>
            <p class="fm_title">펫시터찾기</p>
            <div class="fms">
              <a href="#">서비스 신청</a>
              <a href="#">내 주변 시터</a>
            </div>
          </div>
          <!-- 공지사항 -->
          <div>
            <p class="fm_title">공지사항</p>
            <div class="fms">
              <a href="#">Q&A</a>
              <a href="#">이벤트</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
</body>
</html>

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