<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp.member.model.MemberDAO" %>
<%@ page import="jsp.member.model.MemberBean" %>    

<!DOCTYPE html>
<html lang="en"> 
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>BABSAZO</title>

 <!--   <script type="text/javascript">
    
        function changeForm(val){
            if(val == "-1"){
                location.href="ProfilePre.jsp";
            }else if(val == "0"){
                location.href="index.jsp?contentPage=member/pro/ModifyFrom.jsp";
            }else if(val == "1"){       이거수정
                location.href="index.jsp?contentPage=member/pro/ModifyForm.jsp";  -->
    

</head>


<body>
 
<!--  String id = session.getAttribute("sessionID").toString(); 
String id = request.getParameter("id");
MemberDAO dao = MemberDAO.getInstance();
MemberBean memberBean = dao.getUserInfo(id); -->
<br>
       
          <!-- 프로필 수정 -->
        

      
          <div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered">
              <h1>프로필 설정<small>BABSAZO에서 사용할 프로필을 설정해주세요</small></h1>
              <h3 class="subheadline">기본 정보</h3></div>
        
        
        
        
             
       
                    <div class="form-group">
                <label>아이디</label>
                <input type="text" class="form-control form-control-lg" value="">
              </div>
              <div class="row">

                <div class="col-md-6"> <div class="form-group">
                    <label>이름</label>
                    <input type="text" class="form-control form-control-lg" placeholder="" value="">
                  </div>
              
              
              <div class="form-group">
                <label>이메일</label>
                <input type="text" class="form-control form-control-lg" value="">
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
              </div></div></div>
             
               <!--  <label>회원님은 어떤 분이신가요?</label>
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
              <div class="form-group">
              
                                     인스타그램으로 바꿔보까?
                <label>Linkedin</label>
                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-fw fa-linkedin"></i></span>
                  <input type="text" class="form-control form-control-lg" placeholder="">
                   
                </div>
              </div> -->
              
               <div class="form-group">
              <br>
              
              <h3 class="subheadline">거주지 또는 관심 BABSAZO 지역</h3>
               <div class="form-group">
                <label>예) 서울/종로구</label>
                <input type="text" class="form-control form-control-lg">
              </div>
              
              
              <div class="row">
              </div>
              
              <!-- 주소 / 관심지역설정(?) 일단보류
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
                  --> 
                  
                  
              <hr>
              <div class="form-group action">
                <button type="submit" class="btn btn-lg btn-primary">프로필 수정</button>
              </div>
            </form>
          </div> 

  
<script>
var placeSearch, autocomplete;
var componentForm = {
	//street_number: 'short_name',
	//route: 'long_name',
	locality: 'long_name',
	administrative_area_level_1: 'long_name',
	country: 'long_name',
	postal_code: 'long_name'
};

function initAutocomplete() {
	autocomplete = new google.maps.places.Autocomplete((document.getElementById('autocomplete')), {types: ['geocode']});
	autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
	var place = autocomplete.getPlace();
	for (var component in componentForm) {
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
<script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete" async defer></script> 
<script>
	tinymce.init({
		selector: '.text-editor',
		height: 200,
		menubar: false,
		branding: false,
		plugins: [
			'lists link image preview',
		],
		toolbar: 'undo redo | link | formatselect | bold italic underline  | alignleft aligncenter alignright alignjustify | bullist numlist'
	});
        </script>
</body>
</html>