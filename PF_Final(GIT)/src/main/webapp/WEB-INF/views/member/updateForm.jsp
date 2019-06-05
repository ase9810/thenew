<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.update.title"/></title>
<style type="text/css">
	div {
		width:600px;
		margin:0 auto;
	}
	.error-color {
		color:red;
	}
</style>
</head>
<body>
<div>
	<h2><spring:message code="member.update.title"/></h2>
	<form:form action="update" modelAttribute="memberVO"><!-- memberCommand 자바빈 초기화 필요 -->
		아이디 : ${memberVO.userid}<br>
		<input type="hidden" name="userid" value="${memberVO.userid}">
		비밀번호 : <form:password path="userpw"/>
		<form:errors path="userpw" class="error-color"/><br>
		이름 : <form:input path="username"/>
		<form:errors path="username" class="error-color"/><br>
		연락처 : <form:input path="userphone"/>
		<form:errors path="userphone" class="error-color"/><br>
		이메일 : <form:input path="useremail"/>
		<form:errors path="useremail" class="error-color"/><br>
		<input type="submit" value="보내기">
	</form:form>
</div>
</body>
</html>