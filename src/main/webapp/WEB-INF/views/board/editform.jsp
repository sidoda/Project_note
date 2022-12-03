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

<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>내용</td><td><textarea cols="50" rows="5" name="content"/></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history"/>
</form:form>

</body>
</html>