<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dalcommschool.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Insert title here</title>


    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

   
  

<style type="text/css">
	#askCategory{
		width: 150px;
		height: 40px;
	}
	.mainImgCon,#input-image {
			display: none;
		}

	
</style>

<script type="text/javascript">
	    	$(document).ready(function() {
				$('#summernote').summernote({
					height: 300,
					minHeight: null,
					maxHeight: null,
					focus:true,
					lang: "ko-KR",
					placeholder: '최대 2048자까지 쓸 수 있습니다.'
				
				});
			});
   	
	    	
	    	$(function(){
	    		
	    		$(".mainFileBtn").click(function() {
					$("#input-image").click()
				})
				
				$("img").click(function() {
				    $(".mainImgCon").css("display", "none")
				    $("#preview-image").attr("src", "")
				    $(".mainFileBtn").css("display", "block")
				    $("#input-image").val("")
				})
				
				function readImage(input) {
				    // 인풋 태그에 파일이 있는 경우
				    if(input.files && input.files[0]) {
				        // FileReader 인스턴스 생성
				        var reader = new FileReader()
				        // 이미지가 로드가 된 경우
				        reader.onload = e => {
				        	var previewImage = document.getElementById("preview-image")
				            previewImage.src = e.target.result
				        }
				        // reader가 이미지 읽도록 하기
				        reader.readAsDataURL(input.files[0])
				    }
				}
				// input file에 change 이벤트 부여
				var inputImage = document.getElementById("input-image")
				inputImage.addEventListener("change", e => {
				    readImage(e.target)
				    $(".mainImgCon").css("display", "block")
				    $(".mainFileBtn").css("display", "none")
				})
	    	})
	    	

	    	
	    	
   </script>
</head>
<body>

<div class="main-content">
	<table align="center" class="table">
			<form name="writeForm" method="post" action="${pageContext.request.contextPath}/main/board/askanswer/insertStudent?${_csrf.parameterName}=${_csrf.token}" 
			enctype="multipart/form-data">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> <!-- csrf token 전송 -->
			<tr>
				<td>
					 <select name="askCategoryId" id="askCategory" class="form-select" aria-label="Default select example">
						  <option value="">카테고리 종류</option>
						  <option value="1">클래스</option>
						  <option value="2">결제</option>
						  <option value="3">환불</option>
						  <option value="4">후기</option>
						  <option value="5">탈퇴</option>
					</select>
				</td>
			</tr> 	
		<!-- <table> -->
		    <tr>
		        <td>
		            ID : <input type="text" name="studentId"><p>
		        </td>
		    </tr>
		    <tr>
		        <td>
		           	문의 제목 : <input type="text" name="askTitle"><p>
		        </td>
		    </tr>
		    <tr>
		    	<td>
		    		문의 내용 : <textarea name="askContent" id="summernote"></textarea><p>
		    	</td>
		    </tr>
		    <!-- <tr>
		    	<td>
		    		첨부 이미지 :<input type="file" name="file" multiple="multiple"><p>
		    	</td>
		  	</tr>  -->
		  	
				<tr>
					<td>
						<div class="mb-3">
							<div class="image-container mainImgCon">
							    <a><img id="preview-image" src=""></a>
							</div>
							<button type="button" class="fileBtn mainFileBtn">
								<i class="fa-regular fa-image fa-2xl"></i>
								첨부 이미지 추가
							</button>
							<input type="file" id="input-image" name="file">
						</div>
					</td>
				</tr>
		  	
		  	
		  	
		   	<!-- <tr>
		        <td width="150" height="20">
		            <p align="right"><b><span style="font-size:9pt;">*파일첨부</span></b></p>
		        </td>
		        <td width="450" height="20">
		        	<b><span style="font-size:9pt;">
		        		 <input type="file" name="file" maxlength="60" size="40">
		        	   </span></b>
		        </td>
		    </tr>  -->
		    
		<!-- </table> -->
			<tr>
				<td>
		        <span><input type=submit value=글쓰기></span> 
		        <span><input type=reset value=다시쓰기></span>
		    	</td>
		    </tr>
		</form>
	</table>
</div>
</body>
</html>