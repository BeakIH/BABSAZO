<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html> 
<head><title> </title></head>
<body> 
<c:if test="${messege!=null}">
<script>
alert('${messege}');
</script> 
</c:if>
<div class="col-md-7 col-lg-8 col-xl-8">
            <div class="page-header bordered mt0">
              <h1>${storeNm} <small>우리 매장의 예약현황을 확인해보세요 </small></h1>
            </div>
            <div class="sorting">
              <div class="row justify-content-between">
              <div class="col-sm-5 col-md-5 col-lg-4 col-xl-4">
              <div class="form-group">
                  <select class="form-control ui-select">
                    <option selected="selected"> 정렬기준 </option>
                    <option>접수일순</option>
                    <option>예약일순</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6 col-md-5 col-lg-4 col-xl-3">
              <div class="btn-group float-right" role="group"> <a href="" class="btn btn-light"><i class="fa fa-th"></i></a> <a href="" class="btn btn-light active"><i class="fa fa-bars"></i></a> </div>
              </div>
              </div>                
            </div> 
            
            <div class="clearfix"></div>
            <div class="item-listing list">
            
         <c:forEach var="confirm" items="${confirmList}"> 
             <div class="item" data-aos="fade-up">
                <div class="row">
                  <div class="col-md-3">
                    <div class="item-image"> <img src="../../img/5.png" class="img-fluid" alt=""> </div>
                  </div>
                  <div class="col-md-9"> 
                  <c:choose>
                  <c:when test= "${confirm.cofirmYn=='N'}">
                  <a href="bookingList.do?store_no=${confirm.storeNo}&bk_no=${confirm.bkNo}" class="btn btn-primary float-right">수락</a> &nbsp;
              </c:when>
              <c:otherwise>
              <a href="bookingList.do?store_no=${confirm.storeNo}" class="btn btn-primary float-right"> 완료</a> &nbsp;
              </c:otherwise>
              </c:choose>
              <!-- <a href="agent.html" class="btn btn-primary float-right">거절</a> -->
                    <h3 class="item-title">예약자 : ${confirm.memNm }님 </a></h3>
                    <div class="item-description"> 예약번호 : ${confirm.bkNo }</i></div>
                    <div class="item-description"> 예약일시 : ${confirm.bkDate }</i></div>
                    <div class="item-description"> 예약메뉴 : ${confirm.bkMenu } </div> 
                <%-- <div class="item-description">예약인원(희망테이블수) : ${confirm.bk_cnt}명</div> --%>
                    <div class="item-description"> 예약자 연락처: ${confirm.memTel}</div>
                 </div>
                 <%-- 
                    <div class="item-actions"><!--  <a href="tel:02080226348"> -->
                       <i class="fa fa-phone"></i> 예약자 연락처: ${confirm.memTel} </a>
                       <i class="fa fa-plus-circle"></i> 메뉴 예상가: ${confirm.bkPriSum } 원 
                    </div>
                 --%>
              </div>
              
          
 </c:forEach>
           
            </div>
            <p>
            <a href="#" class="btn btn-lg btn-link btn-block">Load More <i
               class="fa fa-caret-down"></i></a>
         </p>
          </div>
</body>    

</html>