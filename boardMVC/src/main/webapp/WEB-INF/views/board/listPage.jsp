<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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

<div>
 <c:forEach begin="1" end="${pageNum}" var="num">
    <span>
     <a href="/board/listPage?num=${num}">${num}</a>
  </span>
 </c:forEach>
</div>
</body>
</html>