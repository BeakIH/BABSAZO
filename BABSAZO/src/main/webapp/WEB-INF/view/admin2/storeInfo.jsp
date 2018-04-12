<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head><title> </title></head>
<body>
<!--  매장정보 시작 -->
          <div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered">
              <h1> ${storeNm } <small> ${empnm}관리자님 환영합니다.</small></h1>
            </div>
            <form action="index.php">
              <h3 class="subheadline"> 매장 No.${storeNo} </h3>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label> 매장명 </label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="${storeNm }">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group"> 
                    <label>업종명</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="${cateNm }">
                  </div> 
                </div>
              </div>
              <div class="form-group">
                <label>매장소개</label>
                <textarea class="form-control form-control-lg text-editor" name="content" rows="10" cols="73" maxlength = 200>
                ${article.content}손님보다 사장이 더 많이 먹는 식당! 마진 0% 리얼 100% 진짜 강식당이 찾아온다!</textarea></td>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>매장연락처</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
                </div>
                <!-- <div class="col-md-6">
                  <div class="form-group">
                    <label>Fax</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
                </div> -->
              </div>
              <div class="form-group">
                <label> 상세페이지 매장설명</label>
                <textarea class="form-control form-control-lg text-editor" placeholder=""></textarea>
              </div>
               <div>
               	<label> 매장 보유테이블 정보 </label>
                <ul class="item-features">
                  <li>  <span>540</span> 2인석 </li>
                  <li>  <span>3</span> 4인석 </li>
                  <li>  <span>1</span> 6인석 </li>
                  <li>  <span>2</span> 단체룸 </li>
                  <li>  <span>있음</span> 아기의자 </li>
                  <li>  <span>있음</span> 놀이방 </li>
                </ul>
               </div>
             <!--  <h3 class="subheadline">Social Links</h3> -->
              <div class="form-group">
                <label>Social Links</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-instagram"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div>
              <!-- <div class="form-group">
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
              <div class="form-group">
                <label>Linkedin</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-linkedin"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                </div>
              </div> -->
              <!-- <h3 class="subheadline">Agent/Company Profile</h3>
              <div class="form-group">
                <label>Agent/Company Title</label>
                <input type="text" class="form-control form-control-lg">
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Location</label>
                    <input type="text" class="form-control form-control-lg" id="autocomplete" placeholder="Enter your location">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Address</label>
                    <input type="text" class="form-control form-control-lg" placeholder="">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>City</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="locality">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>State</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="administrative_area_level_1">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Country</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="country">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Zipcode</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" id="postal_code">
                  </div>
                </div>
              </div>
              <hr> -->
              <div class="form-group action">
                <button type="submit" class="btn btn-lg btn-primary">수정취소</button>
                <button type="submit" class="btn btn-lg btn-primary">정보수정</button>
                <button type="submit" class="btn btn-lg btn-primary">미리보기</button>
              </div>
            </form>
          </div>
</body>
</html>