<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register</title>
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
                                       <li><a href="/member/login" style="font-size: 20px">Sing in</a></li>
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
                                            <li class="hot" ><a href="/cate1">Catagori</a></li>
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
                        <h2>Register</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

   <!--================Register Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				
				<div class="col-lg-12 wrapper">
					<div class="login_form_inner register_form_inner ">
						<form class="row join_form " method="post" id="join_form"  style="margin-right: 10px">
						<div class="wrap">
						<h3>Create an account</h3>
						</div>
						
						<!-- 아이디 -->
							<div class="col-md-12 form-group id_wrap">
								<div class="id_name">
									<input class="form-control id_input" id="id" name="memberId" placeholder="Id" onfocus="this.placeholder = 'Id'" onblur="this.placeholder = 'Id'">
								</div>
								
									<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
									<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
									<span class="final_id_ck">아이디를 입력해주세요.</span>
							</div>
							
						<!-- 비밀번호 -->
							<div class="col-md-12 form-group pw_wrap">
								<div calss="pw_name">
									<input type="password" class="form-control pw_input" id="password" name="memberPw" placeholder="Password" onfocus="this.placeholder = 'Password'" onblur="this.placeholder = 'Password'">
								</div>
					            <span class="final_pw_ck">비밀번호를 입력해주세요.</span>
								<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
				                <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
				            </div>
				            
						<!-- 비밀번호 확인 -->
				              <div class="col-md-12 form-group pwck_wrap">
				              	<div class="pwck_name">
									<input type="password" class="form-control pwck_input" placeholder="Password check" onfocus="this.placeholder = 'Password check'" onblur="this.placeholder = 'Password check'">
				              	</div>				              
					              <span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				              </div>
						<!-- 이름 -->				              
              				<div class="col-md-12 form-group user_wrap">
              					<div class="user_name">
									<input type="text" class="form-control user_input" id="name" name="memberName" placeholder="UserName" onfocus="this.placeholder = 'UserName'" onblur="this.placeholder = 'UserName'">
              					</div>
								<span class="final_name_ck">이름을 입력해주세요.</span>
							</div>
							
						<!-- 연락처 -->				              
              				<div class="col-md-12 form-group phone_wrap">
              					<div class="phone_name">
									<input type="text" class="form-control phone_input" id="phonenumber" name="memberPhone" placeholder="PhoneNumber" onfocus="this.placeholder = 'PhoneNumber'" onblur="this.placeholder = 'PhoneNumber'">
              					</div>
								<span class="final_phone_ck">연락처를 입력해주세요.</span>
							</div>
								
						<!-- 이메일 -->
							<div class="col-md-12 form-group mail_wrap">
								<div class="mail_name">
									<input type="text" class="form-control mail_input" id="email" name="memberMail" placeholder="E-mail" onfocus="this.placeholder = 'E-mail'" onblur="this.placeholder = 'E-mail'">
								</div>
								<span class="final_mail_ck">이메일을 입력해주세요.</span>
							</div>
							
						<!-- 생년월일 -->
							<div class="col-md-12 form-group birth_wrap">
								<div class="birth_name">
									<input type="text" class="form-control birth_input" id="birth" name="memberBirth" placeholder="Birth" onfocus="this.placeholder = 'Birth'" onblur="this.placeholder = 'Birth'">
								</div>
								<span class="final_birth_ck">생년월일을 입력해주세요.</span>
							</div>
							
						<!-- 주소 -->
							<div class="col-md-12 form-group address_wrap">
								<div class="address_name"></div>
								<!-- 첫번째 주소 칸 -->
								<div class="address_input_1_wrap">
										<input type="text" class="form-control address_input_1" id="address" name="memberAddr1" readonly="readonly" placeholder="Address" onfocus="this.placeholder = 'Address'" onblur="this.placeholder = 'Address'">
								
									<!-- 주소찾기 부분 -->
									<div class="address_button" onclick="address()" style="margin-right: 0">
										<span>Adress Find</span>
									</div>
									<div class="clearfix"></div>
								</div>
								
								<!-- 두번째 주소 칸 -->
								<div class="address_input_2_wrap">
										<input type="text" class="form-control address_input_2" id="address" name="memberAddr2" readonly="readonly">
								</div>
								
								<!-- 세번째 주소 칸 -->
								<div class="address_input_3_wrap">
										<input type="text" class="form-control address_input_3" id="address" name="memberAddr3" readonly="readonly">
									</div>
								</div>
									<span class="final_addr_ck">주소를 입력해주세요.</span>
									
								<div class="col-md-12 join_button_wrap">
									<input type="button" class="button button-login w-100 join_button" value="Register">
								</div>
								
								</div>
								
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->
	
<%@include file="../includes/admin/footer.jsp" %>


<!-- 회원가입 변수 관련 항목 사항 -->
<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		var idCheck = false; // 아이디
		var idckCheck = false; // 아이디 중복 검사
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var nameCheck = false; // 이름
		var phoneCheck = false; // 연락처 
		var mailCheck = false; // 이메일
		var birthCheck = false; // 생년월일
		var addressCheck = false // 주소

		// '가입하기' 버튼을 누르면 form태그에 속성 action(url)이 추가되고 form태그가 서버에 제출됨
		// 제출방식은 post로 이미 form 태그에서 지정해줌
		// 우리가 늘 썼던 <form action="주소" method="post" 와 동일한 것 같음!
		$(document).ready(
				function() {
					// 회원가입 버튼(회원가입 기능 작동)
					$(".join_button")
							.click(
									function() {

										/* 입력값 변수 */
										var id = $('.id_input').val(); // id 입력란
										var pw = $('.pw_input').val(); // 비밀번호 입력란
										var pwck = $('.pwck_input').val(); // 비밀번호 확인 입력란
										var name = $('.user_input').val(); // 이름 입력란
										var phone = $('.phone_input').val(); // 연락처 입력란
										var mail = $('.mail_input').val(); // 이메일 입력란
										var birth = $('.birth_input').val(); // 생일 입력란
										var addr = $('.address_input_3').val(); // 주소 입력란

										/* 아이디 유효성검사 */
										if (id == "") {
											$('.final_id_ck').css('display',
													'block');
											idCheck = false;
										} else {
											$('.final_id_ck').css('display',
													'none');
											idCheck = true;
										}

										/* 비밀번호 유효성 검사 */
										if (pw == "") {
											$('.final_pw_ck').css('display',
													'block');
											pwCheck = false;
										} else {
											$('.final_pw_ck').css('display',
													'none');
											pwCheck = true;
										}

										/* 비밀번호 확인 유효성 검사 */
										if (pwck == "") {
											$('.final_pwck_ck').css('display',
													'block');
											pwckCheck = false;
										} else {
											$('.final_pwck_ck').css('display',
													'none');
											pwckCheck = true;
										}

										/* 이름 유효성 검사 */
										if (name == "") {
											$('.final_name_ck').css('display',
													'block');
											nameCheck = false;
										} else {
											$('.final_name_ck').css('display',
													'none');
											nameCheck = true;
										}

										/* 연락처 유효성 검사 */
										if (name == "") {
											$('.final_phone_ck').css('display',
													'block');
											phoneCheck = false;
										} else {
											$('.final_phone_ck').css('display',
													'none');
											phoneCheck = true;
										}

										/* 이메일 유효성 검사 */
										if (mail == "") {
											$('.final_mail_ck').css('display',
													'block');
											mailCheck = false;
										} else {
											$('.final_mail_ck').css('display',
													'none');
											mailCheck = true;
										}

										/* 생년월일 유효성 검사 */
										if (mail == "") {
											$('.final_birth_ck').css('display',
													'block');
											birthCheck = false;
										} else {
											$('.final_birth_ck').css('display',
													'none');
											birthCheck = true;
										}

										/* 주소 유효성 검사 */
										if (addr == "") {
											$('.final_addr_ck').css('display',
													'block');
											addressCheck = false;
										} else {
											$('.final_addr_ck').css('display',
													'none');
											addressCheck = true;
										}

										/* 최종 유효성 검사 */
										if (idCheck && idckCheck && pwCheck
												&& pwckCheck && pwckcorCheck
												&& nameCheck && phoneCheck
												&& mailCheck && birthCheck
												&& addressCheck) {

											$("#join_form").attr("action",
													"/member/join");
											$("#join_form").submit();

										}

										return false;

									});
				});

		/* 아이디 중복검사 */
		$('.id_input').on(
				"propertychange change keyup paste input",
				function() {
					var memberId = $('.id_input').val(); // id에 입력되는 값
					var data = {
						memberId : memberId
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data,
						success : function(result) {
							// console.log("성공여부" + result);
							if (result != 'fail') {
								$('.id_input_re_1').css("display",
										"inline-block");
								$('.id_input_re_2').css("display", "none");
								// 아이디 중복이 없는 경우
								idckCheck = true;
							} else {
								$('.id_input_re_2').css("display",
										"inline-block");
								$('.id_input_re_1').css("display", "none");
								// 아이디 중복된 경우
								idckCheck = false;
							}
						} // success 종료
					}); // ajax 종료
				}); // function 종료

		/* 다음 주소 연동 */
		function address() {

			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								addr += extraAddr;

							} else {
								addr += ' ';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							$(".address_input_1").val(data.zonecode);
							$(".address_input_2").val(addr);
							// 커서를 상세주소 필드로 이동한다.
							$(".address_input_3").attr("readonly", false);
							$(".address_input_3").focus();
						}
					}).open();
		}
		/* 비밀번호 확인 일치 유효성 검사 */
		$('.pwck_input').on("propertychange change keyup paste input",
				function() {

					var pw = $('.pw_input').val();
					var pwck = $('.pwck_input').val();
					$('.final_pwck_ck').css('display', 'none');
					if (pw == pwck) {
						$('.pwck_input_re_1').css('display', 'block');
						$('.pwck_input_re_2').css('display', 'none');
						pwckcorCheck = true;
					} else {
						$('.pwck_input_re_1').css('display', 'none');
						$('.pwck_input_re_2').css('display', 'block');
						pwckcorCheck = false;
					}
				});
	</script>


<!-- JS here -->

    <!-- All JS Custom Plugins Link Here here -->
    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    
    <!-- Scrollup, nice-select, sticky -->
    <script src="./assets/js/jquery.scrollUp.min.js"></script>
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>

</body>
</html>