<%@ page contentType="text/html; charset=UTF-8"%>

<!-- jsp 설정들  ============== list.jsp 참조 -->
<%-- <%@ page import="list.ListDBBean"%>
<%@ page import="list.ListDataBean"%> --%>
<%@ page import="java.util.List"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!-- jsp 설정들  ============== -->

<!DOCTYPE html>
<html lang="en">
<!-- 언어 설정 -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>밥은 먹고 다니니</title>

<!-- Bootstrap -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/selectric/selectric.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/aos/aos.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/Magnific-Popup/magnific-popup.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/style.css?ver=6"
	rel="stylesheet">
<!-- 별점 -->
<link
	href="${pageContext.request.contextPath}/resources/css/star.css?ver=2"
	rel="stylesheet">
<!-- 모달창 -->
<link
	href="${pageContext.request.contextPath}/resources/css/listmodal.css"
	rel="stylesheet">


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="${pageContext.request.contextPath}/resources/lib/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/selectric/jquery.selectric.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/aos/aos.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/sidr/jquery.sidr.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/lib.js"></script>


<!-- 나중에 아래쪽 script 문 따로 .js 파일 생성해서 정리해야함 -->
<script>
	/* 넘겨준 파라미터값을 받아오는 펑션 */
	var getParameters = function(paramName) {
		// 리턴값을 위한 변수 선언
		var returnValue;

		// 현재 URL 가져오기
		var url = location.href;

		// get 파라미터 값을 가져올 수 있는 ? 를 기점으로 slice 한 후 split 으로 나눔
		var parameters = (url.slice(url.indexOf('?') + 1, url.length))
				.split('&');

		// 나누어진 값의 비교를 통해 paramName 으로 요청된 데이터의 값만 return
		for (var i = 0; i < parameters.length; i++) {
			var varName = parameters[i].split('=')[0];
			if (varName.toUpperCase() == paramName.toUpperCase()) {
				returnValue = parameters[i].split('=')[1];
				return decodeURIComponent(returnValue);
			}
		}
	};
	/* 넘겨준 파라미터값을 받아오는 펑션  end */

	$(function() {
		if (getParameters('searchn') == undefined
				|| getParameters('search') == undefined) {
			/* alert('아무것도안함'); */
		} else {
			if (getParameters('searchn') == 1) {
				$('.selectric span.label').text('가게명');
				// 보류 , 아래에 class 속성을 줘야함
				$('.col-sm-7 div.form-group')
						.attr(
								"class",
								"selectric-wrapper selectric-form-control selectric-form-control-lg selectric-ui-select selectric-below");
				$('.selectric-items div.selectric-scroll ul li[data-index=0]')
						.attr("class", "highlighted");
				$('.selectric-items div.selectric-scroll ul li[data-index=1]')
						.attr("class", "last selected");
			}
		}
	});

	/* 검색창 카테고리 변경시 placeholder 변경 */
	$(function() {
		$('.form-group select#mCategory').change(
				function() {
					if (($(this).val()) == 0) {// 카테고리 음식
						$('.form-group input#cCategory').attr("placeholder",
								"ex) 자장면, 김치찌개, 파스타").placeholder();
					} else if (($(this).val()) == 1) {// 카테고리 가게
						$('.form-group input#cCategory').attr("placeholder",
								"ex) 엘본 더 테이블, 경화루, 라연").placeholder();
					}
				});
	});

	/* 좌측 가격입력시 이벤트 처리 // 포커스 아웃시에 이벤트 발생  */
	$(function() {
		$('.form-group input#min').change(
				function() {
					if ($('.form-group input#max').val() == null
							|| $('.form-group input#max').val() == "") {
						$('.form-group input#max').focus();
					} else {
						if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) {// 금액을 제외한 전체 파라미터가 존재하는경우
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined) {// 층을 제외한 파라미터 전체
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search');
						} else if (getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) { // cde
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) {// bde
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm')
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search')
									+ '&floor_no=' + getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined
								&& getParameters('floor_no') != undefined) { // bce
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined) {// bc
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('cate_nm') != undefined) {
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm')
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('floor_no') != undefined) { // abe
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search')
									+ '&floor_no=' + getParameters('floor_no');
						} else if (getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined) {//acd
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm');
						} else if (getParameters('sortValue') != undefined
								&& getParameters('floor_no') != undefined) {//ace	
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) {//ade
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm')
									+ '&floor_no=' + getParameters('floor_no');
							/* 여기부터는 금액 + 나머지 하나씩인경우 */
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined) {// ab
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search');
						} else if (getParameters('sortValue') != undefined) {//ac
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue');
						} else if (getParameters('cate_nm') != undefined) {//ad
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm');
						} else if (getParameters('floor_no') != undefined) {// ae
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&floor_no=' + getParameters('floor_no');
						} else {// 가격만 입력받은 경우
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val();
						}
					}
				});
	});

	$(function() {
		$('.form-group input#max').change(
				function() {
					if ($('.form-group input#min').val() == null
							|| $('.form-group input#min').val() == "") {
						$('.form-group input#min').focus();
					} else {
						if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) {// 금액을 제외한 전체 파라미터가 존재하는경우
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined) {// 층을 제외한 파라미터 전체
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search');
						} else if (getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) { // cde
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) {// bde
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm')
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search')
									+ '&floor_no=' + getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined
								&& getParameters('floor_no') != undefined) { // bce
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('sortValue') != undefined) {// bc
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&searchn='
									+ getParameters('searchn') + '&search='
									+ getParameters('search');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('cate_nm') != undefined) {
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm')
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search');
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined
								&& getParameters('floor_no') != undefined) { // abe
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search')
									+ '&floor_no=' + getParameters('floor_no');
						} else if (getParameters('sortValue') != undefined
								&& getParameters('cate_nm') != undefined) {//acd
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&cate_nm='
									+ getParameters('cate_nm');
						} else if (getParameters('sortValue') != undefined
								&& getParameters('floor_no') != undefined) {//ace	
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue') + '&floor_no='
									+ getParameters('floor_no');
						} else if (getParameters('cate_nm') != undefined
								&& getParameters('floor_no') != undefined) {//ade
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm')
									+ '&floor_no=' + getParameters('floor_no');
							/* 여기부터는 금액 + 나머지 하나씩인경우 */
						} else if (getParameters('searchn') != undefined
								&& getParameters('search') != undefined) {// ab
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&searchn=' + getParameters('searchn')
									+ '&search=' + getParameters('search');
						} else if (getParameters('sortValue') != undefined) {//ac
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&sortValue='
									+ getParameters('sortValue');
						} else if (getParameters('cate_nm') != undefined) {//ad
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&cate_nm=' + getParameters('cate_nm');
						} else if (getParameters('floor_no') != undefined) {// ae
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val()
									+ '&floor_no=' + getParameters('floor_no');
						} else {// 가격만 입력받은 경우
							location.href = 'list.do?maxSal='
									+ $('.form-group input#max').val()
									+ '&minSal='
									+ $('.form-group input#min').val();
						}
					}
				});
	});

	/* 숫자만 입력받음 */

	function numCheck(event) {
		event.target.value = event.target.value.replace(/[^0-9]/g, '');
	}

	/* 체크박스 선택시 이벤트 // 중복선택시 계속해서 파라미터 추가  혹은 한번씩만 선택가능하게  */

	$(document).ready(function() {
		$('input:checkbox[name="CATE_NM"]').each(function() {
			/* if (this.value == "${cateName}") { */
			if (this.value == getParameters('cate_nm')) {
				this.checked = true;
			}
		});
	});

	$(function() {
		$(".checkbox#food input").click(
				function() {
					// 이부분은 필요없음 (어차피 리다이렉트처리되기때문 )//////
					$(".checkbox#food input").attr("checked", false); // 모든 대상의 체크를 해제
					$(this).attr("checked", true); // 클릭한 대상만 체크
					/* 
						왜있는지 이해가 잘 안가는 코드 두줄
					$(this).val();
					location.href='list.do?cate_nm='+$(this).val(); 
					 */

					if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined
							&& getParameters('floor_no') != undefined) {//
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined) {//
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('sortValue') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&sortValue=' + getParameters('sortValue')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('floor_no') != undefined) {//
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined) { // 여기
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('sortValue') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('floor_no') != undefined) {// be
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined) {//cd
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('sortValue') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&sortValue=' + getParameters('sortValue')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal');
					} else if (getParameters('sortValue') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('floor_no') != undefined) {
						location.href = 'list.do?cate_nm=' + $(this).val()
								+ '&floor_no=' + getParameters('floor_no');
					} else {// 음식만을 선택했을시 발생
						location.href = 'list.do?cate_nm=' + $(this).val();
					}
				});
	});

	$(function() {
		$('input[type="checkbox"]').bind('click', function() {
			$('input[type="checkbox"]').not(this).prop("checked", false);
		});
	});

	$(document).ready(function() {
		$('input:checkbox[name="floor_no"]').each(function() {
			if (this.value == getParameters('floor_no')) {//88
				this.checked = true;
			}
		});
	});

	$(function() {
		$(".checkbox#floor input").click(
				function() {
					$(".checkbox#floor input").attr("checked", false); // 모든 대상의 체크를 해제
					$(this).attr("checked", true); // 클릭한 대상만 체크
					$(this).val();

					if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined
							&& getParameters('cate_nm') != undefined) {//
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined) {//
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined
							&& getParameters('cate_nm') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('sortValue') != undefined
							&& getParameters('cate_nm') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&sortValue=' + getParameters('sortValue')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('cate_nm') != undefined) {//
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined) { // 여기
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('sortValue') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('cate_nm') != undefined) {// be
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('sortValue') != undefined) {//cd
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('cate_nm') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('sortValue') != undefined
							&& getParameters('cate_nm') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&sortValue=' + getParameters('sortValue')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&searchn=' + getParameters('searchn')
								+ '&search=' + getParameters('search');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal');
					} else if (getParameters('sortValue') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&sortValue=' + getParameters('sortValue');
					} else if (getParameters('cate_nm') != undefined) {
						location.href = 'list.do?floor_no=' + $(this).val()
								+ '&cate_nm=' + getParameters('cate_nm');
					} else {// 
						location.href = 'list.do?floor_no=' + $(this).val();
					}
				});
	});

	$(function() {
		$('input[type="checkbox"]').bind('click', function() {
			$('input[type="checkbox"]').not(this).prop("checked", false);
		});
	});

	/* 정렬옵션 선택시 기존검색한 상태로 정렬하는지 아닌지 판별하는 펑션 */
	/* $(document).ready(function() {
		$('option:select[name="sortValue"]').each(function() {
			if (this.value == getParameters('sortValue')) {//88
				this.selected=true;
			}
		});
	}); */
	
	$(function() {
		$('#sort-category').change(
				function() {
					if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('cate_nm') != undefined
							&& getParameters('floor_no') != undefined) {// 모든 항목이 선택된 경우에서의 정렬
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&cate_nm=' + getParameters('cate_nm')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('cate_nm') != undefined) {//
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('cate_nm') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&cate_nm=' + getParameters('cate_nm')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('cate_nm') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&cate_nm=' + getParameters('cate_nm')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('floor_no') != undefined) {//
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('cate_nm') != undefined) {//
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined
							&& getParameters('floor_no') != undefined) {//
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('cate_nm') != undefined) {// 
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined
							&& getParameters('floor_no') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('cate_nm') != undefined
							&& getParameters('floor_no') != undefined) {//여기
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&cate_nm=' + getParameters('cate_nm')
								+ '&floor_no=' + getParameters('floor_no');
					} else if (getParameters('search') != undefined
							&& getParameters('searchn') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&search=' + getParameters('search')
								+ '&searchn=' + getParameters('searchn');
					} else if (getParameters('maxSal') != undefined
							&& getParameters('minSal') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&maxSal=' + getParameters('maxSal')
								+ '&minSal=' + getParameters('minSal');
					} else if (getParameters('cate_nm') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&cate_nm=' + getParameters('cate_nm');
					} else if (getParameters('floor_no') != undefined) {
						location.href = 'list.do?sortValue=' + $(this).val()
								+ '&floor_no=' + getParameters('floor_no');
					} else {// 모든 값에 대한 정렬 ( 항목선택 x )
						location.href = 'list.do?sortValue=' + $(this).val();
					}
				});
	});
	
	/* 별점 */
	
	$.fn.generateStars = function() {
		return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
	};
	
	// 숫자 평점을 별로 변환하도록 호출하는 함수
	$(function(){
		$('.star-prototype').generateStars();
	});

	
	/* 상세정보를 가져오기 위함 */
	/* function getDetailData(store_no){
		alert('확인');
	}
	*/
	
	$(function(){
		$(".dateBtn").click(function(){
			alert($(this).attr("title"));
			$.ajax({
				url:"/BABSAZO/main/list/detail.do",
				type:"POST",
				cache:false,
				data:"store_no="+$(this).attr("title"),
				dataType:"json",
				success:function(data){
					$("#store_no").html("");
					$("#store_no").append('<span>'+data.oneList[0].store_no+'</span>'); 
					$("#store_nm").html("");
					$("#store_nm").append('<span>'+data.oneList[0].store_nm+'</span>'); 
				},
				error:function(data){
					alert("실패");					
				}
				});
			});	
		});
	
		
</script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="main">
		<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
			<div class="container">
				<a class="navbar-brand" href="main.do"><img
					src="${pageContext.request.contextPath}/resources/img/밥사조로고.png"
					alt="Smiley face" height="50" width="90"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#menu-content" aria-controls="menu-content"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="menu-content">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								밥사조 <span class="sr-only">(current)</span>
						</a>
							<div class="dropdown-menu">
								<a href="main.do" class="dropdown-item">밥사조 이야기</a> <a
									href="main.do" class="dropdown-item">밥사조 식구들</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								조회 </a>
							<div class="dropdown-menu">
								<a href="list.do" class="dropdown-item">목록보기</a>
								<!-- <a href="property_grid.html" class="dropdown-item">Grid View</a>
            <a href="property_listing_map.html" class="dropdown-item">Map View</a>
            <a href="property_single.html" class="dropdown-item">Single View 1</a>
            <a href="property_single2.html" class="dropdown-item">Single View 2</a>
            <a href="property_single3.html" class="dropdown-item">Single View 3</a> -->
							</div></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								매장소식 </a>
							<div class="dropdown-menu">
								<a href="../../notice/notice.do" class="dropdown-item">공지사항</a>
								<a href="../sessionMenu/404.do" class="dropdown-item">매장별
									이용후기</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								도움말 </a>
							<div class="dropdown-menu">
								<a href="../sessionMenu/404.do" class="dropdown-item">자주묻는
									질문</a> <a href="../sessionMenu/404.do" class="dropdown-item">
									1:1 문의</a>
							</div></li>
					</ul>

					<ul class="navbar-nav ml-auto">
						<c:choose>
							<c:when test="${check==null}">
								<li class="nav-item dropdown user-account"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <span class="user-image"
										style="background-image: url(' img/demo/profile3.jpg');"></span>
										안녕하세요
								</a>
									<div class="dropdown-menu">
										<a href="main/list/main.do" class="dropdown-item"> <i
											class="fa fa-home"></i> 메인으로
										</a> <a href="main/list/list.do" class="dropdown-item"> <i
											class="fa fa fa-utensils"></i> 매장조회
										</a>
										<!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
										<!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
										<!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
									</div></li>
								<div>
									<button class="btn btn-primary" type="button"
										style="margin-top: 20px"
										onClick="window.location='/SemiProject/jsp/member/SigninCon.do'">
										<i class="fa fa-power-off">&nbsp;</i> 로그인 </a>
									</button>
									<!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button> -->
									<!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
								</div>
					</ul>

				</div>
			</div>
		</nav>
		</c:when>
		<c:when test="${check == 1 }">
			<li class="nav-item dropdown user-account"><a
				class="nav-link dropdown-toggle" href="#" role="button"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="user-image"
					style="background-image: url(' img/demo/profile3.jpg');"></span>
					${name}님, 어서오세요
			</a>
				<div class="dropdown-menu">
					<a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item"><i
						class="fa fa-bell"></i> 내 예약보기 </a> <a
						href="/SemiProject/jsp/sessionMenu/MyCoupon.do"
						class="dropdown-item"><i class="fa fa-fw fa-address-book"></i>
						내 쿠폰보기 <a> <a href="/SemiProject/jsp/sessionMenu/404.do"
							class="dropdown-item"><i class="fa fa-fw fa-thumbs-up"
								size=5px></i> 내가 쓴 글보기 </a> <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
							<!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
							<!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
				</div></li>
			<div>
				<!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button> -->
				<button class="btn btn-primary" type="button"
					style="margin-top: 20px"
					onClick="window.location='/SemiProject/jsp/login/logout.do'">
					<i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a>
				</button>
				<!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
			</div>
			</ul>
	</div>
	</div>
	</nav>
	</c:when>
	<c:when test="${check == 2 }">
		<li class="nav-item dropdown user-account"><a
			class="nav-link dropdown-toggle" href="#" role="button"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="user-image"
				style="background-image: url(' img/demo/profile3.jpg');"></span>관리자
				${name}님, 어서오세요
		</a>
			<div class="dropdown-menu">
				<a href="/SemiProject/jsp/admin/bookingList.do?store_no=${storeNo }"
					class="dropdown-item"><i class="fa fa-bell"></i> 예약현황 </a> <a
					href="/SemiProject/jsp/admin/management_list.do?store_no=${storeNo }"
					class="dropdown-item"><i class="fa fa-fw fa-address-book"></i>
					직원조회 <a> <a href="/SemiProject/jsp/sessionMenu/404.do"
						class="dropdown-item"><i class="fa fa-fw fa-thumbs-up"
							size=5px></i> 우리매장후기 </a> <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
						<!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
						<!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
			</div></li>
		<div>
			<!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button> -->
			<button class="btn btn-primary" type="button"
				style="margin-top: 20px"
				onClick="window.location='/SemiProject/jsp/login/logout.do'">
				<i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a>
			</button>
			<!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
		</div>
		</ul>
		</div>
		</div>
		</nav>
	</c:when>
	</c:choose>
	<div class="container">
		<form>
			<!-- 나중에 method 속성값 post로 -->
			<div class="search-form">
				<div class="card">
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<c:set var="numberAsString">${search }</c:set>
								<c:choose>
									<c:when test="${numberAsString.matches('[0-9]+')}">
										<!-- 숫자인경우 value값을 찍어주지 않기위해 -->
										<input type="text" class="form-control form-control-lg"
											id="cCategory" name="search" placeholder="ex) 자장면, 김치찌개, 파스타"
											value="">
									</c:when>
									<c:otherwise>
										<!-- 숫자가 아닌경우 검색어를 검색창에 표시해줌 -->
										<input type="text" class="form-control form-control-lg"
											id="cCategory" name="search" placeholder="ex) 자장면, 김치찌개, 파스타"
											value=${search }>
									</c:otherwise>
								</c:choose>
								<!-- 여기 수정중  search값이 숫자인경우에는 받아오면안되거나 빈값으로 초기화-->
							</div>
						</div>
						<div class="col-lg-6">
							<div class="row">
								<div class="col-sm-7">
									<!-- 여기 폼테그 원래 자리 -->
									<div class="form-group">
										<select class="form-control form-control-lg ui-select"
											id="mCategory" name="searchn"
											data-placeholder="Property Type">
											<!-- 데이터 플레이스홀더 -->
											<option value="0" id="fd">음식명</option>
											<option value="1" id="st">가게명</option>
											<!-- <option value="2" id="lc">층별</option> -->
										</select>
									</div>
								</div>
								<div class="col-sm-5">
									<!-- 폼 테그 추가함 -->
									<div class="form-group">
										<button type="submit" class="btn btn-lg btn-primary btn-block">검색하기</button>
									</div>
								</div>
		</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col col-lg-12 col-xl-10">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">홈</a></li>
						<li class="breadcrumb-item"><a href="#">매장 리스트</a></li>
					</ol>
				</nav>
				<div class="page-header">
					<h1>매장 리스트</h1>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col col-lg-12 col-xl-10">
					<div class="row has-sidebar">
						<div class="col-md-4 col-lg-3">
							<button id="toggle-filters"
								class="btn btn-primary btn-circle mobile-filter">
								<i class="fa fa-filter"></i>
							</button>
							<div id="sidebar" class="sidebar-left">
								<button class="close-panel btn btn-white">
									<i class="fa fa-long-arrow-left"></i>
								</button>
								<div class="sidebar_inner">
									<div id="filters">
										<!-- 금액 입력란 -->
										<div class="card">
											<div class="card-header">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#p_budget"
														aria-expanded="true" aria-controls="p_type"> 금액 <i
														class="fa fa-caret-down float-right"></i>
													</a>
												</h4>
											</div>
											<div id="p_budget" class="panel-collapse collapse"
												role="tabpanel">
												<div class="card-body">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<input type="text" class="form-control input-sm"
																	id="min" placeholder="최소"
																	onKeydown="return numCheck(event);"
																	onkeyup="numCheck(event)" style="ime-mode: disabled">
																<!-- 최소금액  : 넣을지 안넣을지는 생각해봐야할듯-->
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<input type="text" class="form-control input-sm"
																	id="max" placeholder="최대"
																	onKeydown="return numCheck(event);"
																	onkeyup="numCheck(event)" style="ime-mode: disabled">
																<!-- 최대금액 -->
															</div>
														</div>
													</div>
													<!-- <p>원 단위로 입력해 주세요.</p> -->
												</div>
											</div>
										</div>
										<!-- 음식종류 -->
										<div class="card">
											<div class="card-header">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#p_type"
														aria-expanded="true" aria-controls="p_type"> 음식 종류 선택
														<i class="fa fa-caret-down float-right"></i>
													</a>
												</h4>
											</div>
											<div id="p_type" class="panel-collapse collapse show"
												role="tabpanel">
												<div class="card-body">
													<div class="checkbox" id="food">
														<!-- value 값으로 판별해도 괜찮고 생각해봐야할듯 -->
														<!-- CATE_NM 파라미터에 값을 넘겨줘야함  -->
														<input type="checkbox" name="CATE_NM" value="0" id="house">
														<label for="house">한식</label>
													</div>
													<div class="checkbox" id="food">
														<input type="checkbox" name="CATE_NM" value="1" id="flat">
														<label for="flat">양식</label>
													</div>
													<div class="checkbox" id="food">
														<input type="checkbox" name="CATE_NM" value="2"
															id="appartment"> <label for="appartment">중식</label>
													</div>
													<div class="checkbox" id="food">
														<input type="checkbox" name="CATE_NM" value="3" id="farms">
														<label for="farms">일식</label>
													</div>
												</div>
											</div>
										</div>
										<!-- 층별 -->
										<div class="card">
											<div class="card-header">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#f_type"
														aria-expanded="true" aria-controls="f_type"> 각 층별 점포보기
														<i class="fa fa-caret-down float-right"></i>
													</a>
												</h4>
											</div>
											<div id="f_type" class="panel-collapse collapse show"
												role="tabpanel">
												<div class="card-body">
													<div class="checkbox" id="floor">
														<!-- value 값으로 판별해도 괜찮고 생각해봐야할듯 -->
														<!-- CATE_NM 파라미터에 값을 넘겨줘야함  -->
														<input type="checkbox" name="floor_no" value="1"
															id="1floor"> <label for="1floor">1층</label>
													</div>
													<div class="checkbox" id="floor">
														<input type="checkbox" name="floor_no" value="2"
															id="2floor"> <label for="2floor">2층</label>
													</div>
													<div class="checkbox" id="floor">
														<input type="checkbox" name="floor_no" value="3"
															id="3floor"> <label for="3floor">3층</label>
													</div>
													<div class="checkbox" id="floor">
														<input type="checkbox" name="floor_no" value="4"
															id="4floor"> <label for="4floor">4층</label>
													</div>
												</div>
											</div>
										</div>
										<!-- 여기 걸어보자 -->
											<img src="${pageContext.request.contextPath}/resources/img/testbanner.gif" style="max-width: 100%; height: auto;">
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8 col-lg-9">
							<div class="sorting">
								<div class="row justify-content-between">
									<div class="col-sm-5 col-md-5 col-lg-4 col-xl-3">
										<div class="form-group">
											<!-- 셀렉트박스 이벤트  -->
											<!-- 폼 추가 -->
											<!-- <form name="t_table" method="get" action="list.do" taget="targetFrame"> -->
											<!-- <form name="t_table" method="get" action="list.do">  원본 -->
											<form name="t_table" method="get">
												<!-- action 태그 명시안하면 자기자신에게로 보냄 -->
												<select name="sortValue" class="form-control ui-select"
													id="sort-category">
													<option selected="selected">정렬옵션</option>
													<option value="0">높은 가격순</option>
													<option value="1">낮은 가격순</option>
													<option value="2">인기순</option>
													<option value="3">잔여석순</option>
												</select>
											</form>
										</div>
									</div>
									<div class="col-sm-6 col-md-5 col-lg-4 col-xl-3">
										<!-- 글쓰기버튼의 a 태그에 속성주기 -->
										<div class="btn-group float-right" role="group">
											<a href="writeForm.jsp"></a><a href="list.do"
												class="btn btn-light active" style="z-index:0;"><i class="fa fa-bars"></i></a>
										</div>
									</div>
								</div>
							</div>
							<c:choose>
								<c:when test="${detailListCount == 0}">
									<table width="700" border="1" cellpadding="0" cellspacing="0">
										<tr>
											<p style="text-align: center;">
											<img src="${pageContext.request.contextPath}/resources/img/lionsearch.gif"
																class="img-fluid" alt="">
											</p>
											<div class="page-header">
											<center>
											<h1 text-align:center>검색 결과가 없습니다.</h1>
											</center>
											</div>
																
										</tr>
									</table>
								</c:when>
								<c:otherwise>
									<div class="clearfix"></div>
									<c:forEach items="${storeListInPage}" var="storeList" begin="0">
										<div class="item-listing list">
											<div class="item" data-aos="fade-up">
												<div class="row">
													<div class="col-lg-5">
														<!-- 리스트 페이지에서 보여지는 작은 이미지 관련 html 설정 -->
														<!--이부분에 article.getStore_uri() -->
														<!-- 여기에 걸린 페이지에서 특정 파라미터를 받아서 검색하는 메서드를 실행하고 dto에 저장하고 그값을 articleList에 저장해서 리턴함-->
														<!-- 리턴받은 페이지에 내가만든 list(list) 페이지같은 기능을해서 받은 값을 뿌려주는식으로하면 틀이 하나만 있어도 가능 -->
														<!-- Store_uri 컬럼에  list_info.do 값으로 통일시켜서 넣음-->
														<div class="item-image">
															<%-- <a href="list_info.do?store_no=${storeList.store_no }"><img --%>
															<a  href="#open" title="${storeList.store_no}" class ="dateBtn"><img
																src="${pageContext.request.contextPath}${storeList.simg_root}"
																class="img-fluid" alt=""> <%-- src="${pageContext.request.contextPath}/resources/img/store_img/store_layuen.jpg" class="img-fluid" alt=""> --%>
																<%-- src="${pageContext.request.contextPath}/resources/img/store_img/1004.jpg" class="img-fluid" alt=""> --%>
																<div class="item-badges">
																	<!-- 남은좌석에 따라 달리보여줌 -->
																	<c:choose>
																		<%-- <c:when test="${article.avl_tbl_cnt>0 && article.avl_tbl_cnt <=40 } ">
																	<div class="item-badge-left-fail"><font color="red">예약불가</font></div>
																</c:when> --%>

																		<c:when
																			test="${storeList.cur_tbl_cnt>0 && storeList.cur_tbl_cnt <=5 }">
																			<div class="item-badge-left-fail">
																				<font color="white">예약불가</font>
																			</div>
																		</c:when>
																		<c:otherwise>
																			<div class="item-badge-left">
																				<font color="white">예약가능</font>
																			</div>
																		</c:otherwise>
																	</c:choose>
																	<div class="item-badge-right">세일 중</div>
																	<!-- 오른쪽 상자, 빼도됨 -->
																</div>
																<div class="item-meta">
																	<div class="item-price">${storeList.avg_price }원선
																		<!-- <small>09 : 00 open / 22 : 00 close </small> -->
																		<small><div>${storeList.store_exp }</div></small>
																	</div>
																</div> </a>
															<!-- 북마크 기능 버튼  -->
															<!-- 
													파이널때 기능추가  
													북마크 버튼을 누르면 특정 테이블에 올라가서 개인 북마크 메뉴 누르면 북마크된 점포 목록이 보이도록하기
													특정 테이블에 
													-->

															<!-- <a class="save-item" id="bookmark"><i class="fa fa-star"></i></a> -->
														</div>
													</div>
													<div class="col-lg-7">
														<div class="item-info">
															<h3 class="item-title">
																<%-- <a href="list_info.do?store_no=${storeList.store_no }">${storeList.store_nm }</a> --%>
																<a href="#open">${storeList.store_nm }</a>
															</h3>
															<!-- 가게명  -->
															<div class="item-location">
																<i class="fa fa-map-marker"></i>${storeList.store_floor }층</div>
															<!-- 위치  -->
															<div class="item-details-i">
																<span class="bedrooms" data-toggle="tooltip"
																	title="유아용 좌석"> <!-- 값이 보여질 공간  --> <i
																	class="fa fa-bed"></i>
																</span> <span class="bathrooms" data-toggle="tooltip"
																	title="스터디 가능"> <!-- 값이 보여질 공간  --> <i
																	class="fa fa-bath"></i>
																</span>
															</div>
															<div class="item-details">
																<ul>
																	<li>전화번호 <span>${storeList.store_tel }</span></li>
																	<li>종류 <span>${storeList.cate_nm }</span></li>
																	<li>인기도 
																	<c:choose>
																	<c:when test="${storeList.preference >0 && storeList.preference <= 20}">
																		<span class="star-prototype">1</span>
																	</c:when>
																	<c:when test="${storeList.preference >20 && storeList.preference <= 40}">
																		<span class="star-prototype">2</span>
																	</c:when>
																	<c:when test="${storeList.preference >40 && storeList.preference <= 60}">
																		<span class="star-prototype">3</span>
																	</c:when>
																	<c:when test="${storeList.preference >60 && storeList.preference <= 80}">
																		<span class="star-prototype">4</span>
																	</c:when>
																	<c:when test="${storeList.preference >80 && storeList.preference <= 100}">
																		<span class="star-prototype">5</span>
																	</c:when>
																	</c:choose>
																	</li>
																</ul>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="added-on">2011년 개점</div>
																<!-- 여기에대한 칼럼 추가하거나 이 틀자체를 제외하기  -->

															</div>
															<div class="col-md-6">
																<a href="#" class="added-by">by ${storeList.emp_nm }</a>

															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
										<!-- 목록 틀 -->
									</c:forEach>
								</c:otherwise>
							</c:choose>
							<!-- 페이징 -->
							<nav aria-label="Page navigation">
								<ul class="pagination">
									<%-- <c:if test="${startPage>1}"> --%>
									<c:if test="${detailListCount>0 }">
										<li class="page-item"><a class="page-link"
													href="/BABSAZO/main/list/list.do?page=${startPage}"><font size="20px">&laquo;</font></a></li>
									</c:if>
									<%-- </c:if> --%>

									<c:forEach begin="${startPage}" end="${endPage}"
										varStatus="page">
										<c:choose>
											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getSortValue() != -1 && searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item"><a class="page-link"
												href="/BABSAZO/main/list/list.do?page=${startPage}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&sortValue=${searchDto.getSortValue()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}"><font size="20px">&laquo;</font></a></li>
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&sortValue=${searchDto.getSortValue()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
												<li class="page-item"><a class="page-link"
												href="/BABSAZO/main/list/list.do?page=${endPage}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&sortValue=${searchDto.getSortValue()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}"><font size="20px">&raquo;</font></a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getSortValue() != -1 && searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&sortValue=${searchDto.getSortValue()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSortValue() != -1 && searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&sortValue=${searchDto.getSortValue()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getSortValue() != -1 && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&sortValue=${searchDto.getSortValue()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getSortValue() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&sortValue=${searchDto.getSortValue()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSortValue() != -1 && searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&sortValue=${searchDto.getSortValue()}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&minSal=${searchDto.getMinSal()}&maxSal=${searchDto.getMaxSal()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSortValue() != -1 && searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&sortValue=${searchDto.getSortValue()}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != '' && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&searchn=${searchDto.getSearchn()}&search=${searchDto.getSearch()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&maxSal=${searchDto.getMaxSal()}&minSal=${searchDto.getMinSal()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSortValue() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&sortValue=${searchDto.getSortValue()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getCate_nm() != -1 && searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&cate_nm=${searchDto.getCate_nm()}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when test="${searchDto.getFloor_no() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&floor_no=${searchDto.getFloor_no()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getSearchn() != -1 && searchDto.getSearch() != ''}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&search=${searchDto.getSearch()}&searchn=${searchDto.getSearchn()}">${page.index}</a></li>
											</c:when>

											<c:when
												test="${searchDto.getMinSal() != -1 && searchDto.getMaxSal() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&maxSal=${searchDto.getMaxSal()}&minSal=${searchDto.getMinSal()}">${page.index}</a></li>
											</c:when>

											<c:when test="${searchDto.getSortValue() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&sortValue=${searchDto.getSortValue()}">${page.index}</a></li>
											</c:when>

											<c:when test="${searchDto.getCate_nm() != -1}">
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}&cate_nm=${searchDto.getCate_nm()}">${page.index}</a></li>
											</c:when>
											
											<c:otherwise>
												<%-- <li class="page-item"><a class="page-link"
													href="/BABSAZO/main/list/list.do?page=${startPage}"><font size="20px">&laquo;</font></a></li> --%>
												<li class="page-item active"><a style="z-index:0;" class="page-link"
													href="/BABSAZO/main/list/list.do?page=${page.index}">${page.index}</a></li>
												<%-- <li class="page-item"><a class="page-link"
													href="/BABSAZO/main/list/list.do?page=${endPage}"><font size="20px">&raquo;</font></a></li> --%>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<%-- <c:if test="${maxPage > endPage}"> --%>
									<c:if test="${detailListCount>0 }">
										<li class="page-item"><a class="page-link"
											href="/BABSAZO/main/list/list.do?page=${endPage}"><font size="20px">&raquo;</font></a></li>
									</c:if>
									<%-- </c:if> --%>
								</ul>
							</nav>
							<!-- 페이징 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact Agent Modal -->
	<div class="modal fade  item-badge-rightm" id="leadform" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="media">
						<!-- 기존값 property/1.jpg -->
						<div class="media-left">
							<a href="property_single.html"><img
								src="img/demo/property/elbon.jpg" class="img-rounded" width="64"
								alt=""></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								Send Message for<br> <small><a
									href="property_single.html">3 bed semi-detached house for
										sale</a></small>
							</h4>
							<ul class="list-unstyled">
								<li><i class="fa fa-map-marker"></i> Kirkstone Road,
									Middlesbrough TS3</li>
								<li><a href="tel:01502392905"><i
										class="fa fa-phone fa-fw" aria-hidden="true"></i> Call: 01502
										392905</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="lead_name">Your Name</label> <input type="text"
								class="form-control" id="lead_name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<label for="lead_email">Your Email</label> <input type="email"
								class="form-control" id="lead_email" placeholder="Your Email">
						</div>
						<div class="form-group">
							<label for="lead_phone">Your Telephone</label> <input type="tel"
								class="form-control" id="lead_phone"
								placeholder="Your Telephone">
						</div>
						<div class="form-group">
							<label for="lead_message">Message</label>
							<textarea rows="4" class="form-control" id="lead_message"
								placeholder="Please include any useful details, i.e. current status, availability for viewings, etc."></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary">Send Message</button>
				</div>
			</div>
		</div>
	</div>
	<button class="btn btn-primary btn-circle" id="to-top">
		<i class="fa fa-angle-up"></i>
	</button>
	<footer id="footer">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col col-md-10">
					<div class="row">
						<div class="col-md-4 col-sm-4">
							<!-- <p><span class="icon-uilove-realestate"></span></p> -->
							<p>
								<span><img
									src="${pageContext.request.contextPath}/resources/img/밥사조로고.png"
									alt="Smiley face" height="60" width="120"></span>
							</p>
							<address>
								<strong>BABSAZO, Inc.</strong><br> 서울특별시 중구 남대문로 120<br>
								대일빌딩3층 D CLASS<br>
								<!-- <abbr title="Phone">P:</abbr> (123) 456-7890 -->
							</address>
							<p class="text-muted">
								Copyright &copy; 2018<br /> All rights reserved
							</p>
						</div>
						<div class="col-md-4  col-sm-4">
							<ul class="list-unstyled">
								<li><a href="#"> About BABSAZO </a></li>
								<li><a href="#"> BABSAZO Introduction </a></li>
							</ul>
						</div>
						<div class="col-md-4 col-sm-12">
							<div class="social-sharebox">
								<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-google"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a> <a href="#"><i
									class="fa fa-pinterest"></i></a>
							</div>
							<form>
								<h4>밥사조 소식 받아보기</h4>
								<div style="z-index:0;" class="input-group input-group-lg">
									<input type="email" class="form-control form-control-lg"
										placeholder="Email Address"> <span
										class="input-group-btn">
										<button class="btn btn-primary" type="button">구독</button>
									</span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	</div>
	<script>
		$(document).ready(function() {
			$('#toggle-filters').sidr({
				side : 'left',
				displace : false,
				renaming : false,
				name : 'sidebar',
				source : function() {
					AOS.refresh();
				},

			});
		});
	</script>
	
	<div class="white_content" id="open">
        <div>
            <p>Lightbox 콘텐츠입니다. <a href="#close">닫기</a></p>
            <%-- <c:forEach items="${oneList}" var="one" begin="0"> --%>
            	<div>
            		<p id ="store_no"></p>
            		<p id ="store_nm"></p>
            		<%-- <p>${oneList.store_no }</p> --%>
            	</div>
            	
        </div>
    </div>
</body>
</html>