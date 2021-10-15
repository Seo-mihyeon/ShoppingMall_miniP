<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 </title>
</head>
<body>
<form id="mypage" action="/member/mypage" method="post">
<h3>${member.memberName }님의 프로필 정보</h3>
<table border="1">
	 <tr>
	 	<td>아이디</td>
	 	<td width="100">${member.memberId }</td>
	 </tr>
	 <tr>
	 	<td>이름</td>
	 	<td width="100">${member.memberName }</td>
	 </tr>
	 <tr>
	 	<td>연락처</td>
	 	<td width="100">${member.memberPhone }</td>
	 </tr>
	 <tr>
	 	<td>생년월일</td>
	 	<td width="100">${member.memberBirth }</td>
	 </tr>
	 <tr>
	 	<td>이메일</td>
	 	<td width="100">${member.memberMail }</td>
	 </tr>
	 <tr>
	 	<td>주소</td>
	 	<td width="100">
	 	${member.memberAddr1 }
	 	<span>${member.memberAddr2 }</span>
	 	<span>${member.memberAddr3 }</span>
	 	</td>
	 </tr>
</table>
</form>
<input type="button" value="메인으로" class="btn" onclick="location.href='/main'">
</body>
</html>