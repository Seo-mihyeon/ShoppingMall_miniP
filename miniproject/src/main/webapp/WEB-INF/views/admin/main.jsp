<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
<link rel="stylesheet" href="../resources/css/admin/main.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/leaf.png">

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
</head>
<body>

<%@include file="../includes/admin/header.jsp" %>
 
      
	<div class="wrap">
		<!-- gnv_area -->
		<!-- 
		<div class="top_gnb_area">
			<ul class="list">
				<li><a href="/main">메인 페이지</a></li>
				<li><a href="/member/logout.do">로그아웃</a></li>
				<li>고객센터</li>
			</ul>
		</div>
		 -->
   <!-- Mobile Menu -->
	<div class="slider-area">
        <div class="single-slider slider-height2 d-flex align-items-center"
        	data-background="/join/assets/img/hero/category.jpg" style="background-image: url("join/assets/img/hero/category.jpg");">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                        <h2>Admin Page</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
		 
		<!-- top_subject_area -->
		<!--  
		<div class="admin_top_wrap" style="margin-top: 15px;">
			<span>Admin Page</span>
	-->
		</div>
		<!-- contents-area -->
		<div class="admin_wrap">
			<!-- 네비영역 -->
			<div class="admin_navi_wrap">
				<ul>
					<li><a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a></li>
					<li><a class="admin_list_02" href="/admin/goodsManage">상품 관리</a></li>
					<lI><a class="admin_list_03">회원 관리</a></lI>
				</ul>
				<!-- 
                    <div class="admin_list_01">
                        <a>상품 관리</a>
                    </div>
                     -->
			</div>
		</div>
      
      
      
      <div class="admin_content_wrap"></div>
                
<%@include file="../includes/admin/footer.jsp" %>

</body>
</html>