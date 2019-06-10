<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>      
<%@include file="../includes/header.jsp"%>
<style type="text/css">
	.error-color {
		color:red;
	}
</style>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><spring:message code="company.update.title"/></h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">  
				<div class="panel-body">
	<form:form action="cupdate" modelAttribute="companyVO"><!-- companyCommand 자바빈 초기화 필요 -->
		사업자아이디 <input type="text" class="form-control" name="compid" value="${companyVO.compid}" readonly><br>
		비밀번호 : <form:password class="form-control" path="comppw"/>
		<form:errors path="comppw" class="error-color"/><br>
		상호 : <form:input class="form-control" path="compname"/>
		<form:errors path="compname" class="error-color"/><br>
		설립일 : <input type="date" class="form-control" name="compdate" value='${companyVO.compdate}'>
		<form:errors path="compdate" class="error-color"/><br>
		업종 : <form:input class="form-control" path="compcontent"/>
		<form:errors path="compcontent" class="error-color"/><br>
		연락처 : <form:input class="form-control" path="compphone"/>
		<form:errors path="compphone" class="error-color"/><br>
		홈페이지 : <form:input class="form-control" path="compdomain"/>
		<form:errors path="compdomain" class="error-color"/><br>
		<input type="submit" class="btn btn-info" value="보내기">
	</form:form>
</div>
		</div>
	</div>
</div>
<%@include file="../includes/footer.jsp"%>