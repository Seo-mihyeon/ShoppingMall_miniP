<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>My page</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"
    integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
    crossorigin="anonymous"></script>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/leaf.png">

    <!-- CSS here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/slicknav.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/themify-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/assets/css/style.css">
        
    <!-- join CSS -->
	        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/bootstrap/bootstrap.min.css">
		    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/fontawesome/css/all.min.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/themify-icons/themify-icons.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/linericon/style.css">
		    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/owl-carousel/owl.theme.default.min.css">
		    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/owl-carousel/owl.carousel.min.css">
		    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/nice-select/nice-select.css">
		    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/vendors/nouislider/nouislider.min.css">
		
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/css/style.css">
        
</head>

<body>
<header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-top top-bg d-none d-lg-block">
                   <div class="container-fluid">
                       <div class="col-xl-12">
                            <div class="row d-flex justify-content-between align-items-center">
                                <div class="header-info-left d-flex">
                                       
                                </div>
                                <div class="header-info-right">
                                   <ul>                                          
                                       <li><a href="/main" style="font-size: 20px">Home</a></li>
                                   </ul>
                                   <ul>                                          
                                       <li><a href="/member/logout.do" style="font-size: 20px">Logout</a></li>
                                   </ul>
                                </div>
                            </div>
                       </div>
                   </div>
                </div>
               <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-3">
                                <div class="logo">
                                  <a href="/main"><img src="${pageContext.request.contextPath}/resources/assets/img/logo/5logo.png" alt="로고 이미지" style="margin-top: -16px"></a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>                                                
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="/main">Home</a></li>
                                            <li><a href="Catagori.html">Catagori</a></li>
                                            <li class="hot"><a href="#">Latest</a>
                                                <ul class="submenu">
                                                    <li><a href="product_list.html"> Product list</a></li>
                                                    <li><a href="single-product.html"> Product Details</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div> 
                            <div class="col-xl-5 col-lg-5 col-md-3 col-sm-3 fix-card">
                                <ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
                                    <li class="d-none d-xl-block">
                                        <div class="form-box f-right ">
                                            <input type="text" name="Search" placeholder="Search products">
                                            <div class="search-icon">
                                                <i class="fas fa-search special-tag"></i>
                                            </div>
                                        </div>
                                     </li>
                                     <!--  <li class="d-none d-lg-block"><a href="join.html" class="btn header-btn" style="border-radius: 80px; height: 50px;">Sign up</a></li>-->
                                </ul>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>
    <!-- slider Area Start-->
    <div class="slider-area">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center"
        	data-background="/join/assets/img/hero/category.jpg" style="background-image: url("join/assets/img/hero/category.jpg");">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                        <h2>My page</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->
   <section class="login_box_area section-margin">
		<div class="container"  style="background-color: #CEECF5">
		<!--
			<div class="row">
			
				<div class="col-lg-6">
				  
				<div class="login_box_img">
						<div class="hover">
						<br><br><br><br><br><br><br>
							<h4>My page!</h4>
							<p>Click the button below to return to home</p>
							<a class="button button-account" href="/main">Home</a>
						</div>
					</div>
				</div>
				-->
					<form id="mypage" action="/member/mypage" method="post">
					<div class="login_form_inner register_form_inner" style="width: 1100px">
					<!-- 
						<div class="wrap">
						<h3 style="padding-left: -80px; padding-right: -30px">My page!</h3>
						</div>
					 -->
						<!-- 아이디 -->
							<div class="col-md-12 form-group id_wrap">
							
								<div class="id_name">
									<input class="form-control id_input" value="아이디: ${member.memberId }" style="padding-left: 10px" readonly="readonly">
								</div>
							</div>
							
						<!-- 이름 -->				              
              				<div class="col-md-12 form-group user_wrap">
              					<div class="user_name">
									<input type="text" class="form-control user_input" value="이름: ${member.memberName }" readonly="readonly">
              					</div>
							</div>
							
						<!-- 연락처 -->				              
              				<div class="col-md-12 form-group phone_wrap">
              					<div class="phone_name">
									<input type="text" class="form-control phone_input" value="전화번호: ${member.memberPhone }" readonly="readonly">
              					</div>
							</div>
								
						<!-- 이메일 -->
							<div class="col-md-12 form-group mail_wrap">
								<div class="mail_name">
									<input type="text" class="form-control mail_input" value="생년월일: ${member.memberMail }" readonly="readonly">
								</div>
							</div>
							
						<!-- 생년월일 -->
							<div class="col-md-12 form-group birth_wrap">
								<div class="birth_name">
									<input type="text" class="form-control birth_input" value="이메일: ${member.memberBirth }" readonly="readonly">
								</div>
							</div>
							
						<!-- 주소 -->
							<div class="col-md-12 form-group address_wrap">
								<div class="address_name"></div>
								<!-- 첫번째 주소 칸 -->
								<div class="address_input_1_wrap">
										<input type="text" class="form-control address_input_1" value="우편주소: ${member.memberAddr1 }" readonly="readonly">
								</div>
								
								<!-- 두번째 주소 칸 -->
								<div class="address_input_2_wrap">
										<input type="text" class="form-control address_input_2" value="도로명주소: ${member.memberAddr2 }" readonly="readonly">
								</div>
								
								<!-- 세번째 주소 칸 -->
								<div class="address_input_3_wrap">
										<input type="text" class="form-control address_input_3" value="상세주소: ${member.memberAddr3 }" readonly="readonly">
									</div>
								</div>
								<!-- 만약에 회원정보 수정하기가 들어간다면 이 버튼을 사용하면 될 것 같음 -->
								<div class="col-md-12 join_button_wrap">
									 <!--  <input type="button" class="button button-login w-100 join_button" value="Register">-->
								</div>
							</div>
						</form>
					</div>
	</section>
	<!--================End Login Box Area =================-->
   
						
<%@include file="../includes/admin/footer.jsp" %>

</body>
</html>    
 