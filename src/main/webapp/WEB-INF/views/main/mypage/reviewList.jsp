<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#reviewDetail-form fieldset{display: inline-block; border: 0;}
	 	
	.fa-star{font-size: 10px; color: #b3b3b3; text-shadow: 0 0 0 #b3b3b3;}
	.checked {color: #ffab00;}
	
 	.modal img{ 
		width: 100px; 
 		height:100px; 
 	} 
	
 	.star{font-size: 2em; color: transparent; text-shadow: 0 0 0 #b3b3b3;}

</style>
<meta charset="UTF-8">
<title>학생 마이페이지용 리뷰 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/351ed6665e.js" crossorigin="anonymous"></script>

<script type="text/javascript">

$(function(){
	
	$(".list-reviewContent").click(function(){
		
		$.ajax({
			url:"${pageContext.request.contextPath}/review/read",
			type: "post",
			data:{"${_csrf.parameterName}": "${_csrf.token}",
				  "reviewId" : $(this).val()	
			},
			dataType:"json",
			success:function(result){
				let text = "";
				let rate = result.reviewRate;
				if(rate==1) {
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text +=	'<i class="fa-solid fa-star fa-sm"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
				}else if(rate==2){
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
				}else if(rate==3){
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
				}else if(rate==4){
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm"></i>';
				}else if(rate==5){
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
					text += '<i class="fa-solid fa-star fa-sm checked"></i>';
				}
				
				let str="";
				let image = `\${result.reviewImg}`;
								
				if(image!='null'){
					str += `<img class="reviewImg" src="${pageContext.request.contextPath}/img/classReview/\${result.reviewImg}">`;
				}
								
				$(".imgDiv").html(str);
				$("#reviewDetail-form .reviewRate").html(text);
				
				
				$("#reviewDetail-form .reviewId").val(`\${result.reviewId}`); //span, div 같은 태그에는 .html 속성으로 부여.
				$("#reviewDetail-form .studentId").val(`\${result.studentId}`);
				$("#reviewDetail-form .reviewInsertDate").val(`\${result.reviewInsertDate.toString().substring(0, 10)}`);
				$("#reviewDetail-form .reviewUpdateDate").val(`\${result.reviewUpdateDate.toString().substring(0, 10)}`);
				$("#reviewDetail-form .className").val(`\${result.className}`);
				$("#reviewDetail-form .reviewContent").html(`\${result.reviewContent}`);
			},
			error: function(err){
				alert(err + "에러 발생. - 상세보기");
			}
		})
	})

})
</script>	

</head>
<h3>내가 쓴 후기</h3>
<body>
	
	<table>
		  <thead>
		    <tr>
		      <th>별점</th>
		      <th>클래스 이름</th>
		      <th>내용</th>
		      <th>작성 날짜</th>
		    </tr>
		  </thead>
		  <tbody>
		    <c:choose>
		      <c:when test="${requestScope.classReviews.content==null}">
		        <tr>
		          <th colspan="7">
		            <span>등록된 후기가 없습니다.</span>
		          </th>
		        </tr>
		      </c:when>
		      <c:otherwise>
		        <c:forEach items="${classReviews.content}" var="review">
		          <div id="review">
		          <tr>
		            <td>
				    	<fieldset>
						  <c:choose>
						  	<c:when test="${review.reviewRate==1}">
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						  		<i class="fa-solid fa-star fa-sm"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						  	</c:when>
						  	<c:when test="${review.reviewRate==2}">
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						  	</c:when>
						  	<c:when test="${review.reviewRate==3}">
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						  	</c:when>
						  	<c:when test="${review.reviewRate==4}">
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm"></i>
						  	</c:when>
						  	<c:when test="${review.reviewRate==5}">
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						  		<i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm checked"></i>
						        <i class="fa-solid fa-star fa-sm checked"></i>
						  	</c:when>
						  </c:choose>
						</fieldset>
					</td>
		            <td><span>${review.classes.className}</span></td>
		            <td>
		            	<c:choose>
		            		<c:when test="${review.reviewBlindState eq 'true'}">
		            			<a>이 후기는 비공개 상태입니다.</a>
		            		</c:when>
		            		<c:when test="${review.reviewBlindState eq 'false'}">
		            			<button id="list-reviewContent" class="list-reviewContent" data-bs-toggle="modal" data-bs-target="#detailModal" value="${review.reviewId}">${review.reviewContent}</button>
		            			<c:if test="${review.reviewImg != null}">
									<i class="fa fa-file-image-o" aria-hidden="true"></i>
								</c:if>
		            		</c:when>
		            	</c:choose>
		            </td>
		            <td>
		            	<span><fmt:parseDate value="${review.reviewInsertDate}" pattern="yyyy-mm-dd" var="parseDate"/></span>
		            	<span><fmt:formatDate value="${parseDate}" pattern="yyyy-mm-dd"/></span>
		            </td>
		          </tr>
				  </div>
		        </c:forEach>
		      </c:otherwise>
		    </c:choose>
		  </tbody>
		</table>
	
		
	<!---------------------상세보기 모달 ------------------------------->
		<div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">후기 상세보기</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      
		      	<form id="reviewDetail-form">
			        <table id="table">
						<tr>
					    	<th>글번호</th>
					    	<td>
					    	  <div><input type="text" class="reviewId" readonly></div>
					    	</td>
					  	</tr>
					  	<tr>
					    	<th>클래스 이름</th>
					    	<td>
					    	  <div><input type="text" class="className" readonly></div>
					    	</td>
					  	</tr>
					  	<tr>
					    	<th>작성 날짜</th>
					    	<td>
					    	  <div><input type="text" class="reviewInsertDate" readonly></div>
					    	</td>
					  	</tr>
					  	<tr>
					    	<th>수정 날짜</th>
					    	<td>
					    	  <div><input type="text" class="reviewUpdateDate" readonly></div>
					    	</td>
					  	</tr>
					  	<tr>
					    	<th>별점</th>
					    	<td>
					    	  <div class="reviewRate"></div>
					    	</td>
					  	</tr>
					  	<tr>
					    	<th rowspan="2">후기</th>
					    	<td>
					    	  <div class="imgDiv"></div>
					    	</td>
					    </tr>
					    <tr>
					    	<td>
					    	  <div><textarea class="reviewContent" readonly></textarea></div>
					    	</td>
					  	</tr>
					</table>
				</form>
				
		      </div>
			</form>
		      </div>
		    </div>
		  </div>

	<!-- 페이징 처리 -->
		<div>
		  <nav class="pagination-container">
		    <div class="pagination">
		      <c:set var="doneLoop" value="false"/>
		      		<c:if test="${(startPage-blockCount)>0 }">
		      		  <a class="pagination-newer" href="${pageContext.request.contextPath}/main/mypage/reviewList?nowPage=${startPage-1}">이전</a>	      		
		      		</c:if>
		      		
		      		<span class="pagination-inner">
		      		  <c:forEach var='i' begin="${startPage}" end="${(startPage-1)+blockCount}">
		      		    
		      		    <c:if test="${(i-1)>=classReviews.getTotalPages()}">
		      		      <c:set var="doneLoop" value="true"/>
		      		    </c:if>
		      		    <c:if test="${not doneLoop}">
		      		      <a class="${i==nowPage?'pagination-active':page}" href="${pageContext.request.contextPath}/main/mypage/reviewList?nowPage=${i}">${i}</a>
		      		    </c:if>
		      		    
		      		  </c:forEach>
		      		</span>
		      		
		      		<c:if test="${(startPage+blockCount)<=classReviews.getTotalPages()}">
		      		  <a class="pagination-older" href="${pageContext.request.contextPath}/main/mypage/reviewList?nowPage=${startPage+blockCount}">다음</a>
		      		</c:if>
		    </div>
		  
		  </nav>
		</div>
	

</body>
</html>