<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<!-- 공통디자인 START -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>BABSAZO<decorator:title /></title>
<!-- Bootstrap --> 
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans"
	rel="stylesheet" />
<link href="/SemiProject/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/SemiProject/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/SemiProject/lib/animate.css" rel="stylesheet">
<c:if test="${errorpage!='0'}">
	<link href="/SemiProject/lib/selectric/selectric.css" rel="stylesheet">
	<link href="/SemiProject/lib/aos/aos.css" rel="stylesheet">
</c:if>
<link href="/SemiProject/lib/Magnific-Popup/magnific-popup.css"
	rel="stylesheet">
<link href="/SemiProject/css/style.css" rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/SemiProject/lib/jquery-3.2.1.min.js"></script>
<script src="/SemiProject/lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/SemiProject/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="/SemiProject/lib/selectric/jquery.selectric.js"></script>
<script src="/SemiProject/lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script
	src="/SemiProject/lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="/SemiProject/lib/tinymce/tinymce.min.js"></script>
<script src="/SemiProject/lib/aos/aos.js"></script>
<script
	src="/SemiProject/lib/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script src="/SemiProject/lib/lib.js"></script>
<script src="/SemiProject/lib/checkValue.js"></script>

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- <script>
alert('${check}')
</script> -->
<script>
	var placeSearch, autocomplete;
	var componentForm = {
		//street_number: 'short_name',
		//route: 'long_name',
		locality : 'long_name',
		administrative_area_level_1 : 'long_name',
		country : 'long_name',
		postal_code : 'long_name'
	};

	function initAutocomplete() {
		autocomplete = new google.maps.places.Autocomplete((document
				.getElementById('autocomplete')), {
			types : [ 'geocode' ]
		});
		autocomplete.addListener('place_changed', fillInAddress);
	}

	function fillInAddress() {
		var place = autocomplete.getPlace();
		for ( var component in componentForm) {
			document.getElementById(component).value = '';
			document.getElementById(component).disabled = false;
		}

		for (var i = 0; i < place.address_components.length; i++) {
			var addressType = place.address_components[i].types[0];
			if (componentForm[addressType]) {
				var val = place.address_components[i][componentForm[addressType]];
				document.getElementById(addressType).value = val;
			}
		}
	}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete"
	async defer></script>
<script>
	tinymce
			.init({
				selector : '.text-editor',
				height : 200,
				menubar : false,
				branding : false,
				plugins : [ 'lists link image preview', ],
				toolbar : 'undo redo | link | formatselect | bold italic underline  | alignleft aligncenter alignright alignjustify | bullist numlist'
			});
</script>
<decorator:head />
</head>
<body>
	<!-- 공통디자인 end -->
	<!-- 관리자 세션일때 START -->
	<c:choose>
		<c:when test="${check==2}">

			<!-- 헤더 -->
			<div id="main">
				<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
					<div class="container">
						<!-- <a class="navbar-brand" href="index.html"><span class="icon-uilove-realestate"></span></a> -->
						<!-- <span><img src="../../img/밥사조로고.png" alt="Smiley face" height="50" width="90"></span>  
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-content" aria-controls="menu-content" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span> -->
						<a class="navbar-brand" href="/SemiProject/jsp/storeList/main.do">
							<!-- <span class="icon-uilove-realestate"></span> --> <span><img
								src="/SemiProject/img/밥사조로고.png" alt="Smiley face" height="50"
								width="90"></span> <!-- <span><img src="../../img/밥사조4층.png" alt="Smiley face" height="30" width="60"></span> -->
						</a>
						</button>

						<div class="collapse navbar-collapse" id="menu-content">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 밥사조 <span class="sr-only">(current)</span>
								</a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/storeList/main.do"
											class="dropdown-item">밥사조 이야기</a> <a
											href="/SemiProject/jsp/storeList/main.do"
											class="dropdown-item">밥사조 식구들</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 조회 </a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/storeList/list.do"
											class="dropdown-item">매장보기</a>
										<!-- <a href="property_grid.html" class="dropdown-item">Grid View</a>
            <a href="property_listing_map.html" class="dropdown-item">Map View</a>
            <a href="property_single.html" class="dropdown-item">Single View 1</a>
            <a href="property_single2.html" class="dropdown-item">Single View 2</a>
            <a href="property_single3.html" class="dropdown-item">Single View 3</a> -->
									</div></li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 매장소식 </a>
									<div class="dropdown-menu">
										<a href="/SemiProject/notice/notice.do" class="dropdown-item">공지사항</a>
										<a href="/SemiProject/jsp/sessionMenu/404.jsp"
											class="dropdown-item"> 매장별 이용후기 </a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 도움말 </a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/sessionMenu/404.do"
											class="dropdown-item">자주묻는 질문</a> <a
											href="/SemiProject/jsp/sessionMenu/404.do"
											class="dropdown-item"> 1:1 문의</a>
									</div></li>
							</ul>

							<ul class="navbar-nav ml-auto">
								<li class="nav-item dropdown user-account"><a
									class="nav-link dropdown-toggle"
									href="ProfilePre.jsp?id=${memId }" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <span class="user-image"
										style="background-image: url(' /img/profiles/default.jpg');"></span>관리자
										${name }님, 어서오세요
								</a>
									<div class="dropdown-menu">
										<a
											href="/SemiProject/jsp/admin/bookingList.do?store_no=${storeNo}"
											class="dropdown-item"><i class="fa fa-bell"></i> 예약현황 </a> <a
											href="/SemiProject/jsp/admin/management_list.do?store_no=${storeNo}"
											class="dropdown-item"><i class="fa fa-fw fa-address-book"></i>
											직원조회 <a> <a href="/SemiProject/jsp/sessionMenu/404.do"
												class="dropdown-item"><i class="fa fa-fw fa-thumbs-up"
													size=5px></i> 우리매장후기 </a> <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
												<!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
												<!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
									</div></li>
								<!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button> -->
								<li class="nav-item add-listing" style="margin-top: 20px"><button
										class="btn btn-primary" type="button"
										onClick="window.location='/SemiProject/jsp/login/logout.do'">
										<span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li>
							</ul>

						</div>
					</div>
				</nav>

				<!-- 헤더 -->

				<div class="clearfix"></div>
				<div id="content">
					<div class="container">
						<div class="row justify-content-md-center">
							<div class="col col-lg-12 col-xl-10">
								<div class="row has-sidebar">
									<div class="col-md-5 col-lg-4 col-xl-4">
										<div id="sidebar" class="sidebar-left">
											<div class="sidebar_inner">
												<div class="list-group no-border list-unstyled">
													<!-- <span class="list-group-item heading"> 예약관리 </span>
                  <a href="my_listing_add.html" class="list-group-item"><i class="fa fa-fw fa-plus-square-o"></i> Add Listing</a>
                  <a href="my_bookmarked_listings.html" class="list-group-item d-flex justify-content-between align-items-center"><span>
                  <i class="fa fa-fw fa-bookmark-o"></i> 우리매장 예약현황 </span>
                    <span class="badge badge-primary badge-pill"> db </span>
                    </a>
                   -->
													<span class="list-group-item heading"> 매장관리 </span> <a
														href="/SemiProject/jsp/admin/bookingList.do?store_no=${storeNo}"
														class="list-group-item d-flex justify-content-between align-items-center">
														<span><i class="fa fa-bell"></i> 우리매장 예약현황 </span> <span
														class="badge badge-primary badge-pill">7</span>
													</a>
													<!-- <a href="/jsp/admin/bookingList.jsp" class="dropdown-item"><i class="fa fa-fw fa-plus-square-o"></i>미리주문 메뉴관리 </a> -->
													<a href="menu.jsp" class="list-group-item"><i
														class="fa fa-fw fa-plus-square-o"></i> 미리주문 메뉴관리 </a> <a
														href="storeInfo.jsp" class="list-group-item active"><i
														class="fa fa-fw fa-pencil"></i> 매장정보 변경</a> <a
														href="passWord.jsp" class="list-group-item"><i
														class="fa fa-fw fa-lock"></i> 관리자 비밀번호 변경 </a>
													<!-- <a href="my_notifications.html" class="list-group-item"><i class="fa fa-fw fa-bell-o"></i> Notifications</a>
              <a href="my_membership.html" class="list-group-item"><i class="fa fa-fw fa-cubes"></i> Membership</a>
              <a href="my_payments.html" class="list-group-item"><i class="fa fa-fw fa-credit-card"></i> Payments</a>
              <a href="my_account.html" class="list-group-item"><i class="fa fa-fw fa-cog"></i> Account</a> -->
													<span class="list-group-item heading"> 직원관리 </span> <a
														href="createEmp.jsp" class="list-group-item"><i
														class="fa fa-fw fa-user"></i> 직원등록 </a> <a
														href="management_list.do?store_no=${storeNo}"
														class="list-group-item"><i
														class="fa fa-fw fa-address-book"></i> 직원정보 </a> <span
														class="list-group-item heading"> 우리매장소식 </span> <a
														href="my_listing_add.html" class="list-group-item"><i
														class="fa fa-fw fa-paper-plane" size=5px></i> 매장소식 </a> <a
														href="my_listing_add.html" class="list-group-item"><i
														class="fa fa-fw fa-thumbs-up" size=5px></i> 매장이용후기 </a>

												</div>
											</div>
										</div>
									</div>

									<!-- 데코레이터 -->
									<decorator:body />

								</div>
							</div>
						</div>
					</div>
				</div>
		</c:when>

		<c:when test="${check==1}">
			<!-- 헤더  -->
			<div id="main">
				<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
					<div class="container">
						<!-- <a class="navbar-brand" href="index.html"><span class="icon-uilove-realestate"></span></a> -->
						<!-- <span><img src="../../img/밥사조로고.png" alt="Smiley face" height="50" width="90"></span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-content" aria-controls="menu-content" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span> 
  </button> -->
						<a class="navbar-brand" href="/SemiProject/jsp/storeList/main.do">
							<!-- <span class="icon-uilove-realestate"></span> --> <span><img
								src="../../img/밥사조로고.png" alt="Smiley face" height="50"
								width="90"></span> <!-- <span><img src="../../img/밥사조4층.png" alt="Smiley face" height="30" width="60"></span> -->
						</a>

						<div class="collapse navbar-collapse" id="menu-content">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 밥사조 <span class="sr-only">(current)</span>
								</a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/storeList/main.do"
											class="dropdown-item">밥사조 이야기</a> <a
											href="/SemiProject/jsp/storeList/main.do"
											class="dropdown-item">밥사조 식구들</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 조회 </a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/storeList/list.do"
											class="dropdown-item">매장보기</a>
										<!-- <a href="property_grid.html" class="dropdown-item">Grid View</a>
            <a href="property_listing_map.html" class="dropdown-item">Map View</a>
            <a href="property_single.html" class="dropdown-item">Single View 1</a>
            <a href="property_single2.html" class="dropdown-item">Single View 2</a>
            <a href="property_single3.html" class="dropdown-item">Single View 3</a> -->
									</div></li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 매장소식 </a>
									<div class="dropdown-menu">
										<a href="/SemiProject/notice/notice.do" class="dropdown-item">공지사항</a>
										<a href="/SemiProject/jsp/sessionMenu/404.do"
											class="dropdown-item"> 매장별 이용후기 </a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 도움말 </a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/sessionMenu/404.do"
											class="dropdown-item">자주묻는 질문</a> <a
											href="/SemiProject/jsp/sessionMenu/404.do"
											class="dropdown-item"> 1:1 문의</a>
									</div></li>
								<!--
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
                  <li><a href="main.do">메인페이지</a></li>
                  <li class="title">Login Pages</li>
                  <li><a href="signin.html">Signin</a></li>
                  <li><a href="register.html">Register</a></li>
                  <li><a href="forgot-password.html">Forgot Password</a></li>
                 </ul>
              </div>
              <div class="col-md-6 col-lg-3">
                <ul class="list-unstyled">
                  <li class="title">Property Listing</li>
                  <li><a href="list.do">목록 보기</a></li>
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
      </li> -->

							</ul>


							<%-- <%--  <ul class="navbar-nav ml-auto">
      
       <li class="nav-item dropdown user-account">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span> ${name}님, 어서오세요 
        </a>
        <div class="dropdown-menu">
            <a href="/jsp/admin/bookingList.jsp" class="dropdown-item"><i class="fa fa-bell"></i> 내 예약보기 </a>
            <a href="../sessionMenu/MyCoupon.jsp" class="list-group-item"><i class="fa fa-fw fa-lock"></i> 내 쿠폰보기 <a>
            <a href="my_notifications.html" class="dropdown-item"><i class="fa fa-fw fa-thumbs-up" size = 5px></i> 내가 쓴 글 보기 </a>
            <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
            <!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
             <!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
        </div>
      </li>
       --%>
							<%--
      <li class="nav-item dropdown user-account">
         <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span> ${name}님, 어서오세요 
        </a>
        <div class="dropdown-menu">
            <a href="/jsp/admin/bookingList.jsp" class="dropdown-item"><i class="fa fa-bell"></i> 내 예약보기 </a>
            <a href="../sessionMenu/MyCoupon.jsp" class="list-group-item"><i class="fa fa-fw fa-lock"></i> 내 쿠폰보기 <a>
            <a href="my_notifications.html" class="dropdown-item"><i class="fa fa-fw fa-thumbs-up" size = 5px></i> 내가 쓴 글 보기 </a>
        </div>
        
      </li>
      <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li>
      <!-- <li class="nav-item add-listing"><a class="nav-link" href="my_listing_add.html"><span><i class="fa fa-plus" aria-hidden="true"></i> Add listing</span></a></li> -->
    </ul> --%>

							<ul class="navbar-nav ml-auto">


								<li class="nav-item dropdown user-account"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <span class="user-image"
										style="background-image: url(' img/demo/profile3.jpg');"></span>
										${name }님, 어서오세요
								</a>
									<div class="dropdown-menu">
										<a href="/SemiProject/jsp/sessionMenu/404.do"
											class="dropdown-item"><i class="fa fa-bell"></i> 내 예약보기 </a>

										<a href="/SemiProject/jsp/sessionMenu/MyCoupon.do"
											class="dropdown-item"><i class="fa fa-fw fa-address-book"></i>
											내 쿠폰보기 <a> <a href="/SemiProject/jsp/sessionMenu/404.do"
												class="dropdown-item"><i class="fa fa-fw fa-thumbs-up"
													size=5px></i> 내가 쓴 글보기 </a> <!-- <a href="my_membership.html" class="dropdown-item">Membership</a>
            <a href="my_payments.html" class="dropdown-item">Payments</a> -->
												<!-- <a href="../login/logutPro.jsp" class="dropdown-item">로그아웃</a> -->
												<!--  <li class="nav-item add-listing"><a class="nav-link" href="/jsp/login/logout.jsp"><span><i class="fa fa-plus" aria-hidden="true"></i> 로그아웃 </span></a></li> -->
									</div></li>
								<!-- <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button> -->
								<li class="nav-item add-listing" style="margin-top: 20px"><button
										class="btn btn-primary" type="button"
										onClick="window.location='/SemiProject/jsp/login/logout.do'">
										<span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li>
							</ul>


						</div>
					</div>
				</nav>
				<div class="clearfix"></div>
				<div id="content">
					<div class="container">
						<div class="row justify-content-md-center">
							<div class="col col-lg-12 col-xl-10">
								<div class="row has-sidebar">
									<div class="col-md-5 col-lg-4 col-xl-4">
										<div id="sidebar" class="sidebar-left">
											<div class="sidebar_inner">
												<div class="list-group no-border list-unstyled">

													<span class="list-group-item heading"> BABSAZO 즐기기 </span>
													<a href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item"><i
														class="fa fa-fw fa-plus-square-o"> </i> 예약확인 </a> <a
														href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item d-flex justify-content-between align-items-center"><span><i
															class="fa fa-fw fa-bookmark-o"></i> 찜한 BABSAZO</span> <span
														class="badge badge-primary badge-pill">10</span> </a> <a
														href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item d-flex justify-content-between align-items-center"><span><i
															class="fa fa-fw fa-bars"></i> 즐겨찾는 BABSAZO</span> <span
														class="badge badge-primary badge-pill">7</span> </a> <span
														class="list-group-item heading"> 내 계정 관리</span> <a
														href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item"><i class="fa fa-fw fa-pencil"></i>
														${name}님 정보</a> <a href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item"><i class="fa fa-fw fa-lock"></i>
														비밀번호 변경</a> <a href="/SemiProject/jsp/sessionMenu/MyCoupon.do"
														class="list-group-item"><i class="fa fa-fw fa-lock"></i>
														내쿠폰보기</a> <a href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item"><i class="fa fa-fw fa-bell-o"></i>
														BABSAZO 알림</a> <a href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item active"><i
														class="fa fa-bitcoin"></i> BABSAZO 멤버십</a> <a
														href="/SemiProject/jsp/sessionMenu/404.do"
														class="list-group-item"><i
														class="fa fa-fw fa-credit-card"></i> 결제 정보</a>
													<!-- <a href="../sessionMenu/SetAccount.jsp" class="list-group-item"><i class="fa fa-fw fa-cog"></i> 계정 설정</a> -->
												</div>
											</div>
										</div>
									</div>

									<!-- 데코레이터 -->
									<decorator:body />

								</div>
							</div>
						</div> 
					</div>
				</div>
			</div>
		</c:when>

	</c:choose>

	<!-- 푸터 START -->
	<button class="btn btn-primary btn-circle" id="to-top">
		<i class="fa fa-angle-up"></i>
	</button>

	<footer id="footer">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col col-md-10">
					<div class="row">
						<div class="col-md-4 col-sm-4">
							<p>
								<span><img src="/SemiProject/img/밥사조로고.png"
									alt="Smiley face" height="60" width="120"></span>
							</p>
							<address>
								<strong>BABSAZO, Inc.</strong><br> 서울특별시 중구 남대문로 120<br>
								대일빌딩3층 D CLASS<br>
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
								<div class="input-group input-group-lg">
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

</body>
</html>

