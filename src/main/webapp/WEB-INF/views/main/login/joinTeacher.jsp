<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 강사 회원가입 페이지입니다.</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/datepicker.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
      
<!-- jQuery ui -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- jQuery ui -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<!-- datepicker css (진행 중) -->
<style type="text/css">
/*** Date Picker ***/
.bootstrap-datetimepicker-widget.bottom {
    top: auto !important;
}

.bootstrap-datetimepicker-widget .table * {
    border-bottom-width: 0px;
}

.bootstrap-datetimepicker-widget .table th {
    font-weight: 500;
}

.bootstrap-datetimepicker-widget.dropdown-menu {
    padding: 10px;
    border-radius: 2px;
}

.bootstrap-datetimepicker-widget table td.active,
.bootstrap-datetimepicker-widget table td.active:hover {
    background: var(--primary);
}

.bootstrap-datetimepicker-widget table td.today::before {
    border-bottom-color: var(--primary);
}
</style>

<!-- 주소 API -->
<script type="text/javascript">
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}</script>

<!-- 캘린더 jQuery (스크롤 문제 있음. css 적용해봐야함)-->
<script type="text/javascript">
$(function() {
	alert("ㅎㅇ")
	//datepicker 설정
	 $.datepicker.setDefaults({
		dateFormat: 'yy-mm-dd',
		changeYear: true,
        changeMonth: true, 
		prevText: '이전 달',
		nextText: '다음 달',
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		showMonthAfterYear: true,
		yearSuffix: '년'
	});
	
	$(".datepicker").datepicker("getDate");
	
	$(".datepicker").datepicker({
		minDate: "-50Y",
		maxDate: "-1"
	});
})

</script>

<!-- 형식 체크 (진행 중) -->
<script type = "text/javascript">
	
	$(function(){
		/*
		아이디 형식 체크
		*/
		$("#teacherId").focusout(function(){
			isValidId();
		})
		
		function isValidId(){
			var id = $("#teacherId").val();
			
			var isNum = id.search(/[0-9]/g); //숫자 있는지 확인. 있으면 index 리턴. 없으면 -1. -> -1이면 안됨.
			var checkLow = /[a-z]/; //영소문자인지 확인 -> true를 반환해야함.
			var isUp = id.search(/[A-Z]/g); //영대문자 있는지 확인. 있으면 index 리턴. 없으면 -1. -> -1 리턴해야함.
			var isSpace = id.search(/\s/); //공백 있는지 확인. 없으면 -1. -> -1 리턴해야함.
			var specialChar = id.search(/[~!@#$%^&*?\|=]/gi); //특수문자 있는지 확인. -> -1리턴해야함
			var isKorean = id.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣/gi]); // -1리턴해야함.
			
			if(id.length<6 || id.length>10){ //길이 체크
				$("#notValidId").css("display", "inline-block");
				return false;
			}else if(!checkLow.test(id)){ //영소문자 체크  --> 확인해봐야함.
				$("#notValidId").css("display", "inline-block");
				return false;
			}else if(isNum<0 || isUp!=-1 || isSpace!=-1 || specialChar!=-1 || isKorean!= -1){ //숫자, 영대문자, 공백, 특수문자, 한글 체크
				$("#notValidId").css("display", "inline-block");
				return false;
			}else{
				$("#notValidId").css("display", "none");
				return true;
			}
		}
		
		/*
		비밀번호 형식 체크
		*/
		$("#teacherPwd").focusout(function(){
			isValidPwd();
		})
		
		function isValidPwd(){
			var id = $("#teacherPwd").val();
			
			var isNum = id.search(/[0-9]/g); //숫자 있는지 확인. 있으면 index 리턴. 없으면 -1. -> -1이면 안됨.
			var isLow = id.search(/[a-z]/g); //영소문자 있는지 확인. index 리턴. -> -1이면 안됨.
			var isUp = id.search(/[A-Z]/g); //영대문자 있는지 확인. 있으면 index 리턴. 없으면 -1. -> -1이면 안됨.
			var isSpace = id.search(/\s/); //공백 있는지 확인. 없으면 -1. -> -1 리턴해야함.
			var specialChar = id.search(/[~!@#$%^&*?\|=]/gi); //특수문자 있는지 확인. -> -1리턴해야함
			var isKorean = id.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣/gi]); // -1리턴해야함.
			
			if(id.length>7){ //길이 체크
				$("#notValidPwd").css("display", "inline-block");
				return false;
			}else if(isNum<0 || isUp<0 || isLow<0 || isSpace!=-1 || specialChar!=-1 || isKorean!=-1){ //숫자, 영대문자, 공백, 특수문자, 한글 체크
				$("#notValidPwd").css("display", "inline-block");
				return false;
			}else{
				$("#notValidPwd").css("display", "none");
				return true;
			}
		}
		
		/*
		핸드폰 번호 형식 체크
		*/
		$("#teacherPhone").focusout(function(){
			isValidPhone();
		})
		
		function isValidPhone(){
			var phone = $("#teacherPhone").val();
			var validNum = /^010?([0-9]{8})$/;
			
			if(!validNum.test(phone)){
				$("#notValidPhone").css("display","inline-block");
				return false;
			}else{
				return true;
			}
		}
		
		/*
		이메일 형식 체크
		*/
		$("#teacherEmail").focusout(function(){
			isValidEmail();
		})
		
		function isValidEmail(){
			var email = $("#teacherEmail").val();
			var validEmail = "\w+@\w+\.\w+(\.\w+)?";
			
			var result = email.match(validEmail);
			
			if(!result){
				$("#notValidEmail").css("display","inline-block");
				return false;
			}else{
				return true;
			}
		}
	})
</script>

<!-- 중복 체크 (진행 중) -->
<script type="text/javascript">

	$(function(){
		isIdChecked = false;
		isPhoneChecked = false;
		isNickChecked = false;
		
		/*
		아이디 중복 체크
		*/
		${"#idCheck"}.click(function(){
			if(!isValidId()){
				alert("먼저 조건에 맞는 ID를 입력해주세요.")
				return;
			}
			if(("#teacherId").val()==""){
				alert("ID를 입력해주세요");
				return;
			}
			
			$.ajax({
				url: "/main/login/checkId",
				
				data: {
					userId : $("#teacherId").val()	//컨트롤러에서 요구하는 항목. 밑에 있는 항목이 아님.	
				},
				dataType: "text",
				success: function(data){
					if(){
						alert("이미 존재하는 아이디입니다.");
					}else{
						alert("사용 가능한 아이디입니다.");
						isIdChecked = true;
						return;
					}
				}, //success 끝
				error: function(err){
					alert(err + "에러 발생");
				}
				
			})
		})
		
		/*
		핸드폰 번호 중복 체크
		*/
		${"#phoneCheck"}.click(function(){
			
		})
		
		/*
		닉네임 중복 체크
		*/
		${"#nickCheck"}.click(function(){
			
		})
		
		/*
		아이디, 비밀번호, 핸드폰번호, 이메일 값 변경 시 중복 체크 리셋
		*/
		$("#teacherId").keyup(function(){
			
		})
	})	
	
</script>

</head>
<body>
<h1>강사 회원가입 페이지입니다.</h1>
  <section>
	<form name="insertForm" method="post" action="${pageContext.request.contextPath}/main/insert">
	  <h1> 강사 회원가입 </h1>
	    <div class="joinNotice"> * 표시가 있는 항목은 필수 항목입니다.</div>
	    <table>
	      <tr>
	          <th>* 강사 ID</th>
	          <td class=""><input type="text" id="teacherId" class="" name="teacherId" placeholder="영소문자와 숫자를 조합하여 최소 6자리 이상 10글자 이하로 입력해주세요." required="required"/>
	          <button type="button" class="" id="idCheck">중복체크</button>
	          <span id="notValidId">ID는 공백 없이 영소문자와 숫자를 조합하여 6글자 이상 10글자 이하로 입력해주세요</span>
	          <span id="idCheck_success">사용가능한 ID입니다^^</span></td>
	          <span id="idCheck_fail">이미 존재하는 ID입니다.</span></td>
	      </tr>
	      <tr>
	          <th>* 강사 비밀번호</th>
	          <td class=""><input type="password" id="teacherPwd" class="" placeholder="영소문자,대문자,숫자를 조합하여 최소 8자리 이상 입력해주세요." required="required"/>
	          <span id="notValidPwd">비밀번호는 공백 없이 영소문자,대문자,숫자를 조합하여 8글자 이상으로 입력해주세요</span></td>
	      </tr>
	      <tr>
	      	  <th>* 강사 비밀번호 확인</th>
	      	  <td><input type="password" id="teacherPwd2" class="" placeholder="비밀번호를 한번 더 입력해주세요." required="required"/>
	      	  <span id="pwdCheck_success">비밀번호가 일치합니다.</span>
	      	  <span id="pwdCheck_Fail">비밀번호가 일치하지 않습니다.</span></td>
	      </tr>
	      <tr>
	          <th>* 강사 이름</th>
	          <td><input type="text" id="teacherName" class="" placeholder="" required="required"/>
	      </tr>
	      <tr>
	          <th>* 강사 닉네임</th>
	          <td><input type="text" id="teacherNick" class="" placeholder="달콤스쿨에서 보여지는 강사님의 닉네임을 입력해주세요." required="required"/>
	          <button id="nickCheck" class="">중복체크</button>
	          <span id="nickCheck_success">사용가능한 닉네임입니다^^</span></td>
	          <span id="nickCheck_fail">이미 존재하는 닉네임입니다.</span></td>
	      </tr>
	      <tr>
	          <th>* 강사 핸드폰 번호</th>
	          <td><input type="text" id="teacherPhone" class="" placeholder="'-'를 제외하고 010으로 시작하는 핸드폰 번호 11자리를 입력해주세요." required="required"/>
	          <button id="phoneCheck" class="">중복체크</button>
	          <span id="notValidPhone">'-'를 제외하고 010으로 시작하는 핸드폰 번호 11자리를 입력해주세요.</span>
	          <span id="phoneCheck_success">사용가능한 번호입니다.</span></td>
	          <span id="phoneCheck_fail">이미 가입한 이력이 있는 번호입니다.</span></td>
	      </tr>
	      <tr>
	          <th>강사 공개 연락처</th>
	          <td><input type="text" id="teacherNick" class="" placeholder="달콤스쿨에서 보여지는 강사님의 번호를 입력해주세요." /></td>
	      </tr>
	      <tr>
	          <th>*강사 생년월일</th>
	          <td><input type="text" id="datepicker" class="datepicker form-control" readonly="readonly" required="required"/></td>
	      </tr>
	      <tr>
	          <th>*강사 이메일</th>
	          <td><input type="text" id="teacherEmail" class="" required="required"/></td>
	          <span id="notValidEmail">올바른 이메일 주소가 아닙니다.</span>
	      </tr>
	      <tr>
	          <th>강사 소개</th>
	          <td><textarea rows=""10 cols="50" id="teacherInfo" placeholder="강사님의 소개를 자유롭게 적어주세요^^"></textarea> </td>
	      </tr>
	      <tr>
	          <th>공방 이름</th>
	          <td><input type="text" id="placeName" class="" placeholder="사용하시는 공방의 이름을 설정해주세요."/></td>
	      </tr>
	      <tr>
	          <th>공방 위치</th>
	          <td></td>
	      </tr>
	      <tr>
	          <th>공방 주소</th>
	          <td>
				<input type="text" id="sample6_postcode" name="zipcode" class="form-control" readonly="readonly" >
				<input type="button" onclick="sample6_execDaumPostcode()" class="btn btn-outline-dark shadow-none" value="우편번호검색">
				<input type="text" id="sample6_address" name="addrAddr" class="form-control">
				<input type="text" id="sample6_detailAddress" name="addrDetailAddr" class="form-control" placeholder="상세주소1(선택)">
				<input type="text" id="sample6_extraAddress" name="addrRefAddr" class="form-control" placeholder="상세주소2(선택)">
			  </td>
	      </tr>
	  	</table>
	  	<div>
	  	<input type="submit" id="joinBtn" value="회원가입">
	  	<a href="../index.jsp" id="cancelBtn">취소</a>
	  	</div>
	</form>
  </section>
</body>
</html>