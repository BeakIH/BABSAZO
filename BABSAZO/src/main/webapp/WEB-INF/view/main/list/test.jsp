<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/style.css?ver=7"
	rel="stylesheet">
</head>
<body>
 <p>메인 콘텐츠입니다. Lightbox를 표시하려면<a href="#open">여기</a>를 클릭하십시오.</p>
    <div class="white_content" id="open">
        <div>
            <p>Lightbox 콘텐츠입니다. <a href="#close">닫기</a></p>
        </div>
    </div>
</body>
</html>