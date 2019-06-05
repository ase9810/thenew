<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="company.insert.title"/></title>
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
	<h2><spring:message code="company.insert.title"/></h2>
	<form:form modelAttribute="companyVO"><!-- companyCommand 자바빈 초기화 필요 -->
		사업자아이디 : <form:input path="compid"/>
		<form:errors path="compid" class="error-color"/><br>
		비밀번호 : <form:password path="comppw"/>
		<form:errors path="comppw" class="error-color"/><br>
		상호 : <form:input path="compname"/>
		<form:errors path="compname" class="error-color"/><br>
		설립일자 : <form:input path="compdate"/>
		<form:errors path="compdate" class="error-color"/><br>
		회사업종 : <form:input path="compcontent"/>
		<form:errors path="compcontent" class="error-color"/><br>		
		사업자연락처 : <form:input path="compphone"/>
		<form:errors path="compphone" class="error-color"/><br>
		회사홈페이지 : <form:input path="compdomain"/>
		<form:errors path="compdomain" class="error-color"/><br>
		<input type="submit" value="보내기">
	</form:form>
</div>
</body>
</html>