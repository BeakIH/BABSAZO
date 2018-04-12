<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>BABSAZO</title>
</head>
<body>
          <!-- 알림 수신 설정 부분 -->
          <div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered">
              <h1>BABSAZO 알림 설정</h1>
            </div>
            <form action="index.php">
            <h3 class="subheadline">휴대폰 알림 설정</h3>
              <div class="form-group">
                <div class="checkbox">
                    <input type="checkbox" id="private_message" checked>
                    <label for="private_message">BABSAZO 게릴라 세일 푸시 알림에 동의합니다. </label>
                  </div>
              </div>
              <div class="form-group">
                <div class="checkbox">
                    <input type="checkbox" id="item_message" checked>
                    <label for="item_message">BABSAZO 이벤트 소식 및 쿠폰을 받겠습니다.</label>
                  </div>
              </div>
              <br>
            <h3 class="subheadline">기타 알림 설정</h3> 
            <div class="form-group">
                <div class="checkbox">
                    <input type="checkbox" id="marketing_emails" checked>
                    <label for="marketing_emails"> 이메일로 BABSAZO 쿠폰 및 광고를 받겠습니다.</label>
                  </div>
              </div>
              <div class="form-group">
                <div class="checkbox">
                    <input type="checkbox" id="monthly_newsletter" checked>
                    <label for="monthly_newsletter">우편으로 BABSAZO 월간 소식지 및 쿠폰을 받겠습니다.</label>
                  </div>
              </div>
              <div class="form-group">
                <div class="checkbox">
                    <input type="checkbox" id="weekly_digest" checked>
                    <label for="weekly_digest">이메일로 주간 BABSAZO 쿠폰 및 알림을 받겠습니다.</label>
                  </div>
              </div>             
              <hr>
              <div class="form-group">
                <button type="submit" class="btn btn-lg btn-primary">알림 설정 저장</button>
              </div>
            </form>
          </div>


</div>  
</body>
</html>