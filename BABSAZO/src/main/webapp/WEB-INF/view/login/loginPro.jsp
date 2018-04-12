<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- <c:set var="idfalse" value="<script type='text/javascript'> alert('아이디를 확인해주세요.');</script>"/> --%>
<c:set var="passfalse" value="<script type='text/javascript'> alert('비밀번호를 확인해주세요.');</script>"/>
<c:set var="maneger" value="<script type='text/javascript'> alert('관리자로 로그인합니다. ${name} 님 환영합니다.');</script>"/>

<c:set var="normal" value="<script type='text/javascript'> alert('${name} 님 환영합니다.');</script>"/>
<c:set var="check" value="${check}"/>
<c:choose>
	 
	<c:when test= "${check==0}">
		<c:out value="${passfalse}" escapeXml = "false" />
		<meta http-equiv ="refresh" content="0;URL ='/SemiProject/jsp/member/SigninCon.jsp'">
	</c:when>
	
	<c:when test= "${check==1}">
		<c:out value="${normal}" escapeXml = "false" />
		<c:if test="${url != null}">
		<meta http-equiv="refresh" content="0;URL='${url}'">  
		</c:if>
		<c:if test="${url==null}">
		<meta http-equiv="refresh" content="0;URL='/SemiProject/jsp/storeList/list.do'"> 
		</c:if>
	</c:when>
	
	<c:when test= "${check==2}">
		<c:out value="${maneger}" escapeXml = "false" />
		<meta http-equiv="refresh" content="0;URL='/SemiProject/jsp/admin/bookingList.jsp?store_no=${storeNo}'">
	</c:when>
	
	<c:when test= "${check==3}">
		<c:out value="${idfalse}" escapeXml = "false" />
		<meta http-equiv="refresh" content="0;URL='/SemiProject/jsp/member/JoinYeah.jsp'">
	</c:when>
	
</c:choose>
