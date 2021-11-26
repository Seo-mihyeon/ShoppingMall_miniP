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
 
      
	<div class="wrap col-xl-12">
		
   <!-- Mobile Menu -->
	<div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center"
        	data-background="/join/assets/img/hero/category.jpg" style="background-image: url("join/assets/img/hero/category.jpg");">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                        <a href="/admin/main"><h2>Admin Page</h2></a>
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
					<li><a class="admin_list_03" href="#">회원 관리</a></li>
				
				</ul>
				<!-- 
                    <div class="admin_list_01">
                        <a>상품 관리</a>
                    </div>
                     -->
			</div>
			      <div class="admin_content_wrap"></div>
			
		</div>
<%@include file="../includes/admin/footer.jsp" %>

</body>
</html>