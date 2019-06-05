<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="company.list.title"/></title>
<style type="text/css">
   table{
      width: 600px;
      margin: 0 auto;
   }
</style>
</head>
<body>
   <h2 align="center"><spring:message code="company.list.title"/></h2>
   <table>
      <tr>
         <td align="right"><a href="cinsert">등록</a></td>
      </tr>
   </table>
   
   <!-- count가 0보다 크면 뿌림 -->
   <c:if test="${count == 0}">
      <div align="center">출력할 내용이 없습니다.</div>
   </c:if>
   <c:if test="${count > 0}">
      <table border="1">
         <tr>
            <th width="100">사업자아이디</th>
            <th width="100">비밀번호</th>
            <th width="200">상호</th>
            <th width="200">설립일자</th>
            <th width="200">업종</th>
            <th width="200">연락처</th>
            <th width="200">홈페이지</th>
            <th width="200">등록일자</th>
         </tr>
         <c:forEach var="company" items="${list}">
            <tr>
            <td width="100"><a href="cdetail?compid=${company.compid}">${company.compid}</a></td>
            <td width="100">${company.comppw}</td>
            <td width="200">${company.compname}</td>
            <td width="200">${company.compdate}</td>
            <td width="200">${company.compcontent}</td>
            <td width="200">${company.compphone}</td>
            <td width="200">${company.compdomain}</td>
            <td width="200">${company.regdate}</td>
            </tr>
         </c:forEach>
      </table>
      <table>
         <tr>
            <td align="center">${pagingHtml}</td>
         </tr>
      </table>
   </c:if>
   
</body>
</html>