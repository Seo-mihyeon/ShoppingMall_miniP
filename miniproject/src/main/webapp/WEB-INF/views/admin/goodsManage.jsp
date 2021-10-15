<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리페이지</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
</head>
<body>

	<%@include file="../includes/admin/header.jsp"%>
	
	<div class="admin_content_wrap">
		<div class="admin_content_subject"><span>상품 관리</span></div>
		<div class="goods_table_wrap">
                    	<!-- 상품 리스트 O -->
	                    <c:if test="${listcheck != 'empty'}">
	                    	<table class="goods_table">
	                    		<thead>
	                    			<tr>
										<td class="th_column_1">상품 번호</td>
	                    				<td class="th_column_2">상품 이름</td>
	                    			</tr>
	                    		</thead>	
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.itemId}"></c:out></td>
	                    			<td><c:out value="${list.itemName}"></c:out></td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
	                    </c:if>
	                    <!-- 테스트 
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 작가가 없습니다.
                			</div>
                		</c:if> 
                		-->
                	</div>
                	
                	<!-- 검색 영역 -->
                	<div class="search_wrap">
                		<form id="searchForm" action="/admin/goodsManage" method="get">
                			<div class="search_input">
                    			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
                    			<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
                    			<input type="hidden" name="type" value="G">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
                	
                	<!-- 페이지 이름 인터페이스 영역 -->
                	<div class="pageMaker_wrap">
                		<ul class="pageMaker">
                			
                			<!-- 이전 버튼 -->
                			<c:if test="${pageMaker.prev }">
                				<li class="pageMaker_btn prev">
                					<a href="${pageMaker.pageStart -1}">이전</a>
                				</li>
                			</c:if>
                			
                			<!-- 페이지 번호 -->
                			<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
                				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
                					<a href="${num}">${num}</a>
                				</li>	
                			</c:forEach>
                		
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    </ul>
                	</div>
                	
                	<form id="moveForm" action="/admin/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                	</form>
	</div>
	
	<%@include file="../includes/admin/footer.jsp"%>

	<script>
		$(document).ready(function() {

			let eResult = '<c:out value="${enroll_result}"/>';

			checkResult(eResult);

			function checkResult(result) {

				if (result === '') {
					return;
				}

				alert("상품'" + eResult + "'을 등록하였습니다.");

			}
});
		
		let searchForm = $('#searchForm');
		let moveForm = $('#moveForm');

		$("#searchForm button").on("click", function(e){
			
			e.preventDefault();
			
			/* 검색 키워드 유효성 검사 */
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하십시오");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			
			searchForm.submit();
			
		});


		/* 페이지 이동 버튼 */
		$(".pageMaker_btn a").on("click", function(e){
			
			e.preventDefault();
			
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			
			moveForm.submit();
			
		});
		
		
	</script>
</body>
</html>
