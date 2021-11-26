<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 조회 페이지</title>
<link rel="stylesheet" href="../resources/css/admin/goodsDetail.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/leaf.png">
<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
<script
   src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
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

      <div class="admin_content_main">
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>상품 코드</label>
            </div>
            <div class="form_section_content">
               <input name="itemCode"
                  value="<c:out value="${goodsInfo.itemCode}"/>" disabled>
            </div>
         </div>
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>상품명</label>
            </div>
            <div class="form_section_content">
               <input id="itemName_input" value="${goodsInfo.itemName }" disabled>

            </div>
         </div>
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>상품 가격</label>
            </div>
            <div class="form_section_content">
               <input name="itemPrice"
                  value="<c:out value="${goodsInfo.itemPrice}"/>" disabled>
            </div>
         </div>
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>상품 소개</label>
            </div>
            <div class="form_section_content">
               <textarea name="itemInfo" id="itemInfo_textarea" disabled>${goodsInfo.itemInfo}</textarea>
            </div>
         </div>
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>등록 날짜</label>
            </div>
            <div class="form_section_content">
               <input
                  value="<fmt:formatDate value='${goodsInfo.regDate}' pattern='yyyy-MM-dd'/>"
                  disabled>
            </div>
         </div>
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>최근 수정 날짜</label>
            </div>
            <div class="form_section_content">
               <input
                  value="<fmt:formatDate value='${goodsInfo.updateDate}' pattern='yyyy-MM-dd'/>"
                  disabled>
            </div>
         </div>
         <div class="form_section" style="background-color: #CEECF5">
            <div class="form_section_title">
               <label>상품 이미지</label>
            </div>
            <div class="form_section_content">
				<div id="uploadReslut"></div>
			</div>
         </div>

         <div class="btn_section" >
            <button id="cancelBtn" class="btn">상품 목록</button>
            <button id="modifyBtn" class="btn enroll_btn">수정</button>
         </div>
      </div>


      <form id="moveForm" action="/admin/goodsManage" method="get">
         <input type="hidden" name="pageNum" value="${cri.pageNum}"> <input
            type="hidden" name="amount" value="${cri.amount}"> <input
            type="hidden" name="keyword" value="${cri.keyword}">
      </form>

   </div>
   <%@include file="../includes/admin/footer.jsp"%>

	<script>
	/* 상품 소개 */
	ClassicEditor
		.create(document.querySelector('#itemInfo_textarea'))
		.then(editor => {
			console.log(editor);
			editor.isReadOnly = true;
		})
		.catch(error=>{
			console.error(error);
		});
			
	/* 이미지 정보 호출 */
	let itemId = '<c:out value="${goodsInfo.itemId}"/>';
	let uploadReslut = $("#uploadReslut");

	$.getJSON("/getAttachList", {itemId : itemId}, function(arr){	
		/* 이미지 없을 경우 */
		if(arr.length === 0){	
			
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='/resources/img/goodsNoImage.png'>";
			str += "</div>";
			
			uploadReslut.html(str);	
			return;
		}
		/* 이미지 있을 경우 */
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
		str += ">";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "</div>";
		
		uploadReslut.html(str);	
	});		
			
	/* 목록 이동 버튼 */
	$("#cancelBtn").on("click", function(e){
		e.preventDefault();
		$("#moveForm").submit();	
	});	
	
	/* 수정 페이지 이동 */
	$("#modifyBtn").on("click", function(e){
		e.preventDefault();
		let addInput = '<input type="hidden" name="itemId" value="${goodsInfo.itemId}">';
		$("#moveForm").append(addInput);
		$("#moveForm").attr("action", "/admin/goodsModify");
		$("#moveForm").submit();
	});	
	</script>

</body>
</html>