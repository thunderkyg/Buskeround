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
<link rel="stylesheet" href="../../assets/css/BuskingZone/company.css">
</head>

<body>
	<!-- header -->
	<div class="row" id="header">
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
					<h4>제휴사 관리</h4>
					<li><a href="./companyInfo.jsp">제휴사 정보</a></li>
					<li><a href="./stageManage.jsp">공연장 관리</a></li>
					<li><a href="./buskingZoneManage.jsp">버스킹존 등록</a></li>
					<li><a class="active" href="./applyManage.jsp">공연신청 관리</a></li>
				</ul>
			</div>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>공연신청 관리</h5>
				</div>
				<div id="mypage-main-content">
					<div id="content-filter-area">
						<div class="content-filter">
							<select name="stage" id="stage-select">
								<option value="">7층 스테이지</option>
								<option value="">8층 카페</option>
							</select>
						</div>
						<div class="content-filter">
							<select name="date" id="date-select">
								<option value="">2021.09.01</option>
								<option value="">2021.09.02</option>
							</select>
						</div>
						<div class="content-filter">
							<select name="time" id="time-select">
								<option value="">20:00-22:00</option>
								<option value="">22:00-24:00</option>
							</select>
						</div>
					</div>
					<table class="table table-bordered">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 20%">
							<col style="width: 10%">
							<col style="width: 5%">
						</colgroup>

						<tr>
							<th>활동명</th>
							<th>장소</th>
							<th>날짜</th>
							<th>시간</th>
							<th>장르</th>
							<th>연락처</th>
							<th>상세정보</th>
							<th>상태</th>
							<th></th>
						</tr>
						<tr>
							<td>버스커</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>R&B</td>
							<td>010-1234-1234</td>
							<td>상세정보</td>
							<td>수락</td>
							<td>
								<div class="checkbox">
									<input type="checkbox" value="">
								</div>
							</td>
						</tr>
						<tr>
							<td>버스커</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>R&B</td>
							<td>010-1234-1234</td>
							<td>상세정보</td>
							<td>거절</td>
							<td>
								<div class="checkbox">
									<input type="checkbox" value="">
								</div>
							</td>
						</tr>
						<tr>
							<td>버스커</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>R&B</td>
							<td>010-1234-1234</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<div class="checkbox">
									<input type="checkbox" value="">
								</div>
							</td>
						</tr>
						<tr>
							<td>버스커</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>R&B</td>
							<td>010-1234-1234</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<div class="checkbox">
									<input type="checkbox" value="">
								</div>
							</td>
						</tr>
						<tr>
							<td>버스커</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>R&B</td>
							<td>010-1234-1234</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<div class="checkbox">
									<input type="checkbox" value="">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="btn-area">
					<button type="submit" class="btn-primary btn-sm">수락</button>
					<button type="submit" class="btn-danger btn-sm">거절</button>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


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
</body>
</html>