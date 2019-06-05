<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.detail.title" arguments="${member.userid}"/></title>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}

</style>
</head>
<body>
<div>
	<h2><spring:message code="member.detail.title" arguments="${member.userid}"/></h2>
	<p>
		아이디 : ${member.userid}<br>
		비밀번호 : ${member.userpw}<br>
		이름 : ${member.username}<br>
		연락처 : ${member.userphone}<br>
		이메일 : ${member.useremail}<br>
		날짜 : ${member.regdate}<br>
		<a href="list">목록보기</a>
		<a href="update?userid=${member.userid}">수정</a>
		<a href="delete?userid=${member.userid}">삭제</a>
	</p>
</div>
</body>
</html>