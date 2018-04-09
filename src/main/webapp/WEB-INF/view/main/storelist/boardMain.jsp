<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 메인</title>
</head>
<body>
<form:form commandName="boardCommand">
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
		</tr>
		<c:forEach items="${boardListInPage}" var="boardList" begin="0">
			<tr>
				<td>${boardList.num}</td>
				<td><a href="/Farm/main/board/boardMainDetail.sf?boardNum=${boardList.num}">${boardList.subject}</a></td>
				<td>${boardList.writer}</td>
				<td><fmt:formatDate value="${boardList.reg_date}" pattern="yyyy-MM-dd"/></td>
			</tr>		
		</c:forEach>				
	</table>
	<c:if test="${startPage>1}">
		<span><a href="/Farm/main/board/boardMain.sf?page=${startPage-1}">이전</a></span>
	</c:if>
	<c:forEach begin="${startPage}" end="${endPage}" varStatus="page">
		<span><a href="/Farm/main/board/boardMain.sf?page=${page.index}">[${page.index}]</a></span>
	</c:forEach>
	<c:if test="${maxPage > endPage}">
		<span><a href="/Farm/main/board/boardMain.sf?page=${endPage+1}">다음</a></span>
	</c:if>
	<br>
	<input type="button" value="글쓰기" onclick="location.href='/Farm/main/board/boardWriteForm.sf'">
	<a href="/Farm/main/board/test.sf">시간 테스트</a>
</form:form>
</body>
</html>