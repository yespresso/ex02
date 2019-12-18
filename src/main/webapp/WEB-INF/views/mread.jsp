<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>사용자 보기</title>
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
    <h1>사용자 보기</h1>
    <form name="frm" action="mupdate" method="post">
    <table class="table table-borderd">
    <tr >
        <td width=100>아이디</td>
        <td><input type="text" name="userid" value="${vo.userid}"></td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><input type="password" name="userpw" value="${vo.userpw}"></td>
    </tr>
    <tr>
        <td>성명</td>
        <td><input type="text" name="username" value="${vo.username}"></td>
    </tr>
    </table>
    <input type="submit" value="수정">
    <input type="reset" value="취소">
    <input type="button" value="목록" onClick="location.href='mlist'">
    <input type="button" value="삭제" onClick="funDelete()">
    </form>
</body>
<script>
   function funDelete(){
	   if(confirm("삭제하시겠습니까?")){
		   frm.action="mdelete";
		   frm.method="post";
		   frm.submit();
	   }
   }
</script>
</html>