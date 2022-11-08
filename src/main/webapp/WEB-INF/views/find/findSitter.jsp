<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<c:import url='/WEB-INF/views/include/common_head.jsp'/>
	<title>${title}</title>
	<style>
	  .filter_feed{display:none}
	  .filter_feed .f_row{padding-bottom:5px;}
	</style>
</head>
<script>
  $(document).ready(function(){
    $(".date-picker").datepicker({
    	language: 'ko'
    }); 
  })
</script>
<body>
  <div id="wrapper">
    <!-- CONTAINER -->
    aaaaaaaaaaa
    <div class="container w90">
      <div class="">
        <p class="list_title">펫시터 찾기</p>
        <!-- 시터성별, 요일, 서비스, 동물종류 필터 피드-->
        <div class="filter_feed">
          <div class="f_row">
            <p class="filter_title">펫시터 성별</p>
            <label class="fcCbox1"><input type="checkbox" name="sex"><span>여성펫시터</span></label>
            <label class="fcCbox1"><input type="checkbox" name="sex"><span>남성펫시터</span></label>
          </div>
          <div class="f_row">
            <p class="filter_title">가능한 요일</p>
            <label class="fcCbox1"><input type="checkbox" name="day" value="mon"><span>월</span></label>
            <label class="fcCbox1"><input type="checkbox" name="day" value="tue"><span>화</span></label>
            <label class="fcCbox1"><input type="checkbox" name="day" value="tue"><span>화</span></label>
            <label class="fcCbox1"><input type="checkbox" name="day" value="tue"><span>화</span></label>
            <label class="fcCbox1"><input type="checkbox" name="day" value="tue"><span>화</span></label>
            <label class="fcCbox1"><input type="checkbox" name="day" value="tue"><span>화</span></label>
            <label class="fcCbox1"><input type="checkbox" name="day" value="tue"><span>화</span></label>
          </div>
          <div class="f_row">
            <p class="filter_title">가능한 요일</p>
            <label class="fcCbox1"><input type="checkbox" name="service" value="1"><span>방문</span></label>
            <label class="fcCbox1"><input type="checkbox" name="service" value="2"><span>어쩌고</span></label>           
          </div>
          <div class="f_row">
            <p class="filter_title">동물종류</p>
            <label class="fcCbox1"><input type="checkbox" name="service" value="1"><span>멍멍</span></label>
            <label class="fcCbox1"><input type="checkbox" name="service" value="2"><span>야옹</span></label>           
          </div>
          <div class="f_row">
            <input type="text" class="date-picker">
          </div>
          
        </div>
        <!-- 카드형 리스트 -->
        <div class="card_list_type">
          <ul>
            <li>
              <div class="data">
                 <!-- 이미지영역 -->
                <div class="img_area">
                  <img src="https://img.wkorea.com/w/2022/10/style_634f9b4c8c907-500x354-1666161931.jpg" alt="이미지">
                </div>
                <!-- 텍스트정보 영역 -->
                <div class="text_area">
                  <div class="row1">
                    <p><span class="nick">닉네임</span><span class="type">상태값</span></p>
                    <p><span class="badge">최강기요미</span></p>
                  </div> 
                  <div class="row2">
                    <p><a href="#">팔로워<span class="f_val">122</span></a></p>
                    <p><a href="#">팔로잉<span class="f_val">122</span></a></p>                    
                  </div>
                  <div class="row3">
                    2022-05-23~
                  </div>       
                  <div class="row4">
                    자기소개 
                  </div>     
                </div>
              </div>
              <div class="icons">
                <a href="#"><i class="fa-regular fa-heart"></i></a>
                <a href="#"><i class="fa-solid fa-user-plus"></i></a>
                <a href="#"><i class="fa-solid fa-comment-dots"></i></a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</body>
</html>