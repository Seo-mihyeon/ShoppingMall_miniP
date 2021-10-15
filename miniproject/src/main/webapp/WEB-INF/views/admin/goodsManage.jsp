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
	
	<div class="admin_content_wrap" style="margin-top: 15px; margin-left: 230px;">
		<div class="admin_content_subject">
			<span>상품 등록</span>
		</div>
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
	</script>
</body>
</html>
