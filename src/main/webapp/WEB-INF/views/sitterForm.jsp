<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/form_component.css">
<link rel="stylesheet" href="../resources/css/mypage_form.css">

<script src="https://kit.fontawesome.com/064a55beb6.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<title>시터정보입력</title>
</head>

<body>
	<div id="wrapper">
		<div class="login_form w50">
			<h3 class="form_title fs24">펫시터 정보 등록</h3>

			<form action="/sitterForm/register" method="POST" id="sitterForm" class="mypage_form" enctype="multipart/form-data">
				<div class="tip tip1 mb25">펫시터 활동을 위한 추가 정보 등록이 필요해요</div>
				<!-- 사진등록 -->
				<div class="f_row profile_upload">
					<p class="fc_title">프로필 사진을 올려주세요</p>
					<p class="tip">프로필 사진이 있으면 보호자에게 연락올 확률이 높아져요</p>

					<div class="profile_upload">
						<div class="prof_img">
							<!-- <p class="img">
								<img src="#" alt="사진이없을경우 이미지">
							</p> -->
							<!-- 프로필 등록 후 -->
							<div class="img_wrap img" alt="사진이없을경우 이미지"></div>
							<label for="file" class="pet_btn edit_btn">
								<i class="fa-solid fa-pen" id="pen"></i>
							</label>
							<input type="file" name="imageFile" id="file" hidden="hidden"></input>
						</div>
					</div>
				</div>

				<!-- 동물체크 -->
				<div class="f_row">
					<p class="fc_title">케어가능한 반려동물의 종류를 선택해주세요</p>
					<label class="fcCbox2 mr12"> <input type="checkbox"
						name="pet_kind" value="dog"><span>강아지</span>
					</label> <label class="fcCbox2 mr12"> <input type="checkbox"
						name="pet_kind" value="cat"><span>고양이</span>
					</label> <label class="fcCbox2 mr12"> <input type="checkbox"
						name="pet_kind" value="fish"><span>관상어</span>
					</label> <label class="fcCbox2 mr12"> <input type="checkbox"
						name="pet_kind" value="bird"><span>새</span>
					</label> <label class="fcCbox2"> <input type="checkbox"
						name="pet_kind" value="reptile"><span>파충류</span>
					</label>
					<p class="fc_title">종을 입력해주세요</p>
					<input type="text" name="pet_specie">
				</div>

				<!-- 가능한 요일 -->
				<div class="f_row days">
					<p class="fc_title">펫시터 활동이 가능한 요일을 알려주세요</p>
					<p class="pb12 select_all">
						<label class="fcCbox1"><input type="checkbox"><span>전체선택</span></label>
					</p>
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="work_day" value="mon"><span>월</span>
					</label>
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="work_day" value="tue"><span>화</span>
					</label> 
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="work_day" value="wed"><span>수</span>
					</label> 
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="work_day" value="thu"><span>목</span>
						</label> 
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="work_day" value="fri"><span>금</span>
					</label> 
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="work_day" value="sat"><span>토</span>
					</label> 
					<label class="fcCbox2">
						<input type="checkbox" name="work_day" value="sun"><span>일</span>
					</label>
				</div>

				<!-- 제공가능서비스 -->
				<div class="f_row">
					<p class="fc_title">제공가능한 서비스를 알려주세요</p>
					<p class="pb12 select_all">
						<label class="fcCbox1"><input type="checkbox"><span>전체선택</span></label>
					</p>
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="service" value="visit"><span>방문관리</span>
					</label> 
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="service" value="walk"><span>산책</span>
					</label>
					<label class="fcCbox2 mr12">
						<input type="checkbox" name="service" value="shower"><span>목욕</span>
					</label>
					<label class="fcCbox2">
						<input type="checkbox" name="service" value="education"><span>교육</span>
					</label>
				</div>

				<div class="f_row">
					<p class="fc_title">활동가능한 지역을 알려주세요</p>
					<select class="fcc_select" name="" id="">
						<option value="">셀렉트옵션</option>
						<option value="">셀렉트옵션</option>
						<option value="">셀렉트옵션</option>
					</select>
				</div>

				<div class="f_row">
					<p class="fc_title">자기소개를 간단하게 해주세요. 펫시터 경험을 써주셔도 좋아요</p>
					<textarea name="info" id="" class="fcc_textarea"></textarea>
				</div>

				<span class="pet_btn submit_btn transition02">펫시터정보등록하기</span>
			</form>

		</div>
	</div>
</body>



<script>
var sel_file = [];
$(document).ready(function() {
	//------------- 이미지 미리보기 시작 ------------------
	$("#file").on("change", handleImgFileSelect);

	//e : change 이벤트 객체
	//change 이벤트 설정하면  e는 이벤트가 된다. handleImgFileSelect에 파라미터 주면 e가 이벤트가 아니라 그냥 파라미터가 됨.
	function handleImgFileSelect(e) {
		$(".img").empty();
		console.log("여길봐라: " + JSON.stringify(e));
		//e.target : 파일객체
		//e.target.files : 파일객체 안의 파일들
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		//f : 파일 객체
		filesArr.forEach(function(f) {
			//미리보기는 이미지만 가능함
			if (!f.type.match("image.*")) {
				alert("이미지만 가능합니다");
				return;
			}

			// 파일객체 복사
			sel_file.push(f);

			//파일을 읽어주는 객체 생성
			var reader = new FileReader();
			reader.onload = function(e) {
				//forEach 반복 하면서 img 객체 생성
				var img_html = "<img src=\"" + e.target.result + "\" />";
				$(".img_wrap").append(img_html);
			}
			reader.readAsDataURL(f);
		});
	}

	//------------- 이미지 미리보기 끝 ------------------

	$(".submit_btn").click(function() {
		$("#sitterForm").submit();
	})
})
</script>