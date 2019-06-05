<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.list.title"/></title>
<style type="text/css">
   table{
      width: 600px;
      margin: 0 auto;
   }
</style>
</head>
<body>
   <h2 align="center"><spring:message code="member.list.title"/></h2>
   <table>
      <tr>
         <td align="right"><a href="insert">등록</a></td>
      </tr>
   </table>
   
   <!-- count가 0보다 크면 뿌림 -->
   <c:if test="${count == 0}">
      <div align="center">출력할 내용이 없습니다.</div>
   </c:if>
   <c:if test="${count > 0}">
      <table border="1">
         <tr>
            <th width="100">아이디</th>
            <th width="100">비밀번호</th>
            <th width="200">이름</th>
            <th width="200">연락처</th>
            <th width="200">이메일</th>
            <th width="200">가입일자</th>
         </tr>
         <c:forEach var="member" items="${list}">
            <tr>
            <td width="100"><a href="detail?userid=${member.userid}">${member.userid}</a></td>
            <td width="100">${member.userpw}</td>
            <td width="200">${member.username}</td>
            <td width="200">${member.userphone}</td>
            <td width="200">${member.useremail}</td>
            <td width="200">${member.regdate}</td>
            </tr>
         </c:forEach>
         	<tr>
         	<td><a href="clist">기업 회원 보기</a>
         	</tr>
      </table>
      <table>
         <tr>
            <td align="center">${pagingHtml}</td>
         </tr>
      </table>
   </c:if>
   
</body>
</html>