<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- <script src="http://code.jquery.com/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script> -->
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> -->
<!-- 달력 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 달력 -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/calender/style.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/calender/calendar.js"></script> --%>
<!-- 달력 -->

<%-- <script src="<c:url value=/resources/lib/jquery-3.2.1.min.js />"></script> --%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Real Estate</title>

<%-- <script src="${pageContext.request.contextPath}/resources/lib/jquery-3.2.1.min.js"></script> --%>

<!-- Bootstrap -->
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/animate.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/selectric/selectric.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/swiper/css/swiper.min.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/aos/aos.css"  rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/photoswipe/photoswipe.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/photoswipe/default-skin/default-skin.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<%-- <script src="${pageContext.request.contextPath}/resources/lib/jquery-3.2.1.min.js"></script> --%>
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

<script type="text/javascript"> 

/* 달력 */
 

    $.datepicker.setDefaults({
        dateFormat: 'yy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });
	
    $( function() {
        $( "#datepicker1" ).datepicker({ minDate: 0, maxDate: "+6D" });
      } );
   /*  $(function() {
        $("#datepicker1").datepicker();
    }); */
    // 선택한 항목 삭제
    function removeItem(str){
        var frm = document.form1;
        var o = frm.elements[str];
        var idx = o.selectedIndex;
        if(idx == -1) return;
        o.options.remove(idx);
        o.selectedIndex = idx - 1;
        if(idx - 1 < 0)o.selectedIndex = 0;
    }
 
    // 선택한 항목 모두 삭제
    function removeAllItem(str){
        var frm = document.form1;
        var o = frm.elements[str];
        if(o.length == 0) return;
 
        var loop = o.length;
        for (var i=0 ; i < loop ; i++){
            o.options.remove(0);
        }
    }
 
    // 항목 추가
    function addItem(str){
        var frm = document.form1;
        var o = frm.gayo;
        frm.elements[str].options.add(new Option(o.options[o.selectedIndex].text, o.options[o.selectedIndex].value));
    }
 
    // 선택한것 올리기
    function moveUp(str){
        var frm = document.form1;
        var o = frm.elements[str];
        var idx = o.selectedIndex;
 
        if(idx == -1) return;
        if(idx > 0){
            var text = o.options[idx].text;
            var value = o.options[idx].value;
 
            o.options[idx].text = o.options[idx - 1].text
            o.options[idx].value = o.options[idx - 1].value
 
            o.options[idx - 1].text = text;
            o.options[idx - 1].value = value;
 
            o.selectedIndex = idx - 1;
        }
    }
 
    // 선택한것 내리기
    function moveDown(str){
        var frm = document.form1;
        var o = frm.elements[str];
        var idx = o.selectedIndex;
 
        if(idx == -1) return;
        if(idx < o.length-1){
            var text = o.options[idx].text;
            var value = o.options[idx].value;
 
            o.options[idx].text = o.options[idx + 1].text
            o.options[idx].value = o.options[idx + 1].value
 
            o.options[idx + 1].text = text;
            o.options[idx + 1].value = value;
 
            o.selectedIndex = idx + 1;
        }
    }

</script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body onload="init();">
<div id="main">
<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
  <div class="container">
  <a class="navbar-brand" href="index.html"><span class="icon-uilove-realestate"></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-content" aria-controls="menu-content" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="menu-content">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Home <span class="sr-only">(current)</span>
        </a>
        <div class="dropdown-menu">
            <a href="index.html" class="dropdown-item">Homepage 1</a>
            <a href="index2.html" class="dropdown-item">Homepage 2</a>
            <a href="index3.html" class="dropdown-item">Homepage 3</a>
            <a href="index4.html" class="dropdown-item">Homepage 4</a>
            <a href="index5.html" class="dropdown-item">Homepage 5</a>
            <a href="index6.html" class="dropdown-item">Homepage 6</a>
            <a href="index7.html" class="dropdown-item">Homepage 7</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Listings
        </a>
        <div class="dropdown-menu">
            <a href="property_listing.html" class="dropdown-item">List View</a>
            <a href="property_grid.html" class="dropdown-item">Grid View</a>
            <a href="property_listing_map.html" class="dropdown-item">Map View</a>
            <a href="property_single.html" class="dropdown-item">Single View 1</a>
            <a href="property_single2.html" class="dropdown-item">Single View 2</a>
            <a href="property_single3.html" class="dropdown-item">Single View 3</a>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Agents
        </a>
        <div class="dropdown-menu">
            <a href="agent_list.html" class="dropdown-item">Agent List</a>
            <a href="agent.html" class="dropdown-item">Agent Profile</a>
        </div>
      </li>
      
      <li class="nav-item dropdown megamenu">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pages
        </a>
        <div class="dropdown-menu">
        <div class="container">
        <div class="row justify-content-md-center">
            <div class="col col-md-8">
            <div class="row">
            <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Homepage</li>
                  <li><a href="index.html">Homepage 1</a></li>
                  <li><a href="index2.html">Homepage 2</a></li>
                  <li><a href="index3.html">Homepage 3</a></li>
                  <li><a href="index4.html">Homepage 4</a></li>
                  <li><a href="index5.html">Homepage 5</a></li>
                  <li><a href="index6.html">Homepage 6</a></li>
                  <li><a href="index7.html">Homepage 7</a></li>
                  <li class="title">Login Pages</li>
                  <li><a href="signin.html">Signin</a></li>
                  <li><a href="register.html">Register</a></li>
                  <li><a href="forgot-password.html">Forgot Password</a></li>
                 </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Property Listing</li>
                  <li><a href="property_listing.html">List View</a></li>
                  <li><a href="property_grid.html">Grid View</a></li>
                  <li><a href="property_listing_map.html">Map View</a></li>
                  <li class="title">Single Property</li>
                  <li><a href="property_single.html">Single View 1</a></li>
                  <li><a href="property_single2.html">Single View 2</a></li>
                  <li><a href="property_single3.html">Single View 3</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Other Pages</li>
                  <li><a href="plans.html">Plans</a></li>
                  <li><a href="information_page.html">Information Page</a></li>
                  <li><a href="coming_soon.html">Coming Soon</a></li>
                  <li><a href="404_error.html">Error Page</a></li>
                  <li><a href="success.html">Success Page</a></li>
                  <li><a href="contact.html">Contact Page</a></li>
                  <li><a href="compare.html">Compare Properties</a></li>
                  <li class="title">Agent Pages</li>
                  <li><a href="agent_list.html">Agent List</a></li>
                  <li><a href="agent.html">Agent Profile</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Account Pages</li>
                  <li><a href="my_listing_add.html">Add Listing</a></li>
                <li><a href="my_bookmarked_listings.html">Bookmarked Listing</a></li>
                  <li><a href="my_listings.html">My Listings</a></li>
                  <li><a href="my_profile.html">My Profile</a></li>
                <li><a href="my_password.html">Change Password</a></li>
                <li><a href="my_notifications.html">Notifications</a></li>
                <li><a href="my_membership.html">Membership</a></li>
                <li><a href="my_payments.html">Payments</a></li>
                <li><a href="my_account.html">Account</a></li>
                <li class="title">Blog Pages</li>
                  <li><a href="blog.html">Blog Archive</a></li>
                  <li><a href="blog_single.html">Blog Single</a></li>
                </ul>
              </div>
              </div>
              </div>
              </div>
              </div>
        </div>
      </li>
      
    </ul>
    
    <ul class="navbar-nav ml-auto">
      
      
      <li class="nav-item dropdown user-account">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url('${pageContext.request.contextPath}/resources/img/demo/profile3.jpg');"></span> Hi, John
        </a>
        <div class="dropdown-menu">
            <a href="my_profile.html" class="dropdown-item">My Profile</a>
            <a href="my_password.html" class="dropdown-item">Change Password</a>
            <a href="my_notifications.html" class="dropdown-item">Notifications</a>
            <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a>
            <a href="my_account.html" class="dropdown-item">Account</a>
        </div>
      </li>
      <li class="nav-item add-listing"><a class="nav-link" href="my_listing_add.html"><span><i class="fa fa-plus" aria-hidden="true"></i> Add listing</span></a></li>
    </ul>
    
  </div>
  </div>
</nav>
<div class="container">
  <div class="row justify-content-md-center">
          <div class="col col-md-12 col-lg-12 col-xl-10">
      <div class="page-header bordered mb0">
        <div class="row">
          <div class="col-md-8"> <a href="#" class="btn-return" title="Back"><i class="fa fa-angle-left"></i></a>
            <h1>다나와 <span class="label label-bordered">한식</span> <small><i class="fa fa-map-marker"></i> 3층</small></h1>
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
                   
                  </div>
                </div>
                <div class="item-description">
												<h3 class="headline">미리 주문 하기</h3>
							
									
									<form name="form1" method="get" action="">
<table border="0" style="font-size:9pt;" cellpadding="3" cellspacing="0" align="center">
    <tr>
        <td align="center">
            <select name="gayo" size="1" style="width: 250px;height: 43px;font-size:1.5em;">
            <c:forEach var="menu" items="${menuList}">
            <option value="${menu.menu_nm}">${menu.menu_nm} : ${menu.menu_price}</option>
         
                </c:forEach>
            </select>
            <input type="button" value="메뉴추가하기" onclick="addItem('select1')" style="width: 96px;height: 42px;margin-right: 24px;padding-top: 9px;padding-bottom: 6px;"> <!-- <input type="button" value="2에 추가" onclick="addItem('select2')"> -->
        </td>
    </tr>
 
    <!-- <tr>
        <td align="center">추가 버튼을 누르세요~</td>
    </tr> -->
 
    <tr>
        <td align="center">
 
        <table border="0" cellpadding="5" cellspacing="1" style="font-size:9pt;" bgcolor="#999999">
            <!-- <tr>
                <td colspan="2" align="center" bgcolor="#E2E2E2"><b>1</b></td>
                <td colspan="2" align="center" bgcolor="#E2E2E2"><b>2</b></td>
            </tr> -->
            <tr>
                <td align="center" bgcolor="white"><select name="select1" size="10" style=" font-size:2.0em;width: 402px;height: 252px;"></select></td>
                <td align="center" bgcolor="white">
                   <!--  <input type="button" value=" ▲ " onclick="moveUp('select1')"><br>
                    <input type="button" value=" ▼ " onclick="moveDown('select1')"><br> -->
                    <input type="button" value="삭제" onclick="removeItem('select1')" style="width: 66px;height: 41px;"><br><br>
                    <input type="button" value="모두삭제" onclick="removeAllItem('select1');removeAllItem('select2')"style="width: 66px;height: 41px;">
                </td>
              <!--   <td align="center" bgcolor="white"><select name="select2" size="10" style="width:200px;"></select></td>
                <td align="center" bgcolor="white">
                    <input type="button" value=" ▲ " onclick="moveUp('select2')"><br>
                    <input type="button" value=" ▼ " onclick="moveDown('select2')"><br>
                    <input type="button" value="삭제" onclick="removeItem('select2')">
                </td> -->
            </tr>
            <tr>
             <td align="center" colspan="4" bgcolor="white">  
            	<input type="text" value="총 가격: 50000원" style="margin-left: 170px;width: 76px;height: 41px;">
            
            </tr>
            <!-- <tr>
                <td align="center" colspan="4" bgcolor="white">                   
                    <input type="button" value="모두삭제" onclick="removeAllItem('select1');removeAllItem('select2')"style="margin-left: 170px;width: 76px;height: 41px;">
                    <input type="submit" value="주문완료" onclick="removeAllItem('select1');removeAllItem('select2')"style="width: 76px;height: 41px;"></td>
            </tr> -->
        </table>
 
        </td>
    </tr>
</table>
</form>


									
				</div>
              </div>
       
            </div>
          </div>
          <div class="col-md-5 col-lg-4">
            <div id="sidebar" class="sidebar-right">
              <div class="sidebar_inner" style="padding-left: 10px;">
          				 <table class="table v1">
          			              </table>
          
                <div id="feature-list" role="tablist">
                <div class="card">
                  <div class="card-header" role="tab" id="headingOne">
                    <h4 class="panel-title"> <a role="button" data-toggle="collapse" href="#specification" aria-expanded="true" aria-controls="specification"> 예약신청 <i class="fa fa-caret-down float-right"></i> </a> </h4>
                  </div>
                  <div id="specification" class="panel-collapse collapse show" role="tabpanel">
                    <div class="card-body" style="padding-top: 0px;">
                      <table class="table v1">
                     <tr>
          				<td style="padding-left: 0px; border-bottom: 1px solid rgba(134, 158, 158, 0.3);font-weight:bold;color:rgba(134, 158, 158, 1);width: 137px;">날짜 선택</td>
                       </tr>
                      </table> 
                      <input id="datepicker1" value="달력보기"/>
                      <!-- <div id="datepicker1"> </div> -->
                     <!--  <div class="jquery-calendar"></div> -->
          				 <table class="table v1" style="margin-top: 10px;border-top: 1px solid rgba(134, 158, 158, 0.3);">
                       <tr class="menu1">
          				<td class="menu2" style="padding-left: 0px; border-bottom: 1px solid rgba(134, 158, 158, 0.3);font-weight:bold;color:rgba(134, 158, 158, 1);width: 137px;">시간 선택</td>
                          <td style="border-bottom: 1px solid rgba(134, 158, 158, 0.3); font-weight:bold;color:rgba(134, 158, 158, 1);padding-right: 0px;"> ????
                    	</td>
                    	</tr>
                    	</table>
               
                      <ul class="time">
                       <c:forEach var="seating" items="${seatingList}">
 							<li><a href="#;">${seating.bk_time}</a></li>
 							<!-- <li><a href="#;">12:00</a></li>
 							<li><a href="#;">13:00</a></li>
 							<li><a href="#;">16:00</a></li>
 							<li><a href="#;">17:00</a></li>
 							<li><a href="#;">18:00</a></li>
 							<li><a href="#;">19:00</a></li>
 							<li><a href="#;">20:00</a></li>
 							<li><a href="#;">21:00</a></li>
							<li><a href="#;">22:00</a></li>
							<li><a href="#;">23:00</a></li>
 							<li><a href="#;">24:00</a></li> -->
					 </c:forEach>
					 </ul>
				
					 </div>
					 <div class="card-header" role="tab" id="headingOne">
                    </div>
                     <table class="table v1" style="margin-top: 0px;margin-bottom: 16px;">
                       <tr>
          				<td style="padding-left: 0px; border-bottom: 1px solid rgba(134, 158, 158, 0.3);font-weight:bold;color:rgba(134, 158, 158, 1);width: 137px;">인원수 선택</td>
                          <td style="border-bottom: 1px solid rgba(134, 158, 158, 0.3); font-weight:bold;color:rgba(134, 158, 158, 1);padding-right: 0px;"> ????</td>
                       </tr>
                        </table>
                    <form name="form" method="get">
                    <!-- 주석친부분은 숫자 올릴때마다 금액이 더해지는 이벤트 -->
						인원수  <!-- <input type=hidden name="sell_price" value="5500"> -->
						<input type="text" name="amount" value="1" size="10" onchange="change();" style="margin-left: 38px;text-align:center;width: 122px;">
						<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
                 		<!-- 금액 : <input type="text" name="sum" size="11" readonly>원 -->
                 	</form>
                 	 <div class="card-header" role="tab" id="headingOne">
                    </div>
                     <table class="table v1" style="margin-top: 0px;margin-bottom: 16px;">
                       <tr>
          				<td style="padding-left: 0px; border-bottom: 1px solid rgba(134, 158, 158, 0.3);font-weight:bold;color:rgba(134, 158, 158, 1);width: 137px;">메뉴 선택</td>
                          <td style="border-bottom: 1px solid rgba(134, 158, 158, 0.3); font-weight:bold;color:rgba(134, 158, 158, 1);padding-right: 0px;"> ????</td>
                       </tr>
                        </table>
                  </div>
                </div>
                </div>
                </div>
                </div>
                <div class="card shadow">
                  <h5 class="subheadline mt-0  mb-0">담당자</h5>
                  <div class="media">
                    <div class="media-left"> <a href="agent.html"> <img class="media-object rounded-circle" src="${pageContext.request.contextPath}/resources/img/demo/profile.jpg" width="64" height="64" alt=""> </a> </div>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="agent.html">John Doe</a></h4>
                      <p><a href="tel:01502392905"><i class="fa fa-phone" aria-hidden="true"></i> Call: 01502 392905</a></p>
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
<!-- Lead Form Modal -->
<div class="modal fade  item-badge-rightm" id="leadform" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="media">
          <div class="media-left"><img src="${pageContext.request.contextPath}/resources/img/demo/property/thumb/1.jpg" width="60" class="img-rounded mt5" alt=""></div>
          <div class="media-body">
            <h4 class="media-heading">Request details for 2 bed semi-detached bungalow for sale</h4>
            Kents Lane, Bungay NR35 </div>
        </div>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label>Your Name</label>
            <input type="text" class="form-control" placeholder="Your Name">
          </div>
          <div class="form-group">
            <label>Your Email</label>
            <input type="email" class="form-control" placeholder="Your Email">
          </div>
          <div class="form-group">
            <label>Your Telephone</label>
            <input type="tel" class="form-control" placeholder="Your Telephone">
          </div>
          <div class="form-group">
            <label>Message</label>
            <textarea rows="4" class="form-control" placeholder="Please include any useful details, i.e. current status, availability for viewings, etc."></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Request Details</button>
      </div>
    </div>
  </div>
</div>

<!-- Email to friend Modal -->
<div class="modal fade item-badge-rightm" id="email-to-friend" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="media">
          <div class="media-left"> <img src="${pageContext.request.contextPath}/resources/img/demo/property/thumb/1.jpg" width="60" class="img-rounded mt5" alt=""> </div>
          <div class="media-body">
            <h4 class="media-heading">Email friend about 2 bed semi-detached bungalow for sale</h4>
            Kents Lane, Bungay NR35 </div>
        </div>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label>Your Name</label>
            <input type="text" class="form-control" placeholder="Your Name">
          </div>
          <div class="form-group">
            <label>Your Email</label>
            <input type="email" class="form-control" placeholder="Your Email">
          </div>
          <div class="form-group">
            <label>Friends Email</label>
            <input type="email" class="form-control" placeholder="Friends Email">
          </div>
          <div class="form-group">
            <label>Message</label>
            <textarea rows="4" class="form-control" placeholder="">I thought you might want to take a look at this property for sale.</textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Request Details</button>
      </div>
    </div>
  </div>
</div>

<!-- Report Listing Modal -->
<div class="modal fade item-badge-rightm" id="report-listing" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="media">
          <div class="media-left"> <i class="fa fa-3x fa-exclamation-circle" aria-hidden="true"></i> </div>
          <div class="media-body">
            <h4 class="media-heading">Report Listing for 2 bed semi-detached bungalow for sale</h4>
            Kents Lane, Bungay NR35 </div>
        </div>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label>Contact Name</label>
            <input type="text" class="form-control" placeholder="Contact Name">
          </div>
          <div class="form-group">
            <label>Email Address</label>
            <input type="email" class="form-control" placeholder="Email Address">
          </div>
          <div class="form-group">
            <label>Nature of report</label>
            <select class="form-control">
              <option value="">Please Select</option>
              <option value="no_longer_available">Property is no longer available</option>
              <option value="incorrect_price">Price listed is incorrect</option>
              <option value="incorrect_last_sold_price">Last sold price incorrect</option>
              <option value="incorrect_description">Property description is inaccurate</option>
              <option value="incorrect_location">Property location is incorrect</option>
              <option value="incorrect_content">Problem with photos, floorplans, etc.</option>
              <option value="inappropriate_video">Problem with the video</option>
              <option value="agent_not_contactable">Agent is not contactable</option>
              <option value="incorrect_running_costs">Running costs is displaying inaccurate values</option>
              <option value="other">Other (please specify)</option>
            </select>
          </div>
          <div class="form-group">
            <label>Description of content issue </label>
            <textarea rows="4" class="form-control" placeholder="Please provide as much information as possible..."></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Report Error</button>
      </div>
    </div>
  </div>
</div>

<button class="btn btn-primary btn-circle" id="to-top"><i class="fa fa-angle-up"></i></button>
<footer id="footer">
  <div class="container">
    <div class="row justify-content-md-center">
          <div class="col col-md-10">
        <div class="row">
          <div class="col-md-4 col-sm-4">
            <p><span class="icon-uilove-realestate"></span></p>
            <address>
            <strong>Twitter, Inc.</strong><br>
            1355 Market Street, Suite 900<br>
            San Francisco, CA 94103<br>
            <abbr title="Phone">P:</abbr> (123) 456-7890
            </address>
            <p class="text-muted">Copyright &copy; 2016<br />
              All rights reserved</p>
          </div>
          <div class="col-md-2  col-sm-4">
            <ul class="list-unstyled">
              <li><a href="#">About</a></li>
              <li><a href="#">Team</a></li>
              <li><a href="#">Security</a></li>
              <li><a href="#">Plans</a></li>
            </ul>
          </div>
          <div class="col-md-2 col-sm-4">
            <ul class="list-unstyled">
              <li><a href="#">For Rent</a></li>
              <li><a href="#">For Sale</a></li>
              <li><a href="#">Commercial</a></li>
              <li><a href="#">Agents</a></li>
              <li><a href="#">Property Guides</a></li>
              <li><a href="#">Jobs</a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-12">
            <div class="social-sharebox"> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-google"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-youtube-play"></i></a> <a href="#"><i class="fa fa-pinterest"></i></a> </div>
            <form>
              <h4>Subscribe Newsletter</h4>
              <div class="input-group input-group-lg">
                <input type="email" class="form-control" placeholder="Email Address">
                <span class="input-group-btn">
                <button class="btn btn-primary" type="button">Go!</button>
                </span> </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
</div>
<!-- Root element of PhotoSwipe. Must have class pswp. -->
<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

    <!-- Background of PhotoSwipe. 
         It's a separate element, as animating opacity is faster than rgba(). -->
    <div class="pswp__bg"></div>

    <!-- Slides wrapper with overflow:hidden. -->
    <div class="pswp__scroll-wrap">

        <!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
        <!-- don't modify these 3 pswp__item elements, data is added later on. -->
        <div class="pswp__container">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>

        <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
        <div class="pswp__ui pswp__ui--hidden">

            <div class="pswp__top-bar">

                <!--  Controls are self-explanatory. Order can be changed. -->

                <div class="pswp__counter"></div>

                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                <button class="pswp__button pswp__button--share" title="Share"></button>

                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                <!-- Preloader demo https://codepen.io/dimsemenov/pen/yyBWoR -->
                <!-- element will get class pswp__preloader--active when preloader is running -->
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                      <div class="pswp__preloader__cut">
                        <div class="pswp__preloader__donut"></div>
                      </div>
                    </div>
                </div>
            </div>

            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div> 
            </div>

            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
            </button>

            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
            </button>

            <div class="pswp__caption">
                <div class="pswp__caption__center"></div>
            </div>

          </div>

        </div>

</div>



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
 
    

    /*  버튼누르면 색상변하는 이벤트*/
     function change1(obj){
        obj.style.background = 'red';
        obj.style.color = 'white';
    }
     function change2(obj){
        obj.style.background = 'white';
        obj.style.color = 'black';
    }
     
     $(function(){
    	  var sBtn = $('ul.time > li');    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
    	  sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
    	   sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
    	   $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
    	  })
    	 })
	
    	 	
    	 
    /* 수량 계산하는 이벤트 (인원수나 음식메뉴에 쓸것) */
/*주석 처리한 부분은 값을 계산할 때 이벤트////주석친부분은 숫자 올릴때마다 금액이 더해지는 이벤트 */    
/* var sell_price; */
var amount;

function init () {
	/* sell_price = document.form.sell_price.value; */
	amount = document.form.amount.value;
	/* document.form.sum.value = sell_price; */
	change();
}

function add () {
	hm = document.form.amount;
	/* sum = document.form.sum; */
	hm.value ++ ;

	/* sum.value = parseInt(hm.value) * sell_price; */
}

function del () {
	hm = document.form.amount;
	/* sum = document.form.sum; */
		if (hm.value > 1) {
			hm.value -- ;
			/* sum.value = parseInt(hm.value) * sell_price; */
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	/* sum.value = parseInt(hm.value) * sell_price; */
}  

/* 펼쳐서 보여주는 이벤트 */
   $(document).ready(function(){
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        }).mouseover(function(){
            $(this).next("ul").slideDown();
        });
 
 
        // menu class 중에 두번째 있는 menu 의 하위에 있는 a태그에 클릭 이벤트를 발생시킨다.
        $(".menu:eq(1)>a").click();
    });



/* 메뉴의 수량과 합계를 구하는 이벤트 */
var sell_price2;
var amount2;

function init () {
	sell_price2 = document.form2.sell_price2.value;
	amount2 = document.form2.amount2.value;
	document.form2.sum2.value = sell_price2;
	change2();
}

function add2 () {
	hm2 = document.form2.amount2;
	sum2 = document.form2.sum2;
	hm2.value ++ ;

	sum2.value = parseInt(hm2.value) * sell_price2;
}

function del2 () {
	hm2 = document.form2.amount2;
	sum2 = document.form2.sum2;
		if (hm2.value > 0) {
			hm2.value -- ;
			sum2.value = parseInt(hm2.value) * sell_price2;
		}
}

function change2 () {
	hm2 = document.form2.amount2;
	sum2 = document.form2.sum2;

		if (hm2.value < 0) {
			hm2.value = 0;
		}
	sum2.value = parseInt(hm2.value) * sell_price2;
}  
 
/* 음식메뉴 리스트 이벤트 */



function delRow(TableID,num) {
	var tbody = document.getElementById(TableID).getElementsByTagName("TBODY")[0];
		for ( var i = 1; i < table_count.length ; i++ ) {
			if ( table_count[i] == num ) { 
				tbody.deleteRow(i); // 테이블 삭제
				table_count[i] = 0;
			}
		}

		for ( var i = 1; i < table_count.length ; i++ ) {
			if ( table_count[i] == 0) {  
				cnt = tbody.rows.length-1;
		for ( j = i ; j < table_count.length ; j++)
			table_count[j] = table_count[j+1];
		}
	}
}

function cancel(TableID) {
	var tbody = document.getElementById(TableID).getElementsByTagName("TBODY")[0];
	var del_cnt = tbody.rows.length;
		for ( var i = 1; i < del_cnt; i++ ) {  
			tbody.deleteRow(1); // 테이블 삭제
		}
		cnt = 0; // 테이블 관련 번호를 초기화
	}
    
    </script>
</body>
  <style>
 /* 달력수정부분 */
  caption{
  caption-side:top;}
  .prev {height:50px;}
  .next {height:50px;}
  
  element.style {
    width: 250px;
    height: 25px;
}

/* 버튼이벤트  */
  ul.time {
  padding-left: 0px;
  list-style: none;
  margin-left: 0;
 }
 ul.time > li {
  display: inline-block;
 }
 ul.time > li > a {
 text-align:center;
 width: 66px;
 margin-bottom: 5px;
  color: #000000;
  text-decoration: none;
  display: block;
  padding: 5px 10px;
  background-color: #E8E7E7;
 }
 ul.time > li:hover > a{
 background-color:#f3f3f3;
 }

 ul.time > li:focus > a,
 ul.time > li:active > a,
 ul.time > li.active >a {
 
  
  color: #000000;
  background-color: #FFBB00;
 }

.menu2 td{cursor:pointer;}




  </style>
</html>