<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>

<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

<!-- font(Logo) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="../../assets/css/BuskingZone/common.css">
<link rel="stylesheet" href="../../assets/css/BuskingZone/busking.css">
<link rel="stylesheet" href="../../assets/css/MyPage/mypage.css">
</head>

<body>
	<!-- header -->
	<div class="row" id="navbox">
		<div class="col-xl-2"></div>

		<!-- nav -->
		<div class="col-xl-8">
			<div class="navbar">

				<!-- nav_logo -->
				<div class="navbar_logo">
					<a href="">Br.</a>
				</div>

				<!-- nav_menu -->
				<ul class="navbar_menu">
					<li><a href="">공연</a></li>
					<li><a href="">아티스트</a></li>
					<li><a href="">버스킹존</a></li>
					<li><a href="">고객센터</a></li>
				</ul>

				<!-- nav_login -->
				<ul class="navbar_login">
					<li><a href="">로그인</a></li>
					<li><a href="">회원가입</a></li>
				</ul>
			</div>
		</div>
		<!------- nav -------->

		<div class="col-xl-2"></div>
	</div>
	<!------- header -------->

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<div id="mypage-left">
				<ul id="mypage-category">
					<h4>마이페이지</h4>
					<li><a href="">프로필 수정</a></li>
					<li><a href="">아티스트 등록</a></li>
					<li><a href="">제휴사 등록</a></li>
					<li><a class="active" href="">공연신청 현황</a></li>
				</ul>
			</div>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>공연신청 현황</h5>
				</div>
				<div id="mypage-right-content">
					<table class="table table-bordered">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 17%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 23%">
							<col style="width: 10%">
							<col style="width: 10%">
						</colgroup>

						<tr>
							<th>장소명</th>
							<th>연락처</th>
							<th>공연장소</th>
							<th>날짜</th>
							<th>시간</th>
							<th>상세정보</th>
							<th>상태</th>
							<th></th>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>수락</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>거절</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>

	<!-- content -->
	<div class="row" id="content"></div>
	<!-------- content -------->

	<!-- footer -->
	<div class="row" id="footerbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8">
			<div class="footer">
				<p style="text-align: center; padding-top: 47px;">
					대표이사 김영기 | 주소 서울 강남구 테헤란로 415(L7 HOTELS 강남타워 6,7층) | 버스커라운드 주식회사<br> 사업자 등록번호 133-12-15979 | 문의전화 02-8732-4204 | 메일 HELP@buskeround.com<br> COPYRIGHT©BUSKEROUND CROP ALL RIGHTS RESERVED. <br>
				</p>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>
	<!------- footer -------->

	</div>
	<!------- wrap -------->
</body>
</html>