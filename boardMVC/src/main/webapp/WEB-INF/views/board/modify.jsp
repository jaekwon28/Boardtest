<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 수정</title>
</head>
<body>

	<form method="post">
		<label>제목</label>
		<input type="text" name="title" value="${view.title}"/><br />
		<label>작성자</label>
		<input type="text" name="wirter" value="${view.wirter}"/><br />
		<label>내용</label>
		<textarea rows="5" cols="50" name="content">${view.content}</textarea>
		
		<button type="submit">완료</button>
	</form>

</body>
</html>