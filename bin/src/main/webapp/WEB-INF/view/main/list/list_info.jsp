<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%-- <%@ page import="list.ListDBBean"%>
<%@ page import="list.ListDataBean"%>
 --%>
 <%@ page import="java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*, java.text.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
	
<script src="${pageContext.request.contextPath}/resources/lib/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>

<script type="text/javascript">
$(document).ready(function() { 
	realtimeClock();
});

function realtimeClock() {
	
	$('#realTime').html(getTimeStamp("1"));
	$('#realtimeTd').html(getTimeStamp("2"));
	
	  setTimeout("realtimeClock()", 1000);
	}


	function getTimeStamp(dept) { // 24시간제
	  var d = new Date();

	  var s = "";
	  if(dept == "1"){
	  s =  leadingZeros(d.getFullYear(), 4) + '년 ' +
	    leadingZeros(d.getMonth() + 1, 2) + '월 ' +
	    leadingZeros(d.getDate(), 2) + '일 ' +
	    leadingZeros(d.getHours(), 2) + '시 ' +
	    leadingZeros(d.getMinutes(), 2) + '분 ' +
	    leadingZeros(d.getSeconds(), 2) + "초";
	  }
	  else if(dept == "2"){
		  s = leadingZeros(d.getHours(), 2) + '시 ' +
		    leadingZeros(d.getMinutes(), 2) + '분 ' +
		    leadingZeros(d.getSeconds(), 2) + "초";
	  }
	  return s;
	}


	function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}



     function winOpen(){
    	 var pUrl="reserve.do?store_no="+$('#storeNo').val();
    	 var pName="new";
    	 var sizeX=1050;
    	 var sizeY=670;
    	 var posX=screen.availWidth/2-sizeX/2;
    	 var posY=screen.availHeight/2-sizeY/2;
		 myWin=window.open(pUrl,pName,"width="+sizeX+",height="+sizeY+",top="+posY+",left="+posX);     
		


     
     }
     function winClose() {
 		myWin.close();                                                             
 }
   
   
     /* // 취소 버튼 클릭시 로그인 화면으로 이동
     function goLoginForm() {
         location.href="LoginForm.jsp";
     }      */
     
     function BookFail(){
     	 swal ( " 예약 불가 " , " 죄송합니다,\n 현재 좌석이 없어 예약 하실 수 없습니다. " , "error" )   ; 
      }
     
     function BookFail2(){
    	/*  swal ( " 예약 불가 " , " 죄송합니다,\n 현재 좌석이 없어 예약 하실 수 없습니다. " , "error" )   ; */
    	 alert("로그인 후 이용해 주세요.")
    	 location.href="../member/SigninCon.do?url=/SemiProject/jsp/storeList/list_info.do?store_no="+$('#storeNo').val(); 
    	 
    	 
    	 
     }
</script>

<style>
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

.textSize {
	font-size: 300px;
	line-height: 230px;
	color: #ccc;
}

.mainBox {
	width: 100%;
	height: 70px;
	position: fixed;
	bottom: 5px;
	text-align: center;
}

.inBox {
	display: inline-block;
	width: 150px;
	height: 70px;
	background-color: #666;
	border: 0px solid pink;
	border-radius: 10px;
	line-height: 70px;
	font-size: 30px;
	color: #fff;
	font-weight: bold;
	margin: 0 10px;
	opacity: 0.8;
}

.inBox:hover {
	background-color: #000;
	transition: all linear 1s;
}
</style>

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>밥은 먹고 다니니</title>



<!-- Bootstrap -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/selectric/selectric.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/swiper/css/swiper.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/aos/aos.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/photoswipe/photoswipe.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/lib/photoswipe/default-skin/default-skin.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="${pageContext.request.contextPath}/resources/lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/selectric/jquery.selectric.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/swiper/js/swiper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/aos/aos.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/photoswipe/photoswipe.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/photoswipe/photoswipe-ui-default.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/lib.js"></script>


</head>
<body>

	<div id="main">
<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
  <div class="container">
 
    <a class="navbar-brand" href="/SemiProject/jsp/storeList/main.do"><!-- <span class="icon-uilove-realestate"></span> -->
	 <span><img src="${pageContext.request.contextPath}/resources/img/밥사조로고.png" alt="Smiley face" height="50" width="90"></span>
   <!-- <span><img src="../../img/밥사조4층.png" alt="Smiley face" height="30" width="60"></span> -->
  </a>
  </button>

  <div class="collapse navbar-collapse" id="menu-content">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	밥사조
        <span class="sr-only">(current)</span>
        </a>
        <div class="dropdown-menu">
            <a href="main.do" class="dropdown-item">밥사조 이야기</a>
            <a href="main.do" class="dropdown-item">밥사조 식구들</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         	조회
        </a>
        <div class="dropdown-menu">
            <a href="list.do" class="dropdown-item">목록보기</a>
            <!-- <a href="property_grid.html" class="dropdown-item">Grid View</a>
            <a href="property_listing_map.html" class="dropdown-item">Map View</a>
            <a href="property_single.html" class="dropdown-item">Single View 1</a>
            <a href="property_single2.html" class="dropdown-item">Single View 2</a>
            <a href="property_single3.html" class="dropdown-item">Single View 3</a> -->
        </div>
      </li>
      
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         	매장소식
        </a>
        <div class="dropdown-menu">
            <a href="agent_list.html" class="dropdown-item">공지사항</a>
            <a href="agent.html" class="dropdown-item"> 매장별 이용후기 </a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         	도움말
        </a>
        <div class="dropdown-menu">
            <a href="agent_list.html" class="dropdown-item">자주묻는 질문</a>
            <a href="agent.html" class="dropdown-item"> 1:1 문의</a>
        </div>
      </li>
					</ul>

					<ul class="navbar-nav ml-auto">
      

<c:choose>
<c:when test= "${check==null}">
      <li class="nav-item dropdown user-account">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span> 안녕하세요  </a> 
        <div class="dropdown-menu">
            <a href="/SemiProject/jsp/storeList/main.do" class="dropdown-item"> <i class="fa fa-home"></i> 메인으로 </a>
            <a href="/SemiProject/jsp/storeList/list.do" class="dropdown-item"> <i class="fa fa fa-utensils"></i> 매장조회</a> 
            <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
            <!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
             <!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
        </div>
      </li>
      <div>
      <button class="btn btn-primary" type="button" style="margin-top:20px" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button>
       <!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button> -->
       <!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
		</div>   
    </ul>

				</div>
			</div>
		</nav>
</c:when>
<c:when test = "${check == 1 }">
      <li class="nav-item dropdown user-account">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span> ${name}님, 어서오세요 
        </a>
        <div class="dropdown-menu">
            <a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item"><i class="fa fa-bell"></i> 내 예약보기  </a>
            <a href="/SemiProject/jsp/sessionMenu/MyCoupon.do" class="dropdown-item"><i class="fa fa-fw fa-address-book"></i> 내 쿠폰보기 <a>
            <a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item"><i class="fa fa-fw fa-thumbs-up" size = 5px></i> 내가 쓴 글보기 </a>
            <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
            <!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
             <!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
        </div>
      </li>
      <div>
      <!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button> -->
       <button class="btn btn-primary" type="button" style="margin-top:20px" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button>
       <!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
    	</div>
    </ul>

				</div>
			</div>
		</nav> 
</c:when>

<c:when test = "${check == 2 }">
      <li class="nav-item dropdown user-account">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span>관리자 ${name}님, 어서오세요 
        </a>
        <div class="dropdown-menu">
            <a href="/SemiProject/jsp/admin/bookingList.do?store_no=${storeNo}" class="dropdown-item"><i class="fa fa-bell"></i> 예약현황 </a>
            <a href="/SemiProject/jsp/admin/management_list.do?store_no=${storeNo}" class="dropdown-item"><i class="fa fa-fw fa-address-book"></i> 직원조회 <a>
            <a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item"><i class="fa fa-fw fa-thumbs-up" size = 5px></i> 우리매장후기 </a>

            <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
            <!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
             <!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
        </div>
      </li>
      <div>
      <!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button> -->
       <button class="btn btn-primary" type="button" style="margin-top:20px" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button>
       <!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
    	</div>
    </ul>

				</div>
			</div>
		</nav> 
</c:when>
</c:choose>
		<%-- <c:forEach var="article2" items="${articleList2}"> 
		<c:set var="mem_id" value="${articleList2.mem_id}" />
		</c:forEach> --%>
		<c:forEach var="listInfo" items="${storeListInfo}">
		   
	   	 
			<div class="container">
				<div class="row justify-content-md-center">
					<div class="col col-md-12 col-lg-12 col-xl-10">

						</ol>
						<div class="page-header bordered mb0">
							<div class="row">
								<div class="col-md-8">
									<a href="/SemiProject/jsp/storeList/list.do" class="btn-return" title="Back"><i
										class="fa fa-angle-left"></i></a>
									<h1>
									<input type="hidden" value="${listInfo.store_no }" id="storeNo" />
										${listInfo.store_nm }<span class="label label-bordered">${listInfo.cate_nm }</span>
										<small><i class="fa fa-map-marker"></i>${listInfo.store_floor }층</small>
					
									</h1>
								</div>
								<div class="col-md-4">
									<div class="price">
								
										<%-- 예약가능테이블: ${article.avl_tbl_cnt -5}<br /> --%>
										<div style="color:black; font-size:13px;"><br>※ 실제 매장에는 여유석이 있을 수 있습니다.<br> 매장 문의 바랍니다.
										
										</div>
										<!-- <span id="realTime" style="font-size:16px; color:blue"></span>	 -->									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="content" class="item-single">
				<div class="container">
					<div class="row justify-content-md-center">
						<div class="col col-md-12 col-lg-12 col-xl-10">
							<div class="row row justify-content-md-center has-sidebar">
								<div class="col-md-7 col-lg-8">
									<div>
										<div class="item-gallery">
											<div class="swiper-container gallery-top" data-pswp-uid="1">
												<div class="swiper-wrapper lazyload">
													<c:forEach var="menu" items="${menuList}">
													<div class="swiper-slide">
														<figure itemprop="associatedMedia" itemscope
															itemtype="http://schema.org/ImageObject">
															<a href="${pageContext.request.contextPath}/resources/img/demo/property/1.jpg" itemprop="contentUrl"
																data-size="2000x1414"> <img
																src="${pageContext.request.contextPath}${menu.menu_img_root}"
																class="img-fluid swiper-lazy" alt="Drawing Room"
																style="padding-left: 12%;max-width:88%;">
															</a>
														</figure>
													</div>
													</c:forEach>
													<%-- <c:forEach var="menuList" items="${article.menuList}">
													<div class="swiper-slide">
														<figure itemprop="associatedMedia" itemscope
															itemtype="http://schema.org/ImageObject">
															<a href="../../img/demo/property/2.jpg" itemprop="contentUrl"
																data-size="2000x1414"> <img
																data-src="${menuList.menu_img_root }" src="img/spacer.png"
																class="img-fluid swiper-lazy" alt="Drawing Room">
															</a>
														</figure>
													</div>
													</c:forEach> --%>
												</div>
												<div class="swiper-button-next"></div>
												<div class="swiper-button-prev"></div>
											</div>
											
											<div class="swiper-container gallery-thumbs">
												<div class="swiper-wrapper">
												    <c:forEach var="menu" items="${menuList}">
													<div class="swiper-slide">
														<img src="${pageContext.request.contextPath}${menu.menu_img_root }" class="img-fluid"
															alt="">
													</div>
													</c:forEach>
													<%-- <c:forEach var="menuList" items="${article.menuList}">
													<div class="swiper-slide">
														<img src="${menuList.menu_img_root }" class="img-fluid"
															alt="">
													</div>
													</c:forEach> --%>
												</div>
											</div>
											
										</div>
										
										<div>
											
											<!-- 파이널 프로젝트 때 쓸 것 -->
											<%-- <ul class="item-features">
												<li><span>매장테이블</span> 테이블수</li>
												<li><span>전체테이블</span>${article.tot_tbl_cnt }자리</li>
												<li><span>예약가능테이블</span>${article.avl_tbl_cnt }자리</li>
											</ul> --%>
											<div class="item-description">
												<h3 class="headline">매장 소개</h3>
												<p>
													<strong>${listInfo.store_nm}</strong><br>${listInfo.store_exp_dt}
											</div>
											<h3 class="headline">메뉴</h3>
											<ul class="checked feature-list" id="BK_MENU">
											<c:forEach var="menu" items="${menuList}">
												<li><strong> ${menu.menu_nm} : </strong>${menu.menu_price}원</li>
											</c:forEach>
<%-- 												<li><strong>${article.menu_nm2}</strong>${article.menu_nm2_sal}</li> --%>
											</ul>
											
											<!-- 
											<div class="item-attachments">
												<h3 class="headline">한줄평</h3>

												한줄평 위치
											</div> -->
											
											<div class="item-attachments">
												<h3 class="headline">예약</h3>
												<%-- <c:choose>
												 --%>
												<%-- <c:when test="${listInfo.cur_tbl_cnt>0 && article.cur_tbl_cnt <=5 }">
												<div class="btn btn-lg btn-inverse" onclick="BookFail()">
													<i class="fa fa-cloud-download" aria-hidden="true"></i>예약불가</div>
												</c:when> --%>
												
												<%-- <c:when test="${id eq null}">
												<div class="btn btn-lg btn-inverse" onclick="BookFail2()">
													<i class="fa fa-cloud-download" aria-hidden="true"></i>로그인</div>
												</c:when> --%>
												<%-- <c:otherwise> --%>
												<a href="reserve.do?store_no=${listInfo.store_no}" class="btn btn-lg btn-inverse"
													style="background-color:#FFBF00; border-width: 0px;"><i class="fa fa-cloud-download"
													aria-hidden="true" ></i>예약신청</a>
												<%-- </c:otherwise>
												</c:choose> --%>
												
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-5 col-lg-4">
									<div id="sidebar" class="sidebar-right">
										<div class="sidebar_inner">
											<div id="feature-list" role="tablist">
												<div class="card">
													<div class="card-header" role="tab" id="headingOne">
														<h4 class="panel-title">
															<a role="button" data-toggle="collapse"
																href="#specification" aria-expanded="true"
																aria-controls="specification">운영 안내<i
																class="fa fa-caret-down float-right"></i>
															</a>
														</h4>
													</div>
													<div id="specification"
														class="panel-collapse collapse show" role="tabpanel">
														<div class="card-body">
															<table class="table v1">
																<tr>
																	<td>영업시간</td>
																	<td>${listInfo.store_exp}</td>
																</tr>
																<tr>
																	<td>연락처</td>
																	<td>${listInfo.store_tel}</td>
																</tr>
																<tr>
																	<td>빈테이블</td>
																	<td id="AVL_TBL_CNT"></td>
																</tr>
																<tr>
																	<td>현재시간</td>
																	<td style="color:blue;"id="realtimeTd">
 																			
																</tr>
															</table>
														</div>
													</div>
												</div>
											</div>
											<div class="card shadow">
												<h5 class="subheadline mt-0  mb-0">담당자</h5>
												<div class="media">
													<div class="media-left">
														<a href="agent.html"> <img
															class="media-object rounded-circle"
															src="${pageContext.request.contextPath}${listInfo.pimg_root }" width="100" height="100" alt="">
														</a>
													</div>
													<div class="media-body" style="padding-top:10px;">
														<h4 class="media-heading">
															<a href="agent.html">${listInfo.emp_nm}</a>
														</h4>
														<p>
															<i class="fa fa-phone" aria-hidden="true">매장번호:</i><br>
															${listInfo.store_tel}
														</p>

													</div>
													
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		

		<script type="text/javascript">
// Photoswipe

    var initPhotoSwipeFromDOM = function(gallerySelector) {
        var parseThumbnailElements = function(el) {
		console.log(el);
            var thumbElements = $(el).closest(main_gallery).find('figure'),
                numNodes = thumbElements.length,
                items = [],
                figureEl,
                linkEl,
                size,
                item;

            for (var i = 0; i < numNodes; i++) {

                figureEl = thumbElements[i]; // <figure> element

                // include only element nodes 
                if (figureEl.nodeType !== 1) {
                    continue;
                }

                linkEl = figureEl.children[0]; // <a> element

                size = linkEl.getAttribute('data-size').split('x');

                // create slide object
                item = {
                    src: linkEl.getAttribute('href'),
                    w: parseInt(size[0], 10),
                    h: parseInt(size[1], 10)
                };



                if (figureEl.children.length > 1) {
                    // <figcaption> content
                    item.title = figureEl.children[1].innerHTML;
                }

                if (linkEl.children.length > 0) {
                    // <img> thumbnail element, retrieving thumbnail url
                    item.msrc = linkEl.children[0].getAttribute('src');
                }

                item.el = figureEl; // save link to element for getThumbBoundsFn
                items.push(item);
            }

            return items;
        };

        // find nearest parent element
        var closest = function closest(el, fn) {
            return el && (fn(el) ? el : closest(el.parentNode, fn));
        };

        // triggers when user clicks on thumbnail
        var onThumbnailsClick = function(e) {
            e = e || window.event;
            e.preventDefault ? e.preventDefault() : e.returnValue = false;

            var eTarget = e.target || e.srcElement;

            // find root element of slide
            var clickedListItem = closest(eTarget, function(el) {
                return (el.tagName && el.tagName.toUpperCase() === 'FIGURE');
            });

            if (!clickedListItem) {
                return;
            }
            var clickedGallery = clickedListItem.parentNode,
                childNodes = $(clickedListItem).closest(main_gallery).find('figure'),
                numChildNodes = childNodes.length,
                nodeIndex = 0,
                index;

            for (var i = 0; i < numChildNodes; i++) {
                if (childNodes[i].nodeType !== 1) {
                    continue;
                }

                if (childNodes[i] === clickedListItem) {
                    index = nodeIndex;
                    break;
                }
                nodeIndex++;
            }
            if (index >= 0) {
                // open PhotoSwipe if valid index found
                openPhotoSwipe(index, clickedGallery);
            }
            return false;
        };

        var openPhotoSwipe = function(index, galleryElement, disableAnimation) {
            var pswpElement = document.querySelectorAll('.pswp')[0],
                gallery,
                options,
                items;

            items = parseThumbnailElements(galleryElement);

            // define options (if needed)
            options = {
                history: false,
                bgOpacity: 0.8,
                loop: false,
                barsSize: {
                    top: 0,
                    bottom: 'auto'
                },

                // define gallery index (for URL)
                galleryUID: $(galleryElement).closest(main_gallery).attr('data-pswp-uid'),

                getThumbBoundsFn: function(index) {
                    // See Options -> getThumbBoundsFn section of documentation for more info
                    var thumbnail = document.querySelectorAll(main_gallery+' img')[index],
                        //var thumbnail = items[index].el.getElementsByTagName('img')[0], // find thumbnail
                        pageYScroll = window.pageYOffset || document.documentElement.scrollTop,
                        rect = thumbnail.getBoundingClientRect();

                    return {
                        x: rect.left,
                        y: rect.top + pageYScroll,
                        w: rect.width
                    };
                }

            };

            options.index = parseInt(index, 10);

            // exit if index not found
            if (isNaN(options.index)) {
                return;
            }

            if (disableAnimation) {
                options.showAnimationDuration = 0;
            }

            // Pass data to PhotoSwipe and initialize it
            gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options);
            gallery.init();
			gallery.shout('helloWorld', 'John' /* you may pass more arguments */);



            var totalItems = gallery.options.getNumItemsFn();

            function syncPhotoSwipeWithOwl() {
                var currentIndex = gallery.getCurrentIndex();
                galleryTop.slideTo(currentIndex);
                if (currentIndex == (totalItems - 1)) {
                    $('.pswp__button--arrow--right').attr('disabled', 'disabled').addClass('disabled');
                } else {
                    $('.pswp__button--arrow--right').removeAttr('disabled');
                }
                if (currentIndex == 0) {
                    $('.pswp__button--arrow--left').attr('disabled', 'disabled').addClass('disabled');
                } else {
                    $('.pswp__button--arrow--left').removeAttr('disabled');
                }
            };
            gallery.listen('afterChange', function() {
                syncPhotoSwipeWithOwl();
            });
            syncPhotoSwipeWithOwl();
        };

        // loop through all gallery elements and bind events
        var galleryElements = document.querySelectorAll(gallerySelector);

        for (var i = 0, l = galleryElements.length; i < l; i++) {
            galleryElements[i].setAttribute('data-pswp-uid', i + 1);
            galleryElements[i].onclick = onThumbnailsClick;
        }
    };
var main_gallery = '.gallery-top';
    var galleryTop = new Swiper(main_gallery, {
      spaceBetween: 10,
	  lazy: {
		loadPrevNext: true,
	  },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
	  }
	  ,on: {
			init: function(){
				initPhotoSwipeFromDOM(main_gallery);
			},
		}
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      spaceBetween: 10,
	  centeredSlides: true,
	  slidesPerView: 5,
      touchRatio: 0.2,
      slideToClickedSlide: true,
    });
    galleryTop.controller.control = galleryThumbs;
    galleryThumbs.controller.control = galleryTop;	
  </script>

		<script language=javascript>
  /* function sel()
  {
   for( var i=0; i<$('#test option').size(); i++)
    if( $("#test option:eq("+i+")").attr("selected") ) //선택된 값찾기
     alert($("#test option:eq("+i+")").val()); //선택된 값 출력
  }
  
  <button class="btn btn-primary btn-circle" id="to-top"><i class="fa fa-angle-up"></i></button>
  <!— 푸터 START —>sx
  <footer id="footer">
    <div class="container">
      <div class="row justify-content-md-center">
            <div class="col col-md-10">
          <div class="row">
            <div class="col-md-4 col-sm-4">
              <!— <p><span class="icon-uilove-realestate"></span></p> —>
              <p><span><img src="../../img/밥사조로고.png" alt="Smiley face" height="60" width="120"></span></p>
              <address>
              <strong>BABSAZO, Inc.</strong><br>
              	서울특별시 중구 남대문로 120<br>
             		대일빌딩3층 D CLASS<br>
              <!— <abbr title="Phone">P:</abbr> (123) 456-7890 —>
              </address>
              <p class="text-muted">Copyright &copy; 2018<br />
                All rights reserved</p>
            </div>
            <div class="col-md-4  col-sm-4">
              <ul class="list-unstyled">
                <li><a href="#"> About BABSAZO </a></li>
                <li><a href="#"> BABSAZO Introduction </a></li>
                <!— <li><a href="#">Security</a></li>
                <li><a href="#">Plans</a></li> —>
              </ul>
            </div>
            <!— <div class="col-md-2 col-sm-4">
              <ul class="list-unstyled">
                <li><a href="#">For Rent</a></li>
                <li><a href="#">For Sale</a></li>
                <li><a href="#">Commercial</a></li>
                <li><a href="#">Agents</a></li>
                <li><a href="#">Property Guides</a></li>
                <li><a href="#">Jobs</a></li>
              </ul>
            </div> —>
            <div class="col-md-4 col-sm-12">
              <div class="social-sharebox"> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-google"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-youtube-play"></i></a> <a href="#"><i class="fa fa-pinterest"></i></a> </div>
              <form>
                <h4>밥사조 소식 받아보기 </h4>
                <div class="input-group input-group-lg">
                  <input type="email" class="form-control form-control-lg" placeholder="Email Address">
                  <span class="input-group-btn">
                  <button class="btn btn-primary" type="button"> 구독 </button>
                  </span> </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  </div>
  </body>
  </html> */