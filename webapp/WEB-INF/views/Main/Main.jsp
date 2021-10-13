<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buskeround</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Main/main.css">

</head>
<body>
		<!-- header -->
		<div id="header">
			<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		</div>
		<!-- header -->
		<!-- cont_wrap -->
		<div id="cont_wrap" class="clfix">
		
			<!-- cont_section -->
			<div id="cont_section" class="pr_none">
				<!-- contents -->
				<div id="conts" class="clfix">
					<!-- 맵 -->
					<div class="map">
						<h2>
							<a>LIVE</a>
						</h2>
					
					</div>
					<!-- 맵 -->
					<!-- 뉴 아티스트 -->
					<div class="new_artist">
						<h2>NEW ARTIST</h2>
						<!-- 캐러샐 -->
						<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
			
							<div class="carousel-indicators">
								<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
								<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
								<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
								<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
							</div>
			
							<div class="carousel-inner" style="width: 314px; height: 316px;">
								<div class="carousel-item active" data-bs-interval="3000">
									<img src="${pageContext.request.contextPath}/assets/image/artist/img/2.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
								</div>
								<div class="carousel-item" data-bs-interval="3000">
									<img src="${pageContext.request.contextPath}/assets/image/artist/img/3.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
								</div>
								<div class="carousel-item" data-bs-interval="3000">
									<img src="${pageContext.request.contextPath}/assets/image/artist/img/4.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
								</div>
								<div class="carousel-item" data-bs-interval="3000">
									<img src="${pageContext.request.contextPath}/assets/image/artist/img/5.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
								</div>
								<div class="carousel-item" data-bs-interval="3000">
									<img src="${pageContext.request.contextPath}/assets/image/artist/img/6.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
								</div>
							</div>
			
							<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
					<!-- 뉴 아티스트 -->
					<!-- 로그인/신청 -->
					<div class="id_wrap">
						<div class="login_wrap">
							<div class="login_box">
								<p class="login_msg">버스커라운드를 더 편리하게 이용하세요.</p>
								<a class="link_login" href="#">Buskeround 로그인</a>
								<div class="sub_area">
									<div class="link_join">
										<a href="#">회원가입</a>
									</div>
								
								</div>
							</div>
						</div>
						<div class="apply_wrap">
							<h2>제휴사/아티스트 신청구역</h2>
						</div>
						<div class="photo_wrap">
							<h2>아무 사진 구역</h2>
						</div>
					
					</div>
					<!-- 로그인/신청 -->
					<!-- 라이브/갤러리 -->
					<div class="artist_wrap">
						<div class="live_wrap">
							<h2>ON AIR</h2>
						</div>
						<div class="gallery_wrap">
							<h2>GALLERY</h2>
						</div>
					</div>
					<!-- 라이브/갤러리 -->
					<!-- 아티스트 랭킹 -->
					<div class="artist_rank">
						<h2>RANK</h2>
					</div>
					<!-- 아티스트 랭킹 -->
				</div>
				<!-- contents -->
			</div>
			<!-- cont_section -->
		</div>
		<!-- cont_wrap -->
		<!-- footer -->
		<div id="footer">
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</div>
		<!-- footer -->
</body>
</html>