<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Artist/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Artist/ArtistSearch.css">

</head>

<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- nav_artist  -->
	<c:import url="/WEB-INF/views/Artist/includes/artbox.jsp"></c:import>


	<div class="section-01">
		<div class="leftsection">
			<!-- 종합랭킹 -->
			<div class="leftsection-01">
				<h2>통합검색</h2>
				<!-- 아티스트 검색 -->
				<div>
					<input type="text" placeholder="아티스트 검색"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/search.png" style="width: 20px">
				</div>
			</div>
			<!-- 종합랭킹 표그래프 -->
			<div class="leftsection-02">
				<table>
					<thead>
						<tr>
							<td>NO</td>
							<td></td>
							<td>활동명</td>
							<td>주요장르</td>
							<td>주요정보</td>
							<td>좋아요</td>
							<td>팬 되기</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${artistNew.ArtistList}" var="nList">
							<!--1번-->
							<tr>
								<td>${nList.rn}</td>
								<td><c:if test="${nList.user_img == null}">
										<img src="/Buskeround/assets/image/blog/icon/user.png" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
									</c:if> <c:if test="${nList.user_img != null}">
										<img src="${pageContext.request.contextPath}/upload/${nList.user_img}" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
									</c:if></td>
								<td>
									<div>${nList.nickname}</div>
									<div>
										<c:if test="${nList.y_url != null}">
											<img src="${pageContext.request.contextPath}/assets/image/artist/icon/youtube.png" style="width: 20px">
										</c:if>
										<c:if test="${nList.f_url != null}">
											<img src="${pageContext.request.contextPath}/assets/image/artist/icon/facebook.png" style="width: 20px">
										</c:if>
										<c:if test="${nList.i_url != null}">
											<img src="${pageContext.request.contextPath}/assets/image/artist/icon/insta.png" style="width: 20px">
										</c:if>
									</div>
								</td>
								<!-- 장르 -->
								<c:if test="${nList.genre == 1}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${nList.genre == 2}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${nList.genre == 3}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${nList.genre == 4}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png" style="width: 65px"></td>
								</c:if>

								<c:if test="${nList.genre == 5}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${nList.genre == 6}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png" style="width: 60px"></td>
								</c:if>

								<td>
									<div>${nList.genre_type}</div>
									<div>가입연도 ${nList.artist_regdate}년</div>
								</td>
								<td><img src="${pageContext.request.contextPath}/assets/image/artist/icon/heart2.png" style="width: 20px"> <span>${nList.likes}</span></td>
								<td><img src="${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png" style="width: 20px"> <span>${nList.fan}</span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- aside  -->
		<c:import url="/WEB-INF/views/Artist/includes/aside.jsp"></c:import>

	</div>


	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
</html>
