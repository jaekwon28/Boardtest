<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>

		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td>${list.title}</td>
				<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
				<td>
					<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />
				</td>
				<td>${list.wirter}</td>
				<td>${list.viewCnt}</td>
			</tr>
		</c:forEach>
	</table>	
		<a href="/board/writer">게시물 작성</a>
</body>
</html>