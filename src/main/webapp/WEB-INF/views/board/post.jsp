<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>게시판</title>
  <style>
    #list {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #list td, #list th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #006bb3;
      color: white;
    }
  </style>
  <script>
    function delete_ok(id) {
      var a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href = 'delete/' + id;
    }

  </script>
</head>
<body>

<table id="list", width="90%">
  <tr>
    <th>ID</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>Regdate</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
  <tr>
    <td>${u.seq}</td>
    <td>${u.title}</td>
    <td>${u.writer}</td>
    <td>${u.content}</td>
    <td>${u.reg_date}</td>
    <td><a href="editform/${u.seq}">글수정</a></td>
    <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
  </tr>
  </c:forEach>
</table>

<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
<br/>
<form action="search">
  <input type="text" name="search"/><button type="submit"></button>
</form>
</body>
</html>
