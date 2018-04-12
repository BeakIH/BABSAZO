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
          <!-- 거래 정보 설정 -->
          
          
          <div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered">
              <h1>거래 정보 설정</h1>
            </div>
            <form action="index.php">
              <div class="form-group">
                <div class="checkbox">
                  <input type="checkbox" id="private_message" checked="">
                  <label for="private_message">기본 결제 수단 적용 및 자동 이체에 동의합니다.</label>
                </div>
              </div>
              <h3 class="subheadline">신용카드 &amp; 결제 수단</h3>
              <ul class="list-group no-border list-unstyled list-v2">
                <li><i class="fa fa-fw fa-cc-paypal icon"></i> Paypal <a href="" class="btn btn-link set-default">기본 결제 수단으로 설정</a></li>
                <li><i class="fa fa-fw fa-cc-stripe icon"></i> 휴대폰 <a href="" class="btn btn-link set-default">기본 결제 수단으로 설정</a></li>
                <li><i class="fa fa-fw fa-credit-card icon hidden-xs"></i> <span class="card-number">**** **** **** ****</span><a class="btn btn-primary"><i class="fa fa-trash-o"></i></a> <span class="default">삭제</span></li>
                
                <!-- 
                <li><i class="fa fa-fw fa-credit-card icon hidden-xs"></i> <span class="card-number">**** **** **** 5643</span><a class="btn btn-primary"><span><i class="fa fa-trash-o"></i></span></a> <a href="" class="btn btn-link set-default">Set as default</a></li>
                <li><i class="fa fa-fw fa-credit-card icon hidden-xs"></i> <span class="card-number">**** **** **** 9843</span><a class="btn btn-primary"><i class="fa fa-trash-o"></i></a> <a href="" class="btn btn-link set-default">Set as default</a></li> -->
              </ul>
              <h3 class="subheadline">신용카드 추가</h3>
              <div class="card">
              <div class="form-group">
              <label>카드번호</label>
                <div class="input-group input-group-lg"> <span class="input-group-addon"><i class="icon fa fa-fw fa-credit-card-alt"></i></span>
                  <input type="text" class="form-control form-control-lg" id="cc_number" value="">
                </div>
              </div>
              <div class="row">
              <div class="col-md-8">
             <label>유효기한 (Month/Year)</label>
             <div class="row">
             <div class="col-md-7">
             <div class="form-group">
             <select class="form-control form-control-lg ui-select">
             <option value="jan">01</option>
             <option value="feb">02</option>
             <option value="mar">03</option>
             <option value="apr">04</option>
             <option value="may">05</option>
             <option value="jun">06</option>
             <option value="jul">07</option>
             <option value="aug">08</option>
             <option value="sep">09</option>
             <option value="oct">10</option>
             <option value="nov">11</option>
             <option value="dec">12</option>
             </select>
             </div>
             </div>
             <div class="col-md-5">
             <div class="form-group">
             <select class="form-control form-control-lg ui-select">
             <option value="2018">2018</option>
             <option value="2019">2019</option>
             <option value="2020">2020</option>
             <option value="2021">2021</option>
             <option value="2022">2022</option>
             <option value="2023">2023</option>
             <option value="2024">2024</option>
             <option value="2025">2025</option>
             <option value="2026">2026</option>
             <option value="2027">2027</option>
             <option value="2028">2028</option>
             <option value="2029">2029</option>
             <option value="2030">2030</option>
             </select>
             </div>
             </div>
             </div>
             
             
              
              </div>
              <div class="col-md-4">
              <div class="form-group">

              <label>CVC</label>
              <input type="text" class="form-control form-control-lg">
              </div>
              </div>
              </div>
              <!-- <p>You agree to authorize the use of your credit card for this deposit and future payments.</p> -->
              <p> ※ 향후 지불 수단으로 사용하는 것에 동의합니다. </p>
              <button class="btn btn-light" id="add_card"> 카드등록 완료 </button>
              </div>
              <hr>
              <!-- <div class="form-group action">
                <button type="submit" class="btn btn-lg btn-primary">Save Settings</button>
              <label>CVC Code</label> -->
              <!-- <input type="text" class="form-control form-control-lg"> -->
              </div>
              </div>
              </div>
             <!--  <p> ※ 향후 지불 수단으로 사용하는 것에 동의합니다. </p><br> -->
              <!-- <button class="btn btn-light" id="add_card">카드 추가하기</button> -->
              </div>
              <div class="row">
              <div class="col-md-8"></div>
              <div class="col-md-3" style="text-align:right">
              <button type="submit" class="btn btn-lg btn-primary">설정 저장하기</button>
              </div>
              <div class="col-md-1"></div>
              </div>
              
            </form>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</div>
</body>
</html>