<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

</head>
<body>
	                    <div class="admin_content_main">
                    	<form action="/admin/goodsEnroll" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 코드</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="itemCode">
                    				<span class="ck_warn itemCode_warn">상품 코드를 입력해주세요</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품명</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="itemName">
                    				<span class="ck_warn itemName_warn">상품명을 입력해주세요</span>
                    			</div>
                    		</div>            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="itemPrice" value="0">
                    				<span class="ck_warn itemPrice_warn">상품가격을 입력해주세요</span>
                    			</div>
                    		</div>            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 소개</label>
                    			</div>
                    			<div class="form_section_content iif">
                    				<input name="itemInfo">
                    				<span class="ck_warn itemInfo_warn">상품소개를 입력해주세요</span>
                    			</div>
                    		</div>             
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
	                    	</div> 
                    </div>  		
</body>
</html>

<script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/goodsManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click",function(e){
	
	e.preventDefault();
	
	/* 유효성 검사  체크 변수 */
	let itemCodeCk = false;
	let itemNameCk = false;
	let itemPriceCk = false;
	let itemInfoCk = false;
	
	/* 체크 대상 변수 */
	let itemCode = $("input[name='itemCode']").val();
	let itemCode = $("input[name='itemName']").val();
	let itemCode = $("input[name='itemPrice']").val();
	let itemCode = $(".iif").html();
	
	/* 공란 체크 */
	if(itemCode){
		$(".itemCode_warn").css('display','none');
		itemCodeCk = true;
	} else {
		$(".itemCode_warn").css('display','block');
		itemCodeCk = false;
	}
	
	if(itemName){
		$(".itemName_warn").css('display','none');
		itemNameCk = true;
	} else {
		$(".itemName_warn").css('display','block');
		itemNameCk = false;
	}
	
	if(itemPrice){
		$(".itemPrice_warn").css('display','none');
		itemPriceCk = true;
	} else {
		$(".itemPrice_warn").css('display','block');
		itemPriceCk = false;
	}	
	
	if(itemInfo){
		$(".itemInfo_warn").css('display','none');
		itemInfoCk = true;
	} else {
		$(".itemInfo_warn").css('display','block');
		itemInfoCk = false;
	}
	
	if(itemCodeCk && itemNameCk && itemPriceCk && itemInfoCk ){
		//alert('통과');
		enrollForm.submit();
	} else {
		return false;
	}
	
	
	enrollForm.submit();
	
});

</script> 