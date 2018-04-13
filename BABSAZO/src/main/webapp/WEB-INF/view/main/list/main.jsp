<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>밥은 먹고 다니니</title>

<!-- Bootstrap -->
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900%7COpen+Sans" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/selectric/selectric.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/swiper/css/swiper.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/aos/aos.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/Magnific-Popup/magnific-popup.css" rel="stylesheet">
<!-- <link href="../../css/style.css?ver=6" rel="stylesheet">  -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/sidestyle.css?ver=6" rel="stylesheet">
<!-- <link href="/css/style.css" rel="stylesheet" type="text/css"/>
<link href="/css/sidestyle.css?ver=6" rel="stylesheet"> -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/resources/lib/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/popper.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/selectric/jquery.selectric.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/swiper/js/swiper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/aos/aos.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/sticky-sidebar/ResizeSensor.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/sticky-sidebar/theia-sticky-sidebar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/lib.js"></script>

<script>

/* 팝업창 */
/* function doPopupopen() {
   window. open("popup.do", "popup01", "scrollbars=no, width=300, height=360");
} */

 $(document).ready(function(){
	/* alert('확인'); //1 */
	doPopupopen();
});

function doPopupopen() {
	/* alert('doPopupopen() 확인');//2 */
	
	function getCookie(name){
		/* alert('getCookie() 확인');//4 // 6 */
		var nameOfCookie = name + "=";
		var x = 0;
		while (x <= document.cookie.length){
			var y = (x + nameOfCookie.length);
			if (document.cookie.substring(x, y) == nameOfCookie){
			if ((endOfCookie = document.cookie.indexOf(";", y)) == -1){
			endOfCookie = document.cookie.length;
			}
			return unescape (document.cookie.substring(y, endOfCookie));
			}
			x = document.cookie.indexOf (" ", x) + 1;
			if (x == 0) break;
		}
		return "";
	}
	
	/* alert('쿠키확인전');//3 */
	/* alert(getCookie("popname"));//5  값이 done 이라고 나옴 */
	var popname = getCookie("popname");
	
	/* 쿠키값 확인 */
	console.log(popname);
	
	/* if (true){ */
	if (popname !== "done"){
		/* alert('popname가 done이 아닐때 '); */
		var popUrl = "popup.do"; //팝업창에 출력될 페이지 URL
		var popOption = "width=320, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
	}
}


/* 검색창 카테고리 변경시 placeholder 변경 */
$(document).ready(function(){
   $('.search-in label').click(function(){
       
      if(($(this).text())=="음식명으로 찾기"){// 카테고리 음식
         $('.input-group-lg>.form-control').attr("placeholder","ex) 자장면, 김치찌개, 파스타").placeholder();
      }else if(($(this).text())=="매장명으로 찾기"){// 카테고리 가게
         $('.input-group-lg>.form-control').attr("placeholder","ex) 엘본 더 테이블, 경화루, 라연").placeholder();
      }
   });
});

var check=0; // 사이드메뉴 열고닫는데에 사용되는 조건변수

function openNav() {// 사이드메뉴 버튼 기능
   /* alert('확인'); */
   /* location.href='sideList.do'; */
    /* if (check == 0){ */
    if (check==0){
       document.getElementById("mySidenav").style.width = "380px";
       check+=1;
    }else{     
         document.getElementById("mySidenav").style.width = "0";
       check-=1;
    }   // 1(l) 0  1 0  1  0 -1  
}

function closeNav() {// 사이드메뉴 버튼 눌렀을때 나오는 창의 x 버튼 기능
   document.getElementById("mySidenav").style.width = "0";
   check-=1;
}

/* 자동완성 */

/* var substringMatcher = function(strs) {
  return function findMatches(q, cb) {
    var matches, substringRegex;

    // an array that will be populated with substring matches
    matches = [];

    // regex used to determine if a string contains the substring `q`
    substrRegex = new RegExp(q, 'i');

    // iterate through the pool of strings and for any string that
    // contains the substring `q`, add it to the `matches` array
    $.each(strs, function(i, str) {
      if (substrRegex.test(str)) {
        matches.push(str);
      }
    });

    cb(matches);
  };
};

var states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
  'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
  'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
  'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
  'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
  'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
  'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
  'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
  'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
];

$('#the-basics .form-control').form-control({
	hint: true,
  highlight: true,
  minLength: 1
}, {
  name: 'states',
  source: substringMatcher(states)
}).on('form-control:open', function() {
}).on('form-control:rendered', function(element, data) { // 검색 결과 화면 생성 이벤트
}).on('form-control:cursorchanged', function(element, data) { // 위 아래 커서 이동시 이벤트
}).on('form-control:selected', function(element, data) { // 선택 이벤트
}).on('form-control:autocompleted', function(element, data) { // 검색어 자동완성 이벤트
}); */

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
<nav class="navbar navbar-expand-lg navbar-dark navbar-over absolute-top" id="menu">
  <div class="container">
  <a class="navbar-brand" href="main.do"><!-- <span class="icon-uilove-realestate"></span> -->
    <span><img src="${pageContext.request.contextPath}/resources/img/밥사조로고.png" alt="Smiley face" height="50" width="90"></span>
   <!-- <span><img src="../../img/밥사조4층.png" alt="Smiley face" height="30" width="60"></span> -->
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-content" aria-controls="menu-content" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
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
            <a href="list.do" class="dropdown-item">매장보기</a>
        </div>
      </li>
      
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            매장소식
        </a>
        <div class="dropdown-menu">
            <a href="../../notice/notice.do" class="dropdown-item">공지사항</a>
            <a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item"> 매장별 이용후기 </a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            도움말
        </a>
        <div class="dropdown-menu">
            <a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item">자주묻는 질문</a>
            <a href="/SemiProject/jsp/sessionMenu/404.do" class="dropdown-item"> 1:1 문의</a>
        </div>
      </li>
    </ul>
    
    <!-- <ul class="navbar-nav ml-auto">
       <button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button>
    </ul> -->
    
    <ul class="navbar-nav ml-auto">
<c:choose>
<c:when test= "${check==null}">
      <li class="nav-item dropdown user-account">
        <!-- <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="user-image" style="background-image:url(' img/demo/profile3.jpg');"></span> 안녕하세요  </a>  -->
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
      <button class="btn btn-primary" type="button" style="margin-top:8px" onClick="window.location='/SemiProject/jsp/member/SigninCon.do'"><i class="fa fa-power-off">&nbsp;</i> 로그인 </a></button>
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
          <span class="user-image" style="background-image:url('${pageContext.request.contextPath}/resources/demo/profile3.jpg');"></span> ${name}님, 어서오세요 
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
       <button class="btn btn-primary" type="button" style="margin-top:37px" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button>
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
          <span class="user-image" style="background-image:url('${pageContext.request.contextPath}/resources//demo/profile3.jpg');"></span>관리자 ${name}님, 어서오세요 
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
       <button class="btn btn-primary" type="button" style="margin-top:37px" onClick="window.location='/SemiProject/jsp/login/logout.do'"><i class="fa fa-power-off">&nbsp;</i> 로그아웃 </a></button>
       <!-- <li class="nav-item add-listing"><button class="btn btn-primary" type="button" onClick="window.location='/SemiProject/jsp/login/logout.do'"><span><i class="fa fa-power-off">&nbsp;</i> 로그아웃</span></a></li> -->
    	</div>
    </ul>
				</div>
			</div>
		</nav> 
</c:when>
</c:choose>
    
  </div>
  </div>
</nav>
<!-- 사이드 바  -->
<div id="mySidenav" class="sidenav">
<!-- <div id="mySidenav" class="sidenav"> -->
   <br>
   <br>
     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a><br><br>
   <div class="sideMenu" style="width:95px;padding-left: 45px;">매장명</div>
   <div class="sideMenu" style="width:95px;padding-left: 50px;">가용석</div>
   <div class="sideMenu" style="width:95px;padding-left: 48px;">상태</div>
     <c:forEach items="${storeListInPage}" var="storeList" begin="0">
     <table>
        <tr>
        <td style="width:150px;padding-left: 35px;padding-right: 10px;background-color:none;display:inline-block;"><a id="linkedA" href="list_info.do?store_no=${storeList.store_no }">${storeList.store_nm }</a></td>
        <td style="width:80px;padding-left: 10px;padding-right: 10px;background-color:none;display:inline-block;">${storeList.avl_tbl_cnt }</td>
        <td style="width:80px;padding-right: 10px;background-color:none;display:inline-block;">
        <c:choose>
        <c:when test="${storeList.cur_tbl_cnt>=0 && storeList.cur_tbl_cnt <=5 }">
        <font color="red">예약불가</font>
        </c:when>
        <c:when test="${storeList.cur_tbl_cnt>5 && storeList.cur_tbl_cnt <=30 }">
        <font color="blue">예약가능</font>
        </c:when>
        </c:choose>
        </td>
        </tr>
     </table>
   </c:forEach>
</div>

<span style="font-size:30px;cursor:pointer" onclick="openNav()"></span>
<!-- 사이드 바 end -->
<div class="home-search">
<div class="main search-form v7">
  <div class="container">
    <div class="row justify-content-md-center">
      <div class="col-md-12 col-lg-10">
        <div class="heading">
          <h2> B A B S A Z O </h2>
          <h3> 밥사조와 함께하는 식도락 여행, 시작해볼까요  </h3>
        </div>
        <form action="list.do"><!-- 이부분을 test2로 -->
          <div class="row justify-content-md-center">
            <div class="col-md-9 col-lg-8">
            <div class="input-group input-group-lg">
      <!-- 이부분에 입력받은 값을 검색어의 키워드로 사용해야함  -->
      <input type="text" class="form-control" name="search" id="autocomplete" placeholder="ex) 자장면, 김치찌개, 파스타"> <!-- 여기여깅 -->
       <span class="input-group-btn">
         <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button> 
      </span>
    </div>
    <div class="search-in">
<div class="radio-box" id ="food">
<input type="radio" name="searchn" value="0" id="rent22" checked >
                     <!-- label 태그의 for 속성은 해당 속성값과 같은 id를 가진 대상과 연결시켜줌 -->
<label class="radio-inline" for="rent22" id ="food" >음식명으로 찾기</label><!-- placeholder 변경을 위한 value값 추가, 파라미터와는 상관x -->
</div>



<div class="radio-box">
<input type="radio" name="searchn" value="1" id="sell22" >
<label class="radio-inline" for="sell22" >매장명으로 찾기</label>
</div>
    </div>
    </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <video class="search-video" autoplay loop width="0" height="0" src="${pageContext.request.contextPath}/resources/video/mainpage_video.mp4" muted></video>
</div>
</div>
<div id="content" class="pt0 pb0">
  <div class="feature-box centered gray">
    <div data-aos="fade-up">
      <div class="container">
        <div class="row justify-content-md-center">
          <div class="col col-lg-12 col-xl-10">
            <div class="main-title"><span>오늘의 추천식당</span></div>
            <!-- <div class="main-title-description">부연 설명</div> -->
            <div class="clearfix"></div>
            <div class="mt50 mb50">
              <div class="featured-gallery v2 item-listing grid">
              <div class="row">
                <div class="col-md-6">
                  <div class="item item-lg">
                    <div class="item-image" style="background-image:url(${pageContext.request.contextPath}/resources/img/store_img/store_elbonmain.jpg);"><a href="list_info.do?store_no=1032">
                      <div class="item-meta">
                        <div class="item-info">
                          <h3 class="item-title">엘본 더 테이블</h3>
                          <div class="item-location"><i class="fa fa-map-marker"></i> 4층 </div>
                        </div>
                        <div class="item-price">13000원 <small>스타쉐프 최현석의 선택</small> </div>
                      </div>
                      <div class="item-badges">
                        <div class="item-badge-right">행사중</div>
                      </div>
                      </a> </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="item item-md">
                        <div class="item-image" style="background-image:url(${pageContext.request.contextPath}/resources/img/store_img/store_gyunghwa.jpg);"><a href="list_info.do?store_no=1031">
                          <div class="item-meta">
                            <div class="item-info">
                              <h3 class="item-title">경화루</h3>
                              <div class="item-location"><i class="fa fa-map-marker"></i> 3층 </div>
                            </div>
                            <div class="item-price">8000원대 <small>중화요리의 절대고수 이연복</small> </div>
                          </div>
                          <div class="item-badges">
                            <div class="item-badge-right">행사중</div>
                          </div>
                          </a> </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="item item-sm">
                        <div class="item-image" style="background-image:url(${pageContext.request.contextPath}/resources/img/store_img/store_layuen.jpg);"><a href="list_info.do?store_no=1030">
                          <div class="item-meta">
                            <div class="item-info">
                              <h3 class="item-title">라연</h3>
                              <div class="item-location"><i class="fa fa-map-marker"></i> 2층 </div>
                            </div>
                            <div class="item-price">10000원대 <small>미쉐린 스타쉐프 김성일의 식당</small> </div>
                          </div>
                          <div class="item-badges">
                            <div class="item-badge-right">행사중</div>
                          </div>
                          </a> </div>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="item item-sm">
                        <div class="item-image" style="background-image:url(${pageContext.request.contextPath}/resources/img/store_img/store_manbbo.jpg);"><a href="list_info.do?store_no=1033">
                          <div class="item-meta">
                            <div class="item-info">
                              <h3 class="item-title">만뽀</h3>
                              <div class="item-location"><i class="fa fa-map-marker"></i>4층</div>
                            </div>
                            <div class="item-price">10000원대 <small>전통 일식의 그맛</small> </div>
                          </div>
                          <div class="item-badges">
                            <div class="item-badge-right">행사중</div>
                          </div>
                          </a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              </div>
            </div>
            <div class="text-center"><a href="#" class="btn btn-xlg btn-link"> 밥사조 시작하기 </a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
<button class="btn btn-primary btn-circle" id="sidebar-btn" onMouseOver="openNav()">바<br>로<br>가<br>기</button><!-- <i> 태그와 아무상관없음 -->
<!-- 사이드바 버튼 end -->
<button class="btn btn-primary btn-circle" id="to-top"><i class="fa fa-angle-up"></i></button>
<!-- 푸터 START -->
<footer id="footer">
  <div class="container">
    <div class="row justify-content-md-center">
          <div class="col col-md-10">
        <div class="row">
          <div class="col-md-4 col-sm-4">
            <p><span><img src="${pageContext.request.contextPath}/resources/img/밥사조로고.png" alt="Smiley face" height="60" width="120"></span></p>
            <address>
            <strong>BABSAZO, Inc.</strong><br>
               서울특별시 중구 남대문로 120<br>
                 대일빌딩3층 D CLASS<br>
            </address>
            <p class="text-muted">Copyright &copy; 2018<br />
              All rights reserved</p>
          </div>
          <div class="col-md-4  col-sm-4">
            <ul class="list-unstyled">
              <li><a href="#"> About BABSAZO </a></li>
              <li><a href="#"> BABSAZO Introduction </a></li>
            </ul>
          </div>
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
          <div class="col-md-4 col-sm-12">
	          <div>
	          	<a href="view/jsp/admin/admin_main.jsp">admin</a>
	          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
</div>
</body>
</html>