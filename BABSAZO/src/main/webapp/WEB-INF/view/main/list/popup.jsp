<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 팝업기능 -->
<script>
function setCookie(name, value, expiredays){
	var todayDate = new Date();
		todayDate.setDate (todayDate.getDate() + expiredays);
		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	}

	function closePop(){
		if (document.frm.pop.checked){
		setCookie("popname", "done", 1);
	}
	self.close();
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form name="frm">
			<div class="PopupWindow">
				<div class="PopupButton">
					<!-- 이부분을 이벤트페이지에 연결하면됨 -->
					<a onClick="opener.location.href='http://naver.co.kr'; self.close();" target="_blank">
					<img src="${pageContext.request.contextPath}/resources/img/naver.jpg" style="width:300px; height:360px;"></a>
				</div>
				<div class="PopupBottom" style="background-color:gray; width:300px; color:white;"> 
					<input class="PopupCheck" type='checkbox' name='pop' onClick='closePop()'>오늘 하루 보지않기
					<!-- <div class="PopupText">오늘 하루 보지않기</div> -->
				</div>
			</div>
		</form>
</body>
</html>