<!doctype html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>회원가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

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
                                       <li><a href="login.html">My Account </a></li>
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
                                  <a href="index.html"><img src="${pageContext.request.contextPath}/resources/assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>                                                
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="index.html">Home</a></li>
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
                                   <li class="d-none d-lg-block"> <a href="#" class="btn header-btn">Sign in</a></li>
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
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
						<br><br><br><br><br><br>
							<h4>Already have an account?</h4>
							
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="login.html">Login Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner register_form_inner">
						<h3>Create an account</h3>
						<form class="row login_form" action="#/" id="register_form" >
						<!-- 아이디 -->
							<div class="col-md-12 form-group id_wrap">
								<input type="text" class="form-control id_name" id="id" name="ud" placeholder="UserId" onfocus="this.placeholder = ''" onblur="this.placeholder = 'UserId'">
								
								<!-- 한글 인코딩 깨짐  -->
								<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
								<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
								<span class="final_id_ck">아이디를 입력해주세요.</span>
											
							</div>
						<!-- 비밀번호 -->
							<div class="col-md-12 form-group pw_name">
								<input type="text" class="form-control pw_name" id="password" name="password" placeholder="password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
				           
					            <span class="final_pw_ck">비밀번호를 입력해주세요.</span>
								<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
				                <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
							            
				            </div>
						<!-- 비밀번호 확인 -->
				              <div class="col-md-12 form-group pwck_wrap">
								<input type="text" class="form-control pwck_name" id="chpassword" name="password" placeholder="Password check" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
				              
				              <span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				              </div>
						<!-- 이름 -->				              
              				<div class="col-md-12 form-group user_wrap">
								<input type="text" class="form-control user_name" id="name" name="name" placeholder="UserName" onfocus="this.placeholder = ''" onblur="this.placeholder = 'UserName'">
							</div>
						<!-- 연락처 -->				              
              				<div class="col-md-12 form-group phone_wrap">
								<input type="text" class="form-control phone_name" id="phonenumber" name="phonenumber" placeholder="PhoneNumber" onfocus="this.placeholder = ''" onblur="this.placeholder = 'PhoneNumber'">
							</div>
								
						<!-- 이메일 -->
							<div class="col-md-12 form-group mail_name">
								<input type="text" class="form-control mail_name" id="email" name="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'">
							</div>
						<!-- 생년월일 -->
							<div class="col-md-12 form-group birth_name">
								<input type="text" class="form-control birth_name" id="birth" name="birth" placeholder="Birth" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Birth'">
							</div>
						<!-- 주소 -->
							<div class="col-md-12 form-group address_wrap">
								<input type="text" class="form-control address_input_1_wrap" id="confirmPassword" name="confirmPassword" placeholder="우편주소" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'">
								<input type="text" class="form-control address_input_2_wrap" id="confirmPassword" name="confirmPassword" placeholder="기본주소" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'">
								<input type="text" class="form-control address_input_3_wrap" id="confirmPassword" name="confirmPassword" placeholder="상세 주소 항목" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'">
								<div class="address_button" onclick="address()">
									<span>address find</span>
								</div>
							</div>
							
							
							
							
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="button button-register w-100">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

<!-- 회원가입 변수 관련 항목 사항 -->
<script>

var idCheck = false; // 아이디
var idckCheck = false; // 아이디 중복 검사
var pwCheck = false;   // 비번
var pwckCheck = false; // 비번 확인
var pwckcorCheck = false; // 비번 확인 일치 확인
var nameCheck = false; // 이름
var phoneCheck = false; // 연락처 
var mailCheck = false; // 이메일
var birthCheck = false; // 생년월일
var addressCheck = false // 주소

$(document).ready(function(){
	// 회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		
		/* 입력값 변수 */
        var id = $('.id_input').val();                 // id 입력란
        var pw = $('.pw_input').val();                // 비밀번호 입력란
        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
        var name = $('.user_input').val();            // 이름 입력란
        var phone = $('.phone_input').val();        // 연락처 입력란
        var mail = $('.mail_input').val();            // 이메일 입력란
        var birth = $('.birth_input').val();            // 생일 입력란
        var addr = $('.address_input_3').val();        // 주소 입력란
        
        /* 아이디 유효성검사 */
        if(id == ""){
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        
        /* 비밀번호 유효성 검사 */
        if(pw == ""){
            $('.final_pw_ck').css('display','block');
            pwCheck = false;
        }else{
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
        }
        
        /* 비밀번호 확인 유효성 검사 */
        if(pwck == ""){
            $('.final_pwck_ck').css('display','block');
            pwckCheck = false;
        }else{
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
        }
        
        /* 이름 유효성 검사 */
        if(name == ""){
            $('.final_name_ck').css('display','block');
            nameCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
        
        /* 연락처 유효성 검사 */
        if(name == ""){
            $('.final_phone_ck').css('display','block');
            phoneCheck = false;
        }else{
            $('.final_phone_ck').css('display', 'none');
            phoneCheck = true;
        }
        
        /* 이메일 유효성 검사 */
        if(mail == ""){
            $('.final_mail_ck').css('display','block');
            mailCheck = false;
        }else{
            $('.final_mail_ck').css('display', 'none');
            mailCheck = true;
        }
        
        /* 생년월일 유효성 검사 */
        if(mail == ""){
            $('.final_birth_ck').css('display','block');
            birthCheck = false;
        }else{
            $('.final_birth_ck').css('display', 'none');
            birthCheck = true;
        }
        
        /* 주소 유효성 검사 */
        if(addr == ""){
            $('.final_addr_ck').css('display','block');
            addressCheck = false;
        }else{
            $('.final_addr_ck').css('display', 'none');
            addressCheck = true;
        }

        /* 최종 유효성 검사 */
        if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&phoneCheck&&mailCheck&&birthCheck&&addressCheck){

        	$("#join_form").attr("action", "/member/join");
        	$("#join_form").submit();
 			
        }    
        
        return false;
 
	});
});
	
/* 아이디 중복검사 */
$('.id_input').on("propertychange change keyup paste input", function(){
	var memberId = $('.id_input').val(); // id에 입력되는 값
	var data = {memberId : memberId} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			// console.log("성공여부" + result);
			if(result != 'fail'){
				$('.id_input_re_1').css("display", "inline-block");
				$('.id_input_re_2').css("display", "none");
				// 아이디 중복이 없는 경우
				idckCheck = true;
			} else {
				$('.id_input_re_2').css("display", "inline-block");
				$('.id_input_re_1').css("display", "none");
				// 아이디 중복된 경우
				idckCheck = false;
			}
		} // success 종료
	}); // ajax 종료
}); // function 종료

/* 다음 주소 연동 */
function address(){
 
    new daum.Postcode({
        oncomplete: function(data) {
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
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
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
            $(".address_input_3").attr("readonly",false);
            $(".address_input_3").focus();
        }
    }).open();    
}
/* 비밀번호 확인 일치 유효성 검사 */
$('.pwck_input').on("propertychange change keyup paste input", function(){
	
	var pw = $('.pw_input').val();
    var pwck = $('.pwck_input').val();
    $('.final_pwck_ck').css('display', 'none');
 </script>
 
 <!-- 변수 사항 끝 !! -->
 
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