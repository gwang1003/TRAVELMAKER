<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<style>
body {
	background: white;
	display: table;
	margin-top: 0;
	margin-left: auto;
	margin-right: auto;
	width: 1000px;
	height: 100%;
}

.outer {
	width: 500px;
	height: 650px;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 150px;
	border: 1px solid black;
}

table {
	height: 90%;
}

#joinForm {
	height: 70%;
}

#joinForm td {
	text-align: center;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	height: 11%;
}

#passExp, #passCorrect {
	color: red;
	display: none;
}

input {
	margin-top: 2px;
}

button {
	height: 22px;
	width: 90px;
	background: darkgray;
	border: darkgray;
	color: white;
	border-radius: 5px;
}

button:hover {
	cursor: pointer;
	background: salmon;
}

#idCheck, #pwdResult {
	margin: auto;
}

#pwdResult {
	text-align: left;
}

#logo {
	margin-left: auto;
	margin-right: auto;
}

.mimg {
	margin-left: auto;
	margin-right: auto;
	width: 150px;
	height: 30%;
}

.mimg img {
	width: 150px;
	height: 60%;
	border-radius: 50%;
}

tr {
	height: 50px;
}

#jo {
	width: 79px;
}

#email {
	width: 76px;
}

.btns {
	width: 100%;
	height: 10%;
}

.btns button {
	background: skyblue;
	width: 50%;
	height: 100%;
	float: left;
	border-radius: 0px;
	box-sizing: border-box;
}

.btns button:hover {
	background: salmon;
}
</style>
</head>
<body>
	<!-- 페이지를 이동해도 menubar는 계속 상단에 노출되도록 하자 -->

	<!-- 1. 회원 가입 -->
	<!-- 1_1. 회원가입 폼 작성 -->
	<div class="outer">
		<div class="mimg">
			<img id="logo" src="img/로고.png" width="100px">
			<h2 align="center">회원가입</h2>
		</div>


		<form id="joinForm" name="joinForm"
			action="<%= request.getContextPath() %>/insert.me" method="post"
			>
			<!-- onsubmit="return joinValidate();" -->
			<table>
				<tr>
					<td width="200px">아이디</td>
					<td><input type="text" maxlength="13" name="mId" required></td>
					<td width="200px">
						<button id="idCheck" type="button">중복확인</button>
					</td>
				</tr>

				<tr>
					<td>비밀번호</td>
					<td><input type="password" maxlength="15" name="pass" required></td>
					<td><label id="passExp">비밀번호는 9자리 이상 13자리 이하, 영문과 숫자
							조합입니다</label></td>
				</tr>


				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" maxlength="15" name="passCheck"
						required></td>
					<td><label id="passCorrect">비밀번호가 일치하지 않습니다</label></td>
				</tr>

				<tr>
					<td>이름</td>
					<td><input type="text" maxlength="5" name="mName" required></td>
				</tr>

				<tr>
					<td>주민등록번호</td>
					<td><input type="text" id="jo" name="mNo1">-<input
						type="text" id="jo" name="mNo2"></td>
				</tr>

				<tr>
					<td>닉네임</td>
					<td><input type="text" maxlength="5" name="nickName" required></td>
				</tr>

				<tr>
					<td>연락처</td>
					<td><input type="tel" maxlength="11" name="phone"
						placeholder="(-없이)01012345678"></td>
				</tr>

				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" id="email">@<select
						id="email" name="email2">
							<option value="naver.com">naver.com</option>
							<option value="naver.com">daum.net</option>
							<option value="naver.com">hanmail.net</option>
							<option value="naver.com">google.com</option>
					</select></td>
					<td width="200px"><button id="idCheck" type="button"
							onclick="checkId()">이메일 인증</button></td>
				</tr>
			</table>
			<div class="btns" align="center">
				<button id="toMain" onclick="returnToMain()" type="button">메인으로</button>
				<button id="joinBtn">가입하기</button>
			</div>
		</form>
	</div>


	<script>
      
      // 1. 메인으로 돌아가기
      function returnToMain(){
         location.href="<%= request.getContextPath() %>";
      }
   
      // 2. 유효성 검사
      function joinValidate(){
         if(!(/^[a-z][a-z\d]{3,11}$/.test($("#joinForm input[name=userId]").val()))){
            alert('아이디는 영소문자로 시작해서 4~12자 입력(숫자 포함 가능)');
            $("#joinForm input[name=userId]").select();
            return false;
         }
         
         if($("#joinForm input[name=userPwd]").val() != $("#joinForm input[name=userPwd2]").val()){
            $("#pwdResult").text("비밀번호 불일치").css("color","red");
            return false;
         }
         /* id check
         if(!(/^[가-힣]{2,}$/.test($("#joinForm input[name=userName]").val()))){
            alert('이름은 한글로 2글자 이상 입력');
            $("#joinForm input[name=userName]").select();
            return false;
         } */
         
         return true;
         
      }
   
      // id 중복체크 
      $(function() {
			var isUsable = false;
			// 아이디 중복시 false, 아이디 사용 가능시 true -> 나중에 유효성 검사
			
			$("#idCheck").click(function() {
				var mId = $("#joinForm input[name='mId']");
				
				if(!mId || mId.val().length < 4) {
					alert("아이디는 최소 4자리 이상이어야 합니다.");
					mId.focus();
				}else {
					$.ajax({
						url : "<%= request.getContextPath() %>/idCheck.me",
						type : "post",
						data : {mId:mId.val()},
						success : function(data) {
							if(data == "fail") {
								alert("사용할 수 없는 아이디입니다.");
								mId.focus();
							}else {
								if(confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")) {
									userId.prop('readonly', true); 
									isUsable = true;
									// -> 사용 가능하다는 flag값
								}else {
									mId.focus();
								}
							}
							
							if(isUsable) {
								$("#joinBtn").removeAttr("disabled");
							}
						},
						error : function() {
							console.log('서버 통신 안됨');
						}
					});
				}
		});
			
			// pwd 정규식
			var passExp = /^[a-zA-z0-9]{9,13}$/;
	    	 $("input[name=pass]").focusout(function() {
	    		 if(passExp.test($(this).val())) {	
	    			 $('#passExp').css('display', 'none');
	    		 }else {
	    			 $('#passExp').css('display', 'unset');
	    		 }
	    	 });
	    	 
	    	 // pwd 일치 여부 확인
	    	 $("input[name=passCheck]").focusout(function() {
		    	 var pass1 = $("input[name=pass]").val();
		    	 var pass2 = $("input[name=passCheck]").val();
	    		 
		    	 if(pass1 == pass2) {
		    		 $('#passCorrect').css('display', 'none');
		    	 }else {
		    		 $('#passCorrect').css('display', 'unset');
		    	 }
	    	 });
	    	 
      });
   </script>

</body>
</html>