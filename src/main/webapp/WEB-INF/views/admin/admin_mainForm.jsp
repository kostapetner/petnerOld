<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- CSS -->
 <link rel="stylesheet" href="./css/common.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
<link rel="stylesheet" href="./css/admin_main.css">
<!-- JS -->
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>


<title>admin main page</title>

</head>
<body>
<div class="container-fluid">
  <div class="row">
   

    <!-- ********** container ********** -->
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

    <!-- ********** 현황 ********** -->
    <div class="card ad_card mb-4" style="margin-top: 30px;">
<div class="card-body">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h2 class="card-title">현황</h2>
      <div class="btn-toolbar mb-2 mb-md-0">
        <div class="btn-group me-2">
          <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
          <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
        </div>
        <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
          <span data-feather="calendar" class="align-text-bottom"></span>
          This week
        </button>
      </div>
    </div>
  <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
</div>
    </div>
    <!-- --------- 현황 --------- -->

      <!-- ********** 미처리 현황 ********** -->
      <div class="card ad_card mb-4">
        <div class="card-body">
          <h2 class="card-title">미처리 현황</h2>
          <nav class="nav ad_card_nav">
            <a class="nav-link active" aria-current="page" href="#">신고접수처리</a>
            <a class="nav-link" href="#">1:1문의</a>
          </nav>
          <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">날짜</th>
                <th scope="col">신고자</th>
                <th scope="col">신고대상</th>
                <th scope="col">내용</th>
                <th scope="col" style="text-align: end;">상태</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <div class="row">
                  <td class="col-2">2022.11.09</th>
                    <td class="col-2">Mark</td>
                    <td class="col-2">Otto</td>
                    <td class="col-4">@mdo</td>
                    <td class="col-2" style="text-align: end;">@mdo</td>
                </div>
              </tr>
              <tr>
                <div class="row">
                  <td class="col-2">2022.11.09</th>
                    <td class="col-2">Mark</td>
                    <td class="col-2">Otto</td>
                    <td class="col-4">@mdo</td>
                    <td class="col-2" style="text-align: end;">@mdo</td>
                </div>
              </tr>
              <tr>
                <div class="row">
                  <td class="col-2">2022.11.09</th>
                    <td class="col-2">Mark</td>
                    <td class="col-2">Otto</td>
                    <td class="col-4">@mdo</td>
                    <td class="col-2" style="text-align: end;">@mdo</td>
                </div>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <!-- --------- 미처리 현황 --------- -->

      <!-- ********** 게시판 관리 ********** -->
      <div class="card ad_card mb-4">
        <div class="card-body">
          <h2 class="card-title">게시판 관리</h2>
          <nav class="nav ad_card_nav">
            <a class="nav-link active" aria-current="page" href="#">게시판</a>
            <a class="nav-link" href="#">게시판2</a>
          </nav>
          <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">날짜</th>
                <th scope="col">신고자</th>
                <th scope="col">신고대상</th>
                <th scope="col">내용</th>
                <th scope="col" style="text-align: end;">상태</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <div class="row">
                  <td class="col-2">2022.11.09</th>
                    <td class="col-2">Mark</td>
                    <td class="col-2">Otto</td>
                    <td class="col-4">@mdo</td>
                    <td class="col-2" style="text-align: end;">@mdo</td>
                </div>
              </tr>
              <tr>
                <div class="row">
                  <td class="col-2">2022.11.09</th>
                    <td class="col-2">Mark</td>
                    <td class="col-2">Otto</td>
                    <td class="col-4">@mdo</td>
                    <td class="col-2" style="text-align: end;">@mdo</td>
                </div>
              </tr>
              <tr>
                <div class="row">
                  <td class="col-2">2022.11.09</th>
                    <td class="col-2">Mark</td>
                    <td class="col-2">Otto</td>
                    <td class="col-4">@mdo</td>
                    <td class="col-2" style="text-align: end;">@mdo</td>
                </div>
              </tr>
            </tbody>
          </table>
          </div>
      </div>
      <!-- --------- 게시판 관리 --------- -->


      <h2>Section title</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Header</th>
              <th scope="col">Header</th>
              <th scope="col">Header</th>
              <th scope="col">Header</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1,001</td>
              <td>random</td>
              <td>data</td>
              <td>placeholder</td>
              <td>text</td>
            </tr>
            <tr>
              <td>1,002</td>
              <td>placeholder</td>
              <td>irrelevant</td>
              <td>visual</td>
              <td>layout</td>
            </tr>
            <tr>
              <td>1,003</td>
              <td>data</td>
              <td>rich</td>
              <td>dashboard</td>
              <td>tabular</td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>
    <!-- --------- container --------- -->
  </div>
</div>
</body>
</html>