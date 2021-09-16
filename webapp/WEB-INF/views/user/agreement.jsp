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
<link rel="stylesheet" href="../../assets/css/Common/common.css">
<link rel="stylesheet" href="../../assets/css/User/agreement.css">
</head>

<body>
  <!-- header -->
  <c:import url="/views/includes/header.jsp"></c:import>

  <!-- login -->
  <div class="row">
    <div class="col-xl-2"></div>
    <div class="col-xl-8">
      <div class="joinbox">
        <p class="text">Buskeround <br> 서비스 약관에 동의해주세요.
        </p>

        <form action="">
          <input type="checkbox" id="agree1">
          <label for="agree1">모두 동의합니다.</label>

          <p>전체동의는 필수 및 선택정보에 대한 동의도 포함되어 있으며, <br> 개별적으로도 동의를 선택하실 수 있습니다. <br> 선택항목에 대한 동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.
          </p>

          <div class="agreement">
            <ul>
              <li><input type="checkbox" id="agree2"> <label for="agree2">[필수] 아티스트 계정 약관</label></li>
              <li><input type="checkbox" id="agree3"> <label for="agree3">[필수] 개인정보 수집 및 이용 동의</label></li>
              <li><input type="checkbox" id="agree4"> <label for="agree4">[선택] 위치정보 수집 및 이용 동의</label></li>
              <li><input type="checkbox" id="agree5"> <label for="agree5">[선택] 알림 및 광고메시지 수신</label></li>
              <li><input type="checkbox" id="agree6"> <label for="agree6">[선택] 프로필 정보 추가 수집 동의</label></li>
            </ul>

            <div class="btn_agree">
              <button type="button" onclick="location.href='join.jsp'">동의</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="col-xl-2"></div>
  </div>

  <!-- footer -->
  <div class="row" id="footerbox">
    <div class="col-xl-2"></div>
    <div class="col-xl-8">
      <div class="footer">
        <p style="text-align: center; padding-top: 47px;">대표이사 김영기 | 주소 서울 강남구 테헤란로 415(L7 HOTELS 강남타워 6,7층) | 버스커라운드 주식회사<br> 사업자 등록번호 133-12-15979 | 문의전화 02-8732-4204 | 메일 HELP@buskeround.com<br> COPYRIGHT©BUSKEROUND CROP ALL RIGHTS RESERVED. <br>
        </p>
      </div>
    </div>
    <div class="col-xl-2"></div>
  </div>
  <!-------------- footer --------------->
</body>
</html>