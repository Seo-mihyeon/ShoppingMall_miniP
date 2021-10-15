<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 페이지</title>
<link rel="stylesheet" href="../resources/css/admin/goodsModify.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
</head>
<body>

	<%@include file="../includes/admin/header.jsp"%>

	<div class="admin_content_wrap">
		<div class="admin_content_subject">
			<span>정보 수정</span>
		</div>

		<div class="admin_content_main">
			<form action="/admin/goodsModify" method="post" id="modifyForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 코드</label>
					</div>
					<div class="form_section_content">
						<input name="itemCode" value="${goodsInfo.itemCode}">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품명</label>
					</div>
					<div class="form_section_content">
						<input name="itemName" id="itemName_input" value="${goodsInfo.itemName}">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 가격</label>
					</div>
					<div class="form_section_content">
						<input name="itemPrice" value="${goodsInfo.itemPrice}">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 소개</label>
					</div>
					<div class="form_section_content">
						<textarea name="itemInfo" id="itemInfo_textarea">${goodsInfo.itemInfo}</textarea>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 이미지</label>
					</div>
				</div>
				<input type="hidden" name='itemId' value="${goodsInfo.itemId}">
			</form>
			<div class="btn_section">
				<button id="cancelBtn" class="btn">취 소</button>
				<button id="modifyBtn" class="btn modify_btn">수 정</button>
				<button id="deleteBtn" class="btn delete_btn">삭 제</button>
			</div>
		</div>
		<form id="moveForm" action="/admin/goodsManage" method="get">
			<input type="hidden" name="pageNum" value="${cri.pageNum}"> 
			<input type="hidden" name="amount" value="${cri.amount}"> 
			<input type="hidden" name="keyword" value="${cri.keyword}"> 
			<input type="hidden" name='itemId' value="${goodsInfo.itemId}">
		</form>
	</div>

	<%@include file="../includes/admin/footer.jsp"%>
	
	<script>
	/* 책 소개 */
	ClassicEditor
		.create(document.querySelector('#itemInfo_textarea'))
		.catch(error=>{
			console.error(error);
		});
	
	/* 취소 버튼 */
	$("#cancelBtn").on("click", function(e){
		e.preventDefault();
		$("#moveForm").submit();
	});
	
	/* 삭제 버튼 */
	$("#deleteBtn").on("click", function(e){
		e.preventDefault();
		let moveForm = $("#moveForm");
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="itemId" value="${goodsInfo.itemId}">');
		moveForm.attr("action", "/admin/goodsDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	
	/* 수정 버튼 */
	$("#modifyBtn").on("click", function(e){
		e.preventDefault();
			$("#modifyForm").submit();
	});
	
	
	</script>
</body>
</html>