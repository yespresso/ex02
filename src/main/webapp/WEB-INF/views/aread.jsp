<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>주소록</title>
</head>
<body>
   <h1>주소록</h1>
   <form name="frm" action="aupdate" method="post">
   <table border=1 width=600>
     <tr>
          <td width=100>Id.</td>
          <td><input type="text" name="id" value="${vo.id}"></td>
     </tr>
     <tr>
          <td>Name.</td>
          <td><input type="text" name="name" value="${vo.name}"></td>
     </tr>
     <tr>
          <td>Tel.</td>
          <td><input type="text" name="tel" value="${vo.tel}"></td>
     </tr>
     <tr>
          <td>Address.</td>
          <td><input type="text" name="address" value="${vo.address}"></td>
     </tr>
   </table>
   <input type="submit" value="수정">
   <input type="reset" value="취소">
   <input type="button" value="목록" onClick="location.href='alist'">
   <input type="button" value="삭제" onClick="funDelete()">
   </form>
</body>
<script>
     function funDelete(){
    	 if(confirm("삭제하시겠습니까?")){
    		 frm.action="adelete";
    		 frm.method="post";
    		 frm.submit();
    	 }
     }
</script>
</html>