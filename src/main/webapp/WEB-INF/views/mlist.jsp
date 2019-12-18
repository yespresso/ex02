<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 목록</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <style>
      .rowh-hover:hover{background:skyblue;color:blue;}
      h1{text-align:center;}
   </style>

</head>
<body>
	<h1>사용자 목록</h1>
	<table class="table table-borderd">
		<tr>
			<th width=100>아이디</th>
			<th width=100>비밀번호</th>
			<th width=100>성명</th>
			<th width=200>이메일</th>
			<th width=200>등록일</th>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr class="rowh-hover" onClick="location.href='mread?userid=${vo.userid}'">
				<td width=100>${vo.userid}</td>
				<td width=100>${vo.userpw}</td>
				<td width=100>${vo.username}</td>
				<td width=200>${vo.email}</td>
				<td width=200><fmt:formatDate value="${vo.regdate}"
						pattern="yyyy-MM-dd hh:mm:ss" /></td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="입력" onClick="location.href='minsert'" class="btn btn-primary">
</body>
</html>