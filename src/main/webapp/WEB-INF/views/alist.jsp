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
   <table border=1 width=600>
     <tr>
        <td width=100>No.</td>
        <td width=100>Name.</td>
        <td width=200>Tel.</td>
        <td width=200>Address.</td>
     </tr>
     <c:forEach items="${list}" var="vo">
       <tr onClick="location.href='aread?id=${vo.id}'">
         <td width=100>${vo.id}</td>
         <td width=100>${vo.name}</td>
         <td width=200>${vo.tel}</td>
         <td width=200>${vo.address}</td>
       </tr>
     </c:forEach>
   </table>
   <input type="button" value="입력" onClick="location.href='ainsert'">
</body>
</html>