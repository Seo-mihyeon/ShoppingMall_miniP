<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/leaf.png">
</head>
<body>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancle").on("click", function(){
				
				location.href = "/main";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#memberPw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#memberPw").focus();
					return false;
				}	
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dataType : "json",
					data : $("#delForm").serializeArray(),
					success: function(data){
						
						if(data==true){
							if(confirm("회원탈퇴하시겠습니까?")){
								$("#delForm").submit();
							}
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
						}
					}
				})
			});
		})
	</script>
	<body>
	<%@include file="../includes/admin/header.jsp"%>
	
	<div class="slider-area">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center"
           data-background="/join/assets/img/hero/category.jpg" style="background-image: url("join/assets/img/hero/category.jpg");">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                        <a href="/main"><h2 style="text-align:cneter">Secession</h2></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	 <section id="container">
      <div class="container">
         <div class="row">
            <div class="col-lg-12" >
               <div class="login_form_inner">
               
                  <form action="/member/memberDelete" method="post" id="delForm" style ="margin-bottom : 100px;">
                     <!-- 전체 로그인 부분 묶기 .login_wrap -->
                
                  <div style="text-align:center; width:450px; margin:0 auto">   
                    
                     <div class="col-md-12 form-group id_wrap">
	                        <!-- 아이디 묶기 .id_wrap -->
	                     <div class="id_input_box">
	                        <div class="form-group has-feedback">
									<label class="control-label" for="userId">아이디</label><br>
									<input class="form-control text-center" type="text" id="memberId" name="memberId" value="${member.memberId}" readonly="readonly"/>                           
							</div>
						</div>
					 </div>
					 
					 <div class="col-md-12 form-group id_wrap">
						<div class="pw_input_box">
	                        <!-- 비밀번호 묶기 .pw_wrap -->
	                        <div class="form-group has-feedback">
	                              <label class="control-label" for="userPass">패스워드</label><br>
								<input class="form-control text-center" type="password" id="memberPw" name="memberPw"/>
							</div>
						</div>
                     </div>
                        <!-- 로그인버튼 묶기 .login_button_wrap -->
                        <div class="col-md-12 form-group has-feedback login_button_wrap">
							<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
							<button class="cancle btn btn-danger" type="button">취소</button>
                        </div>
                     
                
                </div>
              </form>
              
                  <div>
						<c:if test="${msg == false}">
								비밀번호가 맞지 않습니다.
						</c:if>
					</div>
					<div class="col-md-12 form-group">
                        
                     </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   
		<%@include file="../includes/admin/footer.jsp"%>
</body>
</html>