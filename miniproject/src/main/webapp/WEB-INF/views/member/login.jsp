<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>로그인</title>
<script
	src="https://code.jquery.com/jquery-3.4.1.js"
   	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
    crossorigin="anonymous"></script>
	<!-- 이미지 불러오기 -->
	<link rel="manifest" href="site.webmanifest">
	
	<!-- 로그인단 부트스트랩 적용 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/linericon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/nouislider/nouislider.min.css">

	<!-- 로그인단 제외한 부트스트랩 적용 -->
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

	<!-- CSS 적용 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
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
                                    <div class="flag">
                                        <img src="assets/img/icon/header_icon.png" alt="">
                                    </div>
                                    <div class="select-this">
                                        <form action="#">
                                            <div class="select-itms">
                                                <select name="select" id="select1">
                                                    <option value="">USA</option>
                                                    <option value="">SPN</option>
                                                    <option value="">CDA</option>
                                                    <option value="">USD</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>
                                    <ul class="contact-now">     
                                        <li>+777 2345 7886</li>
                                    </ul>
                                </div>
                                <div class="header-info-right">
                                   <ul>                                          
                                       <li><a href="login.html">My Account </a></li>
                                       <li><a href="product_list.html">Wish List  </a></li>
                                       <li><a href="cart.html">Shopping</a></li>
                                       <li><a href="cart.html">Cart</a></li>
                                       <li><a href="checkout.html">Checkout</a></li>
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
                                  <a href="/main"><img src="${pageContext.request.contextPath}/resources/assets/img/logo/logo.png" alt=""></a>
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
                                            <li><a href="blog.html">Blog</a>
                                                <ul class="submenu">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="single-blog.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Pages</a>
                                                <ul class="submenu">
                                                    <li><a href="/member/login">Login</a></li>
                                                    <li><a href="cart.html">Card</a></li>
                                                    <li><a href="elements.html">Element</a></li>
                                                    <li><a href="about.html">About</a></li>
                                                    <li><a href="confirmation.html">Confirmation</a></li>
                                                    <li><a href="cart.html">Shopping Cart</a></li>
                                                    <li><a href="checkout.html">Product Checkout</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div> 
                            <div class="col-xl-5 col-lg-3 col-md-3 col-sm-3 fix-card">
                                <ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
                                    <li class="d-none d-xl-block">
                                        <div class="form-box f-right ">
                                            <input type="text" name="Search" placeholder="Search products">
                                            <div class="search-icon">
                                                <i class="fas fa-search special-tag"></i>
                                            </div>
                                        </div>
                                     </li>
                                    <li class=" d-none d-xl-block">
                                        <div class="favorit-items">
                                            <i class="far fa-heart"></i>
                                        </div>
                                    </li>
                                    <li>
                                    
	                                    <div class="shopping-card">
	                                        <a href="cart.html">
	                                        	<i class="fas fa-shopping-cart"></i>
	                                        </a>
	                                     </div>
                                    </li>
                                   <li class="d-none d-lg-block"> <a href="/member/login" class="btn header-btn">Sign in</a></li>
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
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="resources/assets/img/hero/category.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Login</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->


  <!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="/member/join">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						<!-- 로그인 폼 class name : login_wrap -->
						<form class="row login_form login_wrap" id="login_form" method="post" >
							<!-- id wrap class name : id_wrap -->
							<div class="col-md-12 form-group id_wrap">
													<!-- 아이디 class name :  id_input_box -->
								<input type="text" class="form-control id_input" id="name" name="memberId" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">
							</div>
							<!-- 비밀번호 wrap class name : pw_wrap -->
							<div class="col-md-12 form-group pw_wrap">
													<!-- 비밀번호 class name :  id_input_box -->
								<input type="text" class="form-control pw_input" id="name" name="memberPw" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							<c:if test="${result == 0 }">
							<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
							</c:if>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
										<!--  로그인 버튼 wrap class name :  login_button_wrap  -->	
							<div class="col-md-12 form-group login_button_wrap">
										<!-- 로그인 버튼 class name :  id_input_box -->
								<button type="submit" value="submit" class="button button-login w-100 login_button">Log In</button>
								<a href="#">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

 <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding2">
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
                                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore.</p>
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
                                    <li><a href="#">About</a></li>
                                    <li><a href="#"> Offers & Discounts</a></li>
                                    <li><a href="#"> Get Coupon</a></li>
                                    <li><a href="#">  Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>New Products</h4>
                                <ul>
                                    <li><a href="#">Woman Cloth</a></li>
                                    <li><a href="#">Fashion Accessories</a></li>
                                    <li><a href="#"> Man Accessories</a></li>
                                    <li><a href="#"> Rubber made Toys</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                 <li><a href="#">Frequently Asked Questions</a></li>
                                 <li><a href="#">Terms & Conditions</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Report a Payment Issue</a></li>
                             </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer bottom -->
                <div class="row">
                 <div class="col-xl-7 col-lg-7 col-md-7">
                     <div class="footer-copy-right">
                         <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                </div>
                 </div>
                  <div class="col-xl-5 col-lg-5 col-md-5">
                     <div class="footer-copy-right f-right">
                         <!-- social -->
                         <div class="footer-social">
                             <a href="#"><i class="fab fa-twitter"></i></a>
                             <a href="#"><i class="fab fa-facebook-f"></i></a>
                             <a href="#"><i class="fab fa-behance"></i></a>
                             <a href="#"><i class="fas fa-globe"></i></a>
                         </div>
                     </div>
                 </div>
             </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>

	<!-- JS here -->
<script>
	/* 로그인 버튼 클릭 메서드 */
	$(".login_button").click(function() {
		//alert("로그인 버튼 작동");	
		
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
	})
</script>	

    <!-- All JS Custom Plugins Link Here here -->
    <script src="<c:url value="/resources/assets/js/vendor/modernizr-3.5.0.min.js"/>">
    
    <!-- Jquery, Popper, Bootstrap -->
    
    <script src="<c:url value="/resources/assets/js/vendor/jquery-1.12.4.min.js"/>">
    <script src="<c:url value="/resources/assets/js/popper.min.js"/>">
    <script src="<c:url value="/resources/assets/js/bootstrap.min.js"/>">
    <!-- Jquery Mobile Menu -->
    <script src="<c:url value="/resources/assets/js/jquery.slicknav.min.js"/>">

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="<c:url value="/resources/assets/js/owl.carousel.min.js"/>">
    <script src="<c:url value="/resources/assets/js/slick.min.js"/>">

    <!-- One Page, Animated-HeadLin -->
    <script src="<c:url value="/resources/assets/js/wow.min.js"/>">
    <script src="<c:url value="/resources/assets/js/animated.headline.js"/>">
    
    <!-- Scrollup, nice-select, sticky -->
    <script src="<c:url value="/resources/assets/js/jquery.scrollUp.min.js"/>">
    <script src="<c:url value="/resources/assets/js/jquery.nice-select.min.js"/>">
    <script src="<c:url value="/resources/assets/js/jquery.sticky.js"/>">
    <script src="<c:url value="/resources/assets/js/jquery.magnific-popup.js"/>">

    <!-- contact js -->
    
    <script src="<c:url value="/resources/assets/js/contact.js"/>">
    <script src="<c:url value="/resources/assets/js/jquery.form.js"/>">
    <script src="<c:url value="/resources/assets/js/jquery.validate.min.js"/>">
    <script src="<c:url value="/resources/assets/js/mail-script.js"/>">
    <script src="<c:url value="/resources/assets/js/jquery.ajaxchimp.min.js"/>">
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="<c:url value="/resources/assets/js/plugins.js"/>">
    <script src="<c:url value="/resources/assets/js/main.js"/>">
	
</body>
</html>