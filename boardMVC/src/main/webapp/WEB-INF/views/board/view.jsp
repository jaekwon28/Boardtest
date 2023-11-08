<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 조회</title>
</head>
<body>

	<form method="post">
		<label>제목</label>
		<input type="text" nmae="title" value="${view.title}"/><br/>
		
		<label>작성자</label>
		<input type="text" nmae="wirter" value="${view.wirter}"/><br/>
		
		<label>내용</label>
		<textarea rows="5" cols="50" name="content">"${view.content}"</textarea><br/>
		
		
	</form>

	<div>
		<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
	</div>
	<a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
</body>
</html>