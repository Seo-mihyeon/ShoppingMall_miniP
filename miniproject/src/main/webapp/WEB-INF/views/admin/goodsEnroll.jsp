<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style type="text/css">
#result_card img {
	max-width: 100%;
	height: auto;
	display: block;
	padding: 5px;
	margin-top: 10px;
	margin: auto;
}

#result_card {
	position: relative;
}

.imgDeleteBtn {
	position: absolute;
	top: 0;
	right: 5%;
	background-color: #ef7d7d;
	color: wheat;
	font-weight: 900;
	width: 30px;
	height: 30px;
	border-radius: 50%;
	line-height: 26px;
	text-align: center;
	border: none;
	display: block;
	cursor: pointer;
}
</style>

</head>
<body>
	<%@include file="../includes/admin/header.jsp"%>

	<div class="admin_content_wrap" style="margin-top: 15px; margin-left: 230px;">
		<div class="admin_content_subject">
			<span>상품 등록</span>
		</div>

		<div class="admin_content_main">
			<form action="/admin/goodsEnroll" method="post" id="enrollForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 코드</label>
					</div>
					<div class="form_section_content">
						<input name="itemCode"> <span
							class="ck_warn itemCode_warn">상품 코드를 입력해주세요</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품명</label>
					</div>
					<div class="form_section_content">
						<input name="itemName"> <span
							class="ck_warn itemName_warn">상품명을 입력해주세요</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 가격</label>
					</div>
					<div class="form_section_content">
						<input name="itemPrice"> <span
							class="ck_warn itemPrice_warn">상품가격을 입력해주세요</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 소개</label>
					</div>
					<div class="form_section_content iif">
						<textarea name="itemInfo" id="itemInfo_textarea"></textarea>
						<span class="ck_warn itemInfo_warn">상품소개를 입력해주세요</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 이미지</label>
					</div>
					<!-- 사진 여러장 추가할 때는 type 뒤에 multifile 추가해주기 -->
					<!-- 
					<div class="form_section_content">
						<input type="file" id="fileItem" name='uploadFile'
							style="height: 30px;">
						<div id="uploadResult"></div>
					</div>  -->
				</div>
			</form>
		</div>

		<div class="btn_section">
			<button id="cancelBtn" class="btn">취 소</button>
			<button id="enrollBtn" class="btn enroll_btn">등 록</button>
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

		/* 유효성 검사  체크 변수 */
		let itemCodeCk = false;
		let itemNameCk = false;
		let itemPriceCk = false;
		let itemInfoCk = false;

		/* 체크 대상 변수 */
		let itemCode = $("input[name='itemCode']").val();
		let itemName = $("input[name='itemName']").val();
		let itemPrice = $("input[name='itemPrice']").val();
		let itemInfo = $(".iif p").html();

		/* 공란 체크 */
		if (itemCode) {
			$(".itemCode_warn").css('display', 'none');
			itemCodeCk = true;
		} else {
			$(".itemCode_warn").css('display', 'block');
			itemCodeCk = false;
		}

		if (itemName) {
			$(".itemName_warn").css('display', 'none');
			itemNameCk = true;
		} else {
			$(".itemName_warn").css('display', 'block');
			itemNameCk = false;
		}

		if (itemPrice) {
			$(".itemPrice_warn").css('display', 'none');
			itemPriceCk = true;
		} else {
			$(".itemPrice_warn").css('display', 'block');
			itemPriceCk = false;
		}

		if (itemInfo) {
			$(".itemInfo_warn").css('display', 'none');
			itemInfoCk = true;
		} else {
			$(".itemInfo_warn").css('display', 'block');
			itemInfoCk = false;
		}

		if (itemCodeCk && itemNameCk && itemPriceCk && itemInfoCk) {
			//alert('통과');
			enrollForm.submit();
		} else {
			return false;
		}

		//enrollForm.submit();

	});
	
	/* 위지윅 적용 */
	/* 상품소개 */
	ClassicEditor
		.create(document.querySelector('#itemInfo_textarea'))
		.catch(error=>{
			console.error(error);
		});
	
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($(".imgDeleteBtn").length > 0){
			deleteFile();
		}
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		
		formData.append("uploadFile", fileObj);
		// 여러 파일 선택할 때
		//for(let i = 0; i < fileList.length; i++){
			//formData.append("uploadFile", fileList[i]);
		//}
		$.ajax({
			url: '/admin/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){
	    		console.log(result);
	    		showUploadImage(result); // 이미지 출력하는 메서드
	    	},
	    	error : function(result){
	    		alert("이미지 파일이 아닙니다.");
	    	}
		});	
	});
	
	/* 개발자가 지정해놓은 파일 형식만 올릴 수 있게함 */
	/* var, method related with attachFile */
	let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576; //1MB	
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}
	
	/* 이미지 출력 */
	function showUploadImage(uploadResultArr) {
		
		/* 전달받은 데이터 검증 */
		if(!uploadResultArr || uploadResultArr.length == 0){return}
		
		let uploadResult = $('#uploadResult');
	
		let obj = uploadResultArr[0];
		
		let str = "";
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		
		str += "<div id='result_card'>";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "</div>";
		
		uploadResult.append(str); 
	}
	
	/* 이미지 삭제 버튼 동작 */
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		
		deleteFile();
		
	});
	
	/* 파일 삭제 메서드 */
	function deleteFile() {
		
		let targetFile = $(".imgDeleteBtn").data("file");
		
		let targetDiv = $("#result_card");
		
		$.ajax({
			url: '/admin/deleteFile',
			data : {fileName : targetFile},
			dataType : 'text',
			type : 'POST',
			success : function(result){
				console.log(result);
			},
			error : function(result){
				console.log(result);
				
				alert("파일을 삭제하지 못하였습니다.")
			}
       });
		
	}
</script>
</body>
</html>

