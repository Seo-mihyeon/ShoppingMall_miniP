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
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/leaf.png">
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

   <div class="admin_content_wrap col-xl-12">
   <div class="slider-area">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center"
           data-background="/join/assets/img/hero/category.jpg" style="background-image: url("join/assets/img/hero/category.jpg");">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                        <a href="/admin/main"><h2 style="margin-right: 150px;">Product details</h2></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

      <div class="admin_content_main ">
         <form action="/admin/goodsModify" method="post" id="modifyForm">
            <div class="form_section" style="background-color: #CEECF5">
               <div class="form_section_title">
                  <label>상품 코드</label>
               </div>
               <div class="form_section_content">
                  <input name="itemCode" value="${goodsInfo.itemCode}">
               </div>
            </div>
            <div class="form_section" style="background-color: #CEECF5">
               <div class="form_section_title">
                  <label>상품명</label>
               </div>
               <div class="form_section_content">
                  <input name="itemName" id="itemName_input" value="${goodsInfo.itemName}">
               </div>
            </div>
            <div class="form_section" style="background-color: #CEECF5">
               <div class="form_section_title">
                  <label>상품 가격</label>
               </div>
               <div class="form_section_content">
                  <input name="itemPrice" value="${goodsInfo.itemPrice}">
               </div>
            </div>
            <div class="form_section" style="background-color: #CEECF5">
               <div class="form_section_title">
                  <label>상품 소개</label>
               </div>
               <div class="form_section_content">
                  <textarea name="itemInfo" id="itemInfo_textarea">${goodsInfo.itemInfo}</textarea>
               </div>
            </div>
            <div class="form_section" style="background-color: #CEECF5">
               <div class="form_section_title">
						<label>상품 이미지</label>
					</div>
					<div class="form_section_content">
						<input type="file" id="fileItem" name='uploadFile'
							style="height: 30px;">
						<div id="uploadResult"></div>
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
	
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($("#result_card").length > 0){
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
	
	
	
	/* 기존 이미지 출력 */
	let itemId = '<c:out value="${goodsInfo.itemId}"/>';
	let uploadResult = $("#uploadResult");
	
	$.getJSON("/getAttachList", {itemId : itemId}, function(arr){
		
		console.log(arr);
		
		if(arr.length === 0){
			
			
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='/resources/img/goodsNoImage.png'>";
			str += "</div>";
			
			uploadResult.html(str);				
			return;
		}
		
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
		str += ">";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";				
		str += "</div>";
		
		uploadResult.html(str);			
		
	});// GetJSON
	
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
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
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
					
					targetDiv.remove();
					$("input[type='file']").val("");
					
				},
				error : function(result){
					console.log(result);
					
					alert("파일을 삭제하지 못하였습니다.")
				}
	       });
	}
	
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