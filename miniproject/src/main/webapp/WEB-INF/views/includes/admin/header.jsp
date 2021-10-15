<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Beauté</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="resources/assets/img/leaf.png">

		<!-- CSS here -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/flaticon.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slicknav.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/themify-icons.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/nice-select.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
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
                               
                                <!-- Logo -->
		                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-3">
		                                <div class="logo">
		                                  <a href="/main">
		                                  	<span style="margin-top: 10px; font-size: 30px">Beaut<span style="color: blue;">e</span></span></a>
		                                </div>
		                            </div>
                            
                                <div class="header-info-left d-flex">
                                    <div class="select-this">
                                    </div>
                                </div>
                                <!-- 
                                	로그인 X : 로그인 / 회원가입 버튼 보여주기
                                	로그인 O : 1) 일반 회원 : 마이페이지 / 로그아웃
                                			 2) 관리자 : 관리자 페이지 / 로그아웃
                                 -->
                                <!-- 로그인 여부에 따라 상단메뉴 부분 변경 사항 반영하기  -->
                                <div class="header-info-rights login_area">
                                   <ul class="list">      
                                   		<!-- 로그인 하지 않은 상태 (로그인 / 회원가입 버튼 보여주며 링크 제공) -->
                                   		<c:if test="${member == null }">
                                      		<li><a href="/member/login" style="font-size: 20px">Login</a></li>
                                      		<li><a href="/member/join" style="font-size: 20px">Sign up</a></li>
                						</c:if>
                						<!-- 로그인한 상태  (내정보보기 / 로그아웃 버튼 보여주며 링크 제공) -->
                						<c:if test="${ member != null }">
                							<!-- 관리자 계정 확인  / 관리자 페이지 보여주기-->
                							<c:if test="${member.adminCk == 1 }">
                								<li><a href="/admin/main" style="font-size: 25px">Admin page</a></li>
                							</c:if>
                								<!-- 회원인경우 마이페이지 항목 보여주기 / 우선 보류-->
                								<!--
                								<li><a href="/member/mypage" style="font-size: 20px">My page</a></li>
                								  -->
                                      				<!-- post방식의 로그아웃 처리 기능 -->
                                      			<li><<a href="/member/logout.do" style="color: white; font-size: 20px">Logout</a></li>
                						</c:if>
                                   </ul>
                                </div>
                            </div>
                       </div>
                   </div>
                </div>
               <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                        
                        
                            <div class="col-xl-6 col-lg-6 col-md-7 col-sm-5">
                                <!-- Main-menu -->
                                <!-- 
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
                                 -->
                            </div> 
                            <div class="col-xl-5 col-lg-5 col-md-3 col-sm-3 fix-card">
                                <ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
                                   <!-- 
                                    <li class="d-none d-xl-block">
                                        <div class="form-box f-right ">
                                            <input type="text" name="Search" placeholder="Search products">
                                            <div class="search-icon">
                                                <i class="fas fa-search special-tag"></i>
                                            </div>
                                        </div>
                                     </li>
                                      -->
                                     <!-- 
                                   <li class="d-none d-lg-block"> <a href="member/join" class="btn header-btn">Sign up</a></li>
                                    -->
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


		
		
		
		
	</body>
</html>