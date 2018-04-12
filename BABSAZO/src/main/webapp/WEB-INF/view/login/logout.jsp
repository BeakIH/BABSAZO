<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<% session.invalidate(); %>

<!DOCTYPE html>
<html> 
<head><title> </title></head>
<body> 
<div id="content">
  <div class="container">
    <div class="row justify-content-md-center">
      <div class="col col-lg-12">
        <div class="error-template text-center"> <i class="fa fa-exclamation-triangle fa-5x text-danger animated zoomIn mb50"></i>
          <h3 class="main-title centered"><span> 로그아웃 되었습니다. </span></h3>
          <div class="main-title-description"> 다음에 다시 만나요  </div>
          <div class="error-actions"> <a href="../storeList/main.jsp" class="btn btn-primary btn-lg"> 홈으로 </a> 
          <!-- <a href="signin.html" class="btn btn-light btn-lg"> 회원 로그인 </a> </div> -->
        </div>
      </div>
    </div>
  </div>
</div>
<button class="btn btn-primary btn-circle" id="to-top"><i class="fa fa-angle-up"></i></button>
<!-- 푸터 START -->
</div>

</body></html>