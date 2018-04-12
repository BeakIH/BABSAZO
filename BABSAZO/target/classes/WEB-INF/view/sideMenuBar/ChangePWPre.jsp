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
        
          <!-- 수정 -->
          
          <div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered">
              <h1>비밀번호 변경<small>
              <br>계정 보안을 위해 다음 사항을 참고하여 비밀번호를 설정해주세요 </small></h1>
              <br>
              <h1><small>하나 이상의 특수문자를 포함
              <!-- <div><i class="fas fa-exclamation-circle">포함</i></div> -->
              <br> 소문자 및 대문자 모두 사용
              <br> 최소 8자 이상의 문자 길이
              <br> 생년월일 아이디와 4자이상 겹치는 숫자 사용 불가 </small></h1>
            </div>
           <!--  <form action="index.php">
              <h3 class="subheadline">새로운 비밀번호 입력</h3>
             
                  <div class="form-group">
                    
                    <input type="text" class="form-control form-control-lg" placeholder="" >
                  </div>
                  </form>
                
            <form action="index.php">
              <h3 class="subheadline">비밀번호 확인</h3>
                  <div class="form-group">
                    <label> 비밀번호를 다시 한 번 입력해주세요</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" >
                  </div>
            
                
           </form> -->
           <form action="index.php">
              <div class="form-group">
                <label> 현재 비밀번호 </label>
                <input type="text" class="form-control form-control-lg" placeholder="Your current password" autofocus>
              </div>
              <div class="form-group">
                <label> 변경할 비밀번호 </label>
                <input type="text" class="form-control form-control-lg" placeholder="Your new password">
              </div>
              <div class="form-group">
                <label> 한번 더 확인해보세요 ^^ </label>
                <input type="text" class="form-control form-control-lg" placeholder="Repeat new password">
              </div>
              <hr>
              <div class="form-group action">
                <button type="submit" class="btn btn-lg btn-primary"> 변경완료 </button>
              </div>
            </form>
           
           <!-- 비밀번호 힌트할까?  
             <div class="row">
                <div class="col-md-6"> 
              <div class="form-group">
                <label>이메일</label>
                <input type="text" class="form-control form-control-lg" value="babsazo@email.com">
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>휴대폰</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>집/팩스</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label>회원님은 어떤 분이신가요?</label>
                <textarea class="form-control form-control-lg text-editor" placeholder=""></textarea>
              </div>
              <h3 class="subheadline">SNS</h3>
              <div class="form-group">
                <label>Twitter</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-twitter"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <div class="form-group">
                <label>Facebook</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-facebook"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <div class="form-group">
                <label>Google Plus</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-google-plus"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <div class="form-group"> -->
                   </div> 
                </div>
              </div>
              <hr>
             <!--  <div class="form-group action">
                <button type="submit" class="btn btn-lg btn-primary">프로필 수정</button>
              </div> -->
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>