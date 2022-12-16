<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Post</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">

    <table>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title"/></td>
        </tr>
        <tr>
            <td>글쓴이</td>
            <td><input type="text" name="writer"/></td>
        </tr>
        <tr>
            <td>카테고리</td>
            <td><input type="text" name="category"/></td>
        </tr>
        <tr>
            <td>과목</td>
            <td><input type="text" name="subject"/></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" cols="50" rows="5"></textarea></td>
        </tr>
        <tr>
            <td>수업날짜</td>
            <td><input type="date" name="subject_date"/></td>
        </tr>
    </table>

    <button type="button" onclick="history.back()">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>