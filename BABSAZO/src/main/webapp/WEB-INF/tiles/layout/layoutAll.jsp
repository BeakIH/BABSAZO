<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>​
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<tiles:insertAttribute name="include" />
</head>
<body>
	<div class="mainSection">

		<div>
			<tiles:insertAttribute name="header"
				value="/tiles/tile/HeaderFooter.jsp" />
		</div>

		<div class="left">
			<tiles:insertAttribute name="sideMenu" 
				value="/tiles/tile/sideMenuBar.jsp"/>
		</div>

		<%-- 	
			
		<div class="main">
			<tiles:insertAttribute name="main" />
		</div>

		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div> 
		
		--%>

	</div>
</body>
</html>

