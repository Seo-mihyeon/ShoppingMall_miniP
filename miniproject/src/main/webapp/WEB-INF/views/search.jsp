<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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




<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/search.css">
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
                               
                            </div> 
                            <div class="col-xl-5 col-lg-5 col-md-3 col-sm-3 fix-card">
                                <ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
                                  
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


	 <div class="slider-area">
	        <!-- Mobile Menu -->
	        <div class="single-slider slider-height2 d-flex align-items-center"
	           data-background="/join/assets/img/hero/category.jpg" style="background-image: url("join/assets/img/hero/category.jpg");">
	            <div class="container">
	                <div class="row">
	                    <div class="col-xl-12">
	                        <div class="hero-cap text-center">
	                        <a href="/main"><h2 style="text-align:cneter">Search</h2></a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>

	
	<div class="content_area" style="margin-top: 20px">
		<!-- 게시물  o -->
		<c:if test="${listcheck!='empty' }">
			<div class="list_search_result">
				<table class="type_list">
					<colgroup>
						<col width="90">
						<col width="120">
						<col width="120">
						<col width="120">
					</colgroup>
					<tbody id="searchList>">
						<c:forEach items="${list}" var="list">
							<tr>
								<td class="image">
									<div class="image_wrap"
										data-itemId="${list.imageList[0].itemId}"
										data-path="${list.imageList[0].uploadPath}"
										data-uuid="${list.imageList[0].uuid}"
										data-filename="${list.imageList[0].fileName}">
										<img>
									</div>
								</td>
								<td class="detail">
									<div class="id">[${list.itemId}]</div>
									<div class="name">[${list.itemName}]</div>
								</td>
								<td class="iteminfo">
									<div class="info">${list.itemInfo}</div>
								</td>
								<td class="price">
									<div class="sell_price">
										<strong> <fmt:formatNumber value="${list.itemPrice}"
												pattern="#,### 원" />
										</strong>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
			<!-- 페이지 이동 인터페이스 -->
			<div class="pageMaker_wrap">
				<ul class="pageMaker">

					<!-- 이전 버튼 -->
					<c:if test="${pageMaker.prev }">
						<li class="pageMaker_btn prev"><a
							href="${pageMaker.pageStart -1}">이전</a></li>
					</c:if>

					<!-- 페이지 번호 -->
					<c:forEach begin="${pageMaker.pageStart }"
						end="${pageMaker.pageEnd }" var="num">
						<li
							class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
							<a href="${num }">${num}</a>
						</li>
					</c:forEach>

					<!-- 다음 버튼 -->
					<c:if test="${pageMaker.next}">
						<li class="pageMaker_btn next"><a
							href="${pageMaker.pageEnd + 1 }">다음</a></li>
					</c:if>
				</ul>
			</div>

			<form id="moveForm" action="/search" method="get">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
			</form>
		</c:if>
		<!-- 게시물 x -->
		<c:if test="${listcheck == 'empty' }">
			<div class="table_empty">검색 결과가 없습니다.</div>
		</c:if>
	</div>
	
	
	<form id="" action="/search" method="get">
		<div class="search_bar" style="text-align: center">
			<input type="text" name="keyword"
				value="<c:out value="${pageMaker.cri.keyword}"/>">
			<button class="btn search_btn">검 색</button>
		</div>
	</form>
	
	
	<!-- Footer Start-->
       <div class="footer-area footer-padding">
           <div class="container">
               <div class="row d-flex justify-content-between">
                   <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                      <div class="single-footer-caption mb-50">
                        <div class="single-footer-caption mb-30">
                             <!-- logo -->
                            <div class="footer-logo">
                                <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                            </div>
                            <div class="footer-tittle">
                                <div class="footer-pera">
                                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with  by Colorlib
  <i class="ti-heart" aria-hidden="true"></i></p> 
  						<p>Copyright &copy; 5Team</p>
                               </div>
                            </div>
                        </div>
                      </div>
                   </div>
                   <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                       <div class="single-footer-caption mb-50">
                           <div class="footer-tittle">
                               <h4>Quick Links</h4>
                               <ul>
                                   <li><a href="/main"> Home</a></li>
                                   <li><a href="/cate1"> Catagori</a></li>
                                   <li><a href="#"> Latest</a></li>
                                   <li><a href="/member/join"> Sign Up</a></li>
                                   <li><a href="/member/login"> Sign In</a></li>
                               </ul>
                           </div>
                       </div>
                   </div>
                   <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                       <div class="single-footer-caption mb-50">
                           <div class="footer-tittle">
                               <h4>New Products</h4>
                               <ul>
                               			<!-- 카테고리 홈페이지 만든 이후에 링크 연결해주기 -->
                                   <li><a href="#">Skin/Toner</a></li>
                                   <li><a href="#">Lotion</a></li>
                                   <li><a href="#">Cream</a></li>
                                   <li><a href="#">Etc</a></li>
                               </ul>
                           </div>
                       </div>
                   </div>
                   <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                       <div class="single-footer-caption mb-50">
                           <div class="footer-tittle">
                               <h4>Support</h4>
                               <ul>
                                <li style= "font-weight : bold;">Order/Delivery</li>
                                <li>   1008-1019  </li>
                            	<li style= "font-weight : bold;">Product about Inquiry</li>
                            	<li>   080-008-1019</li>
                            	<li>MON-FRI AM 9:30 ~ PM 6:00</li>
                            </ul>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- Footer bottom -->
               <div class="row">
                <div class="col-xl-7 col-lg-7 col-md-7">
                        
                </div>
            </div>
           </div>
       </div>
       <!-- Footer End-->
       
       <!-- All JS Custom Plugins Link Here here -->
        <script src="resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="resources/assets/js/popper.min.js"></script>
        <script src="resources/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="resources/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="resources/assets/js/owl.carousel.min.js"></script>
        <script src="resources/assets/js/slick.min.js"></script>

		<!-- One Page, Animated-HeadLin -->
        <script src="resources/assets/js/wow.min.js"></script>
		<script src="resources/assets/js/animated.headline.js"></script>
        <script src="resources/assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="resources/assets/js/jquery.scrollUp.min.js"></script>
        <script src="resources/assets/js/jquery.nice-select.min.js"></script>
		<script src="resources/assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="resources/assets/js/contact.js"></script>
        <script src="resources/assets/js/jquery.form.js"></script>
        <script src="resources/assets/js/jquery.validate.min.js"></script>
        <script src="resources/assets/js/mail-script.js"></script>
        <script src="resources/assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="resources/assets/js/plugins.js"></script>
        <script src="resources/assets/js/main.js"></script>
	
	
	
	
	
	
	
	
	
	<script>
		/* 페이지 이동 버튼 */
		const moveForm = $('#moveForm');

		$(".pageMaker_btn a").on("click", function(e) {

			e.preventDefault();

			moveForm.find("input[name='pageNum']").val($(this).attr("href"));

			moveForm.submit();

		});
		
		$(document).ready(function() {

			/* 이미지 삽입 */
			$(".image_wrap").each(function(i, obj){
				const bobj = $(obj);
				
				
				const uploadPath = bobj.data("path");
				const uuid = bobj.data("uuid");
				const fileName = bobj.data("filename");
				
				const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
				
				$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
				
			});
		});
	</script>
</body>
</html>