<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form commandName="boardCommand" action="/Farm/main/board/testWrite.sf">
	<table>	
		<tr>
			<td>
				작성자 : <form:input path="writer" size="10px"/>
				<form:errors path="writer"/>
			</td>
		</tr>
		<tr>
			<td>
				시간 : <form:input type="date" path="reg_date" size="10px"/>
				<form:errors path="reg_date"/>
			</td>
		</tr>
		<tr>
			<td>
				제목 : <form:input path="subject"/>
				<form:errors path="subject"/>
			</td>
		</tr>
		<tr>
			<td>
				<form:textarea path="content"/>
				<form:errors path="content"/>
			</td>
		</tr>
	</table>
	<input type="submit" value="입력">
	<a href="/Farm/main/board/boardMain.sf?page=1">목록으로</a>
</form:form>
</body>
</html>