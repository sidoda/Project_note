<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="com.example.vo.BoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>

<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table>
		<tr><td>제목</td><td><form:input path="title"/></td></tr>
		<tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
		<tr><td>카테고리</td><td><form:input path="category"/></td></tr>
		<tr><td>과목</td><td><form:input path="subject"/></td></tr>
		<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
		<tr><td>수업날짜</td><td><form:input path="subject_date"/></td></tr>


	</table>
	<button type="button" onclick="location.href='../'">취소하기</button>
	<button type="submit">수정하기</button>
</form:form>

</body>
</html>