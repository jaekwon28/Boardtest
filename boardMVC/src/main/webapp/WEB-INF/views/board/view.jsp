<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խù� ��ȸ</title>
</head>
<body>

	<form method="post">
		<label>����</label>
		<input type="text" nmae="title" value="${view.title}"/><br/>
		
		<label>�ۼ���</label>
		<input type="text" nmae="wirter" value="${view.wirter}"/><br/>
		
		<label>����</label>
		<textarea rows="5" cols="50" name="content">"${view.content}"</textarea><br/>
		
		
	</form>

	<div>
		<a href="/board/modify?bno=${view.bno}">�Խù� ����</a>
	</div>
	<a href="/board/delete?bno=${view.bno}">�Խù� ����</a>
</body>
</html>