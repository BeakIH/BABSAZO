<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 페이지</title>
</head>
<body>
<form:form commandName="boardCommand">
	<table>
		<tr>
			<td>no.<form:input path="num" readonly="true" size="10px"/></td>
			<td>작성자 : <form:input path="writer" readonly="true" size="10px"/></td>
			<td>작성(수정)일 : <form:input path="reg_date" readonly="true" size="10px"/></td>
		</tr>
		<tr>
			<td>
				제목 : <form:input path="subject"/>
				<form:errors path="subject"/>
			</td>
		</tr>
		<tr>
			<td><form:textarea path="content"/></td>
		</tr>
	</table>
	<input type="submit" value="수정"/>
	<a href="/Farm/main/board/boardDelete.sf?boardNum=${boardCommand.num}">삭제</a>
	<a href="/Farm/main/board/boardMain.sf?page=1">목록으로</a>
</form:form>
</body>
</html>