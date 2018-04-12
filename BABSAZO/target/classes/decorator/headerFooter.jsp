<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />

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
<link href="/SemiProject/lib/selectric/selectric.css" rel="stylesheet">

<link href="/SemiProject/lib/aos/aos.css" rel="stylesheet">
<link href="/SemiProject/lib/Magnific-Popup/magnific-popup.css"
	rel="stylesheet">
<link href="/SemiProject/css/style.css?ver=3" rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/SemiProject/lib/jquery-3.2.1.min.js"></script>
<script src="/SemiProject/lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/SemiProject/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="/SemiProject/lib/selectric/jquery.selectric.js"></script>
<script src="/SemiProject/lib/aos/aos.js"></script>
<script
	src="/SemiProject/lib/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script src="/SemiProject/lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script
	src="/SemiProject/lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="/SemiProject/lib/lib.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>



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
				<a class="navbar-brand" href="/SemiProject/jsp/storeList/main.do">
					<!-- <span class="icon-uilove-realestate"></span> --> <span><img
						src="/SemiProject/img/밥사조로고.png" alt="Smiley face" height="50"
						width="90"></span>
				</a>
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
								<a href="/SemiProject/jsp/storeList/list.do"
									class="dropdown-item">목록보기</a>
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
								<a href="/SemiProject/notice/notice.do" class="dropdown-item">공지사항</a>
								<a href="/SemiProject/jsp/sessionMenu/404.do"
									class="dropdown-item"> 매장별 이용후기 </a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								도움말 </a>
							<div class="dropdown-menu">
								<a href="/SemiProject/jsp/sessionMenu/404.do"
									class="dropdown-item">자주묻는 질문</a> <a
									href="/SemiProject/jsp/sessionMenu/404.do"
									class="dropdown-item"> 1:1 문의</a>
							</div></li>

					</ul>

					<ul class="navbar-nav ml-auto">


						<li class="nav-item dropdown user-account"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="user-image"
								style="background-image: url(' img/demo/profile3.jpg');"></span>
								안녕하세요
						</a>
							<div class="dropdown-menu">
								<a href="/SemiProject/jsp/storeList/main.do"
									class="dropdown-item"> <i class="fa fa-home"></i> 메인으로
								</a> <a href="/SemiProject/jsp/storeList/list.do"
									class="dropdown-item"> <i class="fa fas fa-street-view"></i>
									매장조회
								</a>

							</div></li>
						<div>
							<button class="btn btn-primary" style="margin-top: 20px"
								type="button"
								onClick="window.location='/SemiProject/jsp/member/SigninCon.do'">
								<i class="fa fa-power-off">&nbsp;</i> 로그인 </a>
							</button>
						</div>
					</ul>

				</div>
			</div>
		</nav>


		<!-- 데코레이터 -->
		<decorator:body />

	</div>


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