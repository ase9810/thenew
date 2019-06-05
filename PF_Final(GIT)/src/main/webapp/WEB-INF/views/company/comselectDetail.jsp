<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="company.detail.title" arguments="${company.compid}"/></title>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}

</style>
</head>
<body>
<div>
	<h2><spring:message code="company.detail.title" arguments="${company.compid}"/></h2>
	<p>
		사업자아이디 : ${company.compid}<br>
		비밀번호 : ${company.comppw}<br>
		상호 : ${company.compname}<br>
		설립일자 : ${company.compdate}<br>
		업종 : ${company.compcontent}<br>
		연락처 : ${company.compphone}<br>
		홈페이지: ${company.compdomain}<br>
		등록일자: ${company.regdate}<br>
		<a href="clist">목록보기</a>
		<a href="cupdate?compid=${company.compid}">수정</a>
		<a href="cdelete?compid=${company.compid}">삭제</a>
	</p>
</div>
</body>
</html>