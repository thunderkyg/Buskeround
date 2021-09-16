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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<!-- css -->
<link rel="stylesheet" href="../../assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="../../assets/css/Blog/blog_gallery.css">
<link rel="stylesheet" href="../../assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
  <!------ br_container ------>
  <div class="clearfix" id="br_container">
    <c:import url="/views/Blog/includes/aside.jsp"></c:import>

    <!------ br_content ------>
    <div id="br_content">
      <c:import url="/views/Blog/includes/header.jsp"></c:import>

      <!-- nav_menu -->
      <div class="navbar">
        <ul class="navbar_menu">
          <li><a href="blog_main.jsp">홈</a></li>
          <li><a href="blogNoticeBoard.jsp">공지사항</a></li>
          <li><a href="blog_timeline.jsp">타임라인</a></li>
          <li class="bold"><a href="blog_gallery.jsp">갤러리</a></li>
          <li><a href="blogGuestbookBoard.jsp">방명록</a></li>
        </ul>
      </div>

      <div class="content clearfix">
        <!-- 글쓰기 버튼 -->
        <div class="clearfix main_title">
          <img src="../../assets/image/blog/icon/landscape.png">
          <span>갤러리</span>
          <button id="writebutton" type="button" onClick="location.href='blogWriteForm.jsp'">
            <img src="../../assets/image/blog/icon/write.png">사진 올리기
          </button>
        </div>

        <!---- gallery ---->
        <div class="gallery_box">
          <div class="gallery_item">
            <div class="gallery_item_caption">
              <h2>홍대 거리</h2>
              <p>2021. 09. 07</p>
            </div>
            <img id="img_item" src="../../assets/image/blog/img/buker.jpg" alt="" />
          </div>

          <div class="gallery_item">
            <div class="gallery_item_caption">
              <h2>마로니에 공원</h2>
              <p>2021. 09. 07</p>
            </div>
            <img id="img_item" src="../../assets/image/blog/img/busker.jpg" alt="" />
          </div>

          <div class="gallery_item">
            <div class="gallery_item_caption">
              <h2>마로니에 공원</h2>
              <p>2021. 09. 05</p>
            </div>
            <img id="img_item" src="../../assets/image/blog/img/busker2.jpg" alt="" />
          </div>

          <div class="gallery_item">
            <div class="gallery_item_caption">
              <h2>이태원</h2>
              <p>2021. 09. 03</p>
            </div>
            <img id="img_item" src="../../assets/image/blog/img/busker3.jpg" alt="" />
          </div>
        </div>
        <!------ ////(gallery)//// ------>

        <!-- 검색 기능 -->
        <div class="topnav">
          <div class="search-container">
            <form action="/action_page.php">
              <input type="text" placeholder="Search.." name="search">
              <button type="submit">
                <label class="icon fa fa-search" for="search"></label>
              </button>
            </form>
          </div>
        </div>

        <!-- 페이징 -->
        <div class="container xlarge">
          <div class="pagination">
            <ul>
              <!-- Add Button-->
              <li><a href="#">&laquo;</a></li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li class="active"><a href="#">3</a></li>
              <!-- for active button-->
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">&raquo;</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

<!-- modal -->
<div class="modal fade" id="img_modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <img id="modal_img" src="">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="btn_close" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!------ ////(modal)//// ------>

<script type="text/javascript">
	$(".gallery_item").on("click", "#img_item", function() {
		var img_src = $(this).attr('src');
		$("#modal_img").attr("src", img_src);
		$("#img_modal").modal('show');
	});

	$("#btn_close").on("click", function() {
		$("#img_modal").modal('hide');
	});
</script>

</html>