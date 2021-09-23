<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MyPage/mypage.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<c:import url="/WEB-INF/views/MyPage/includes/aside.jsp"></c:import>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<c:choose>
						<c:when test="${authUser.user_type == 1}">
							<h5>아티스트 등록</h5>
						</c:when>
						<c:otherwise>
							<h5>아티스트 수정</h5>
						</c:otherwise>
					</c:choose>
				</div>
				<div id="mypage-right-content">
					<form action="${pageContext.request.contextPath}/MyPage/artistModify" method="POST" id="artistModify">
						<input type="hidden" name="user_no" value="${sessionScope.authUser.user_no}">
						<input type="hidden" name="user_type" value="2"> 
						<input type="hidden" name="id" value="${sessionScope.authUser.id}">
						<c:if test="${authUser.user_type == 1}">
							<table>
								<tr>
									<td class="table-head"><label class="required" for="nickname">활동명</label></td>
									<td><input class="input" type="text" id="artistname" name="nickname" placeholder="활동명을 입력해주세요" value="${sessionScope.authUser.nickname}">
									<span id="check_nickname">중복된 활동명입니다.</span></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="name">이름</label></td>
									<td><input class="input" type="text" id="name" name="name" placeholder="이름을 입력해주세요."></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="hp">연락처</label></td>
									<td><input class="input" type="text" id="hp" name="hp" placeholder="연락처를 입력해주세요."></td>
								</tr>
								<tr>
									<td class="table-head"><label for="gender">성별</label></td>
									<td><input class="radio" type="radio" name="gender" value="male"><span class="radiolabel">남</span> <input type="radio" name="gender" value="female"><span class="radiolabel">여</span></td>
								</tr>
								<tr>
									<td class="table-head"><label for="birthday">생년월일</label></td>
									<td><input class="input" type="text" id="birthday" name="birthday" placeholder="YYYY/MM/DD"></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="genre">퍼포먼스/장르</label></td>
									<td><input class="radio" type="radio" name="genre" value="1"><span class="radiolabel">발라드</span> <input class="radio" type="radio" name="genre" value="2"><span class="radiolabel">댄스</span> <input class="radio" type="radio" name="genre" value="3"><span class="radiolabel">랩/힙합</span> <input class="radio" type="radio" name="genre" value="4"><span class="radiolabel">R&B소울</span><br> <br> <input class="radio" type="radio" name="genre" value="5"><span class="radiolabel">악기</span> <input class="radio" type="radio" name="genre" value="6"><span class="radiolabel">기타공연</span></td>
								</tr>
								<tr>
									<td class="table-head"><label for="genre_type">장르유형</label></td>
									<td><input class="input" type="text" id="genre_type" name="genre_type" placeholder="장르유형을 입력해주세요"></td>
								</tr>
							</table>
						</c:if>

						<c:if test="${authUser.user_type == 2}">
							<table>
								<tr>
									<td class="table-head"><label class="required" for="nickname">활동명</label></td>
									<td><input class="input" type="text" id="artistname" name="nickname" placeholder="활동명을 입력해주세요" value="${sessionScope.authUser.nickname}"><br>
									<span id="check_nickname">중복된 활동명입니다.</span></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="name">이름</label></td>
									<td><input class="input" type="text" id="name" name="name" placeholder="이름을 입력해주세요." value="${requestScope.mypageVo.name}"></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="hp">연락처</label></td>
									<td><input class="input" type="text" id="hp" name="hp" placeholder="연락처를 입력해주세요." value="${requestScope.mypageVo.hp}"></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="gender">성별</label></td>
									<td><input class="radio" type="radio" name="gender" value="male" <c:if test="${requestScope.mypageVo.gender == 'male'}">checked</c:if>><span class="radiolabel">남</span> 
										<input type="radio" name="gender" value="female" <c:if test="${requestScope.mypageVo.gender == 'female'}">checked</c:if>><span class="radiolabel">여</span>
									</td>
								</tr>
								<tr>
									<td class="table-head"><label for="birthday">생년월일</label></td>
									<td><input class="input" type="text" id="birthday" name="birthday" placeholder="YYYY/MM/DD" value="${requestScope.mypageVo.birthday}"></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="genre">퍼포먼스/장르</label></td>
									<td>
										<input class="radio" type="radio" name="genre" value="1" <c:if test="${requestScope.mypageVo.genre == 1}">checked</c:if>><span class="radiolabel">발라드</span> 
										<input class="radio" type="radio" name="genre" value="2" <c:if test="${requestScope.mypageVo.genre == 2}">checked</c:if>><span class="radiolabel">댄스</span> 
										<input class="radio" type="radio" name="genre" value="3" <c:if test="${requestScope.mypageVo.genre == 3}">checked</c:if>><span class="radiolabel">랩/힙합</span> 
										<input class="radio" type="radio" name="genre" value="4" <c:if test="${requestScope.mypageVo.genre == 4}">checked</c:if>><span class="radiolabel">R&B소울</span><br><br> 
										<input class="radio" type="radio" name="genre" value="5" <c:if test="${requestScope.mypageVo.genre == 5}">checked</c:if>><span class="radiolabel">악기</span> 
										<input class="radio" type="radio" name="genre" value="6" <c:if test="${requestScope.mypageVo.genre == 6}">checked</c:if>><span class="radiolabel">기타공연</span>
									</td>
								</tr>
								<tr>
									<td class="table-head"><label for="genre_type">장르유형</label></td>
									<td><input class="input" type="text" id="genre_type" name="genre_type" placeholder="장르유형을 입력해주세요" value="${requestScope.mypageVo.genre_type}"></td>
								</tr>
							</table>
						</c:if>
						<c:choose>
							<c:when test="${authUser.user_type == 1}">
								<button type="submit" class="float-end btn-primary btn-sm" id="profilesubmit">등록</button>
							</c:when>
							<c:otherwise>
								<button type="submit" class="float-end btn-primary btn-sm" id="profilesubmit">수정</button>
							</c:otherwise>
						</c:choose>
					</form>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


	<!-- Footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>

<script type="text/javascript">
var nick_check = true;

//활동명 중복
$("#check_nickname").hide();

//활동명 중복 체크
$("[name=nickname]").keyup(function() {

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/mypage/nickCheck",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : {
				nickname : $("[name=nickname]").val(),
				user_no : $("[name=user_no]").val()
			},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				console.log("nick= " + result);

				if (result === true) {
					$("#check_nickname").hide();
					nick_check = true;
					console.log("nick_check= " + nick_check);

				} else if (result === false) {
					nick_check = false;
					$("#check_nickname").show();
				}

			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

// 등록/수정 클릭
$("#artistModify").on("submit", function() {
	console.log("서브밋")
	if (nick_check === false) {
		alert("다른 활동명을 입력해주세요.");

		return false;
	}

	if ($("[name=nickname]").val().length < 1) {
		alert("활동명을 입력해 주세요.");

		return false;
	}

	if ($("[name=name]").val().length < 1) {
		alert("이름을 입력해 주세요.");

		return false;
	}

	if ($("[name=hp]").val().length < 1) {
		alert("연락처를 입력해 주세요.");

		return false;
	}

	if ($("[name=gender]").val().length < 1) {
		alert("성별을 선택해주세요.");

		return false;
	}
	
	if ($("[name=genre]").val().length < 1) {
		alert("퍼포먼스/장르를 선택해주세요.");

		return false;
	}

	return true;
});

</script>


</html>