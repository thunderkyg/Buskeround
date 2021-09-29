<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogModify.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<body>

	<!------ br_container ------>
	<div class="clearfix" id="br_container">
    <c:import url="/WEB-INF/views/Blog/includes/aside.jsp"></c:import>

		<!------ br_content ------>
		<div id="br_content">
      	<c:import url="/WEB-INF/views/Blog/includes/header.jsp"></c:import>

			<!-- 컨텐트 (프로필 수정) -->
			<div class="modify-header">
				<h5>블로그 관리</h5>
			</div>

			<div class="modify-form">
				<form action="${pageContext.request.contextPath}/blog/modify" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="user_no" value="${blogVo.user_no}">
					<input type="hidden" name="id" value="${blogVo.id}">
					<input id="img_check" type="hidden" name="img_check" value="0">
					<table>
						<tr>
							<td class="table-head"><label for="nickname">활동명</label></td>
							<td><input class="input" type="text" id="artistname" name="nickname" placeholder="활동명을 입력해주세요." value="${blogVo.nickname}"></td>
						</tr>
						<tr>
							<td class="table-head"><label for="intro">자기소개</label></td>
							<td><textarea class="input" name="intro" placeholder="자기소개를 입력해주세요.">${blogVo.intro}</textarea></td>
						</tr>
						<tr>
							<td class="table-head"><label for="resume">이력사항</label></td>
							<td><input class="input" type="text" id="record" name="resume" placeholder="이력사항을 입력해주세요"></td>
						</tr>
						<tr id="banner">
							<td class="table-head"><label>대문이미지</label></td>
							<td>
								<c:if test="${blogVo.banner == null}">
									<img id="bannerImg" src="/Buskeround/assets/image/blog/img/defaultbanner.jpg">
								</c:if>
								
								<c:if test="${blogVo.banner != null}">
									<img id="bannerImg" src="${pageContext.request.contextPath}/upload/${blogVo.banner}">
								</c:if>
								
								<label id="banner-deletebutton" class="btn-danger btn-sm">
								삭제
								</label>
								
								<label id="banner-changebutton" class="btn-success btn-sm">
							    <input type="file" id="file1" name="file1" accept="image/*" onchange="setThumbnail(event);">
							    변경
								</label>
								
								</td>
						</tr>
						<tr>
							<td class="table-head"><label>SNS 링크</label></td>
							<td class="label-width">
								<div>
									<div>
										<label>유튜브</label> <input class="sns-input" name="y_url" type="text" value="${blogVo.y_url}">
									</div>
									<div>
										<label>페이스북</label> <input class="sns-input" name="f_url" type="text" value="${blogVo.f_url}">
									</div>
									<div>
										<label>인스타그램</label> <input class="sns-input" name="i_url" type="text" value="${blogVo.i_url}">
									</div>
								</div>

							</td>
						</tr>
					</table>
					<button class="float-end" id="profilecancel" onclick="location.href=''">취소</button>
					<button type="submit" class="float-end" id="profilesubmit">수정</button>
				</form>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

	//미리보기
	function setThumbnail(event) { 
		console.log("미리보기 실험")
		var reader = new FileReader(); 
		
		var picture = document.getElementById("profilepicture");
		
		reader.onload = function(event) { 
			document.querySelector("img#bannerImg").setAttribute("src", event.target.result); 
			document.querySelector("input#img_check").setAttribute("value", '1'); 
		}; 
		
		reader.readAsDataURL(event.target.files[0]); 
		}
	
	//미리보기 삭제
	$("#banner-deletebutton").on("click", function(){
		console.log("미리보기 삭제")
		
		document.querySelector("img#bannerImg").setAttribute("src", '/Buskeround/assets/image/blog/img/defaultbanner.jpg'); 
		document.querySelector("input#img_check").setAttribute("value", '2'); 
	});


</script>

</html>