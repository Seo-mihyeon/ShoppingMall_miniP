<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록페이지</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
</head>
<body>
	<%@include file="../includes/admin/header.jsp"%>

	<div class="admin_content_wrap">
		<div class="admin_content_subject">
			<span>상품 등록</span>
		</div>
		<div class="admin_content_main">
			<form action="/admin/goodsEnroll2" method="post" id="enrollForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 코드</label>
					</div>
					<div class="form_section_content">
						<input name="itemCode">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품명</label>
					</div>
					<div class="form_section_content">
						<input name="itemName">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품가격</label>
					</div>
					<div class="form_section_content">
						<input name="itemPrice">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품소개</label>
					</div>
					<div class="form_section_content">
						<input name="itemInfo">
					</div>
				</div>
			</form>
			<div class="btn_section">
				<button id="cancelBtn" class="btn">취 소</button>
				<button id="enrollBtn" class="btn enroll_btn">등 록</button>
			</div>
		</div>
	</div>

	<%@include file="../includes/admin/footer.jsp"%>

	<script>
		let enrollForm = $("#enrollForm")

		/* 취소 버튼 */
		$("#cancelBtn").click(function() {

			location.href = "/admin/goodsManage"

		});

		/* 상품 등록 버튼 */
		$("#enrollBtn").on("click", function(e) {

			e.preventDefault();

			enrollForm.submit();

		});
	</script>

</body>
</html>
