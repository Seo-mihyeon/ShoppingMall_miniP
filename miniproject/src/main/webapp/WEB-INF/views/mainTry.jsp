<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/mainTry.css">
<!-- 메인 화면에 구현해 놓은 기능을 시현하기 위한 최소한의 페이지입니다. 
	1. 비동기 로그인/로그아웃 기능  2. 관리자 페이지 링크 기능  3. 로그인된 상태일 때 마이페이지 링크 기능을 추가했습니다. -->
</head>
<body>
	<div class="wrapper">
		<div class="wrap">
			<div class="top_gnb_area">
				<!-- 로그인 여부/관리자 계정 여부에 따라 화면이 다릅니다 -->
				<ul class="list">
					<c:if test="${member == null}">
						<li><a href="/member/login">로그인</a></li>
						<li><a href="/member/join">회원가입</a></li>
					</c:if>
					<c:if test="${member != null }"> <!-- 로그인 o -->
						<c:if test="${member.adminCk == 1 }"> <!-- 관리자 계정 -->
							<li><a href="/admin/main">관리자 페이지</a></li>
						</c:if>
						<!-- 이 부분은 post방식의 비동기 로그아웃 처리입니다 -->
						<li><a id="gnb_logout_button">로그아웃</a></li>
						<li>마이룸</li>
						<li>장바구니</li>
					</c:if>
				</ul>
			</div>
			<div class="top_area">
				<div class="logo_area">
					<h1>logo area</h1>
				</div>
				<div class="search_area">
					<h1>Search area</h1>
				</div>
				<!-- login_area 링크와 클래스는 동일하게 부탁드립니다. login_button으로 submit처리 js가 추가됩니다.
				아 참고로 매핑이 현재는 중복으로 들어가있기 때문에 서버로는 실행이 안될 것이고 필요한 클래스 및 링크 복사하기 편하라고 해둡니다! -->
				<!-- login_area는 로그인  여부에 따라 화면이 다르도록 구현한 것입니다. -->
				<div class="login_area">
					<!-- 로그인 하지 않은 상태(로그인/회원가입 링크 보여줌) -->
					<c:if test="${member == null }">
						<div class="login_button">
							<a href="/member/login">로그인</a>
						</div>
						<span><a href="/member/join">회원가입</a></span>
					</c:if>

					<!-- 로그인한 상태 -->
					<c:if test="${ member != null }">
						<div class="login_success_area">
							<div class="mypage_button">
								<a href="/member/mypage">마이페이지</a>
							</div>
							<!-- get방식의 로그아웃 처리 기능입니다 -->
							<a href="/member/logout.do">로그아웃</a>
						</div>
					</c:if>

				</div>
				<div class="clearfix"></div>
			</div>
			<div class="navi_bar_area">
				<h1>navi area</h1>
			</div>
			<div class="content_area">
				<h1>content area</h1>
			</div>
		</div>
	</div>

	<script>
		/* gnb_area 로그아웃 버튼 작동 */
		$("#gnb_logout_button").click(function() {
			//alert("버튼 작동");
	        $.ajax({
	            type:"POST",
	            url:"/member/logout.do",
	            success:function(data){
	                alert("로그아웃 성공");
	                document.location.reload();     
	            } 
	        }); // ajax 
		});
	</script>
</body>
</html>