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
	width: 1200px;
	height: 1000px;
}

.outer {
	width: 50%;
	height: 80%;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 100px;
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

#passExp, #passCorrect, #nameExp, #noExp, #nickNameExp, #phoneExp {
	font-size: 12px;
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
	cursor: pointer;
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
			<img id="logo" src="<%= request.getContextPath() %>/resources/images/로고.png" width="100px" onclick="location.href='<%= request.getContextPath() %>'">
			<h2 align="center" style="user-select:none;">회원가입</h2>
		</div>


		<form id="joinForm" name="joinForm" <%-- action="<%= request.getContextPath() %>/insert.me" method="post" --%>>
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
					<td><label id="nameExp">이름은 한글로 2글자에서 4글자 사이입니다</label></td>
				</tr>

				<tr>
					<td>생년월일</td>
					<td><input type="text" id="jo" name="mNo1" required>
					<td><label id="noExp">생년월일은 총 6자리입니다</label></td>
				</tr>

				<tr>
					<td>닉네임</td>
					<td><input type="text" maxlength="6" name="nickName" id="nickName" required></td>
					<td><label id="nickNameExp">이미 존재하는 닉네임입니다</label></td>
				</tr>

				<tr>
					<td>연락처</td>
					<td><input type="tel" maxlength="11" name="phone" required
						placeholder="(-없이)010-1234-5678"></td>
					<td><label id="phoneExp">휴대폰 번호는 010, 011로 시작하며 11자리여야 합니다</label></td>
				</tr>

				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" id="email" required>@<select
						id="email2" name="email2">
							<option value="naver.com">naver.com</option>
							<option value="naver.com">daum.net</option>
							<option value="naver.com">hanmail.net</option>
							<option value="naver.com">google.com</option>
					</select></td>
					<td width="200px">
						<div><button id="emailCheck" type="button">이메일 인증</button></div>
						<div><input type="text" id="key" style="width:100px;" placeholder="인증번호입력"></div>
					</td>
				</tr>
			</table>
			<div class="btns" align="center">
				<button id="toMain" onclick="returnToMain()" type="button">메인으로</button>
				<button id="joinBtn">가입하기</button>
			</div>
		</form>
	</div>


	<script>
	
	
		var checkId, checkPwd1, checkPwd2, checkName, checkNo1, checkNickName, checkPhone, checkEmail; 
		checkId = false;
		checkPwd1 = false;
		checkPwd2 = false;
		checkName = false;
		checkNo1 = false;
		checkNickName = false;
		checkPhone = false;
		checkEmail = false;
      
      function returnToMain(){
         location.href="<%= request.getContextPath() %>";
      }
   
      // id 중복체크 
      $(function() {
			var isUsable = false;
			
			$("#idCheck").click(function() {
				var mId = $("#joinForm input[name=mId]");
				console.log("<%= request.getContextPath() %>/idCheck.me");
				if(!mId || mId.val().length < 6) {
					alert("아이디는 최소 6자리 이상이어야 합니다.");
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
									mId.prop('readonly', true); 
									isUsable = true;
								}else {
									mId.focus();
								}
							}
							
							if(isUsable) {
								checkId = true;
							}
						},
						error : function(request, status, error) {
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					});
				}
		});
			
			// pwd 정규식
			var passExp = /^[a-zA-z0-9]{9,13}$/;
	    	 $("input[name=pass]").focusout(function() {
	    		 if(passExp.test($(this).val())) {	
	    			 $('#passExp').css('display', 'none');
	    			 checkPwd1 = true;
	    		 }else {
	    			 $('#passExp').css('display', 'unset');
	    			 checkPwd1 = false;
	    		 }
	    	 });
	    	 
	    	 // pwd 일치 여부 확인
	    	 $("input[name=passCheck]").focusout(function() {
		    	 var pass1 = $("input[name=pass]").val();
		    	 var pass2 = $("input[name=passCheck]").val();
	    		 
		    	 if(pass1 == pass2) {
		    		 $('#passCorrect').css('display', 'none');
		    		 checkPwd2 = true
		    	 }else {
		    		 $('#passCorrect').css('display', 'unset');
		    		 checkPwd2 = false;
		    	 }
	    	 });
	    	 
	    	 // 이름이 한글로 올바르게 적혀 있는지
	    	 var nameExp = /^[가-힣]{2,3}$/;
	    	 $("input[name=mName]").focusout(function() {
	    		 if(nameExp.test($(this).val())) {	
	    			 $('#nameExp').css('display', 'none');
	    			 checkName = true;
	    		 }else {
	    			 $('#nameExp').css('display', 'unset');
	    			 checkName = false;
	    		 }
	    	 });
	    	 
	    	 // 주민번호 형식이 맞는지
	    	 var noExp = /^[0-9]{6}$/;
	    	 $("input[name=mNo1]").focusout(function() {
	    		 if(noExp.test($(this).val())) {	
	    			$('#noExp').css('display', 'none');
	    			checkNo1 = true;  
	    		 }else {
	    			 $('#noExp').css('display', 'unset');
	    			 checkNo1 = false;
	    		 }
	    	 });
	    	 
	    	 // 닉네임 길이 확인 및 중복확인
	    	 $("input[name=nickName]").focusout(function() {
	    		 var nick = $("#joinForm input[name=nickName]");
	    		 $.ajax({
						url : "<%= request.getContextPath() %>/nicknameCheck.me",
						type : "post",
						data : {nick:nick.val()},
						success : function(data) {
							if(nick.val().length < 2) {
								
							}else {
								if(data == "fail") {
									$("#nickNameExp").css('display', 'unset');
									nick.focus();
									checkNickName = false;
								}else {
									$("#nickNameExp").css('display', 'none');
									checkNickName = true;
								}
							}
						},
						error : function() {
							console.log('서버 통신 안됨');
						}
					});
	    	 });
	    	 
	    	 // 연락처 11자리, 앞은 010 또는 011로 시작
	    	 $('input[name=phone]').focusout(function() {
	    		 var phone = $('input[name=phone]');
	    		 if(phone.val().length == 11 && (phone.val().substring(0,3) == "010" || phone.val().substring(0,3) == "011")) {
	    			 $("#phoneExp").css('display', 'none');
	    			 checkPhone = true;
	    		 }else {
	    			 $("#phoneExp").css('display', 'unset');
	    			 checkPhone = false;
	    		 }
	    		 
	    	 });
	    	 
	    	 var key;
	 		$(function() {
	 			$("#emailCheck").click(function(){
	 				var email = $("#email").val() + '@' + $("#email2").val();
	 				$.ajax({
	 					// url : 데이터를 전송할 url(필수!!!)
	 					url : "<%= request.getContextPath() %>/mail.mo",
	 					
	 					// data : 요청 시 전달할 파라미터 설정
	 					data : {email:email},
	 					// key:value
	 					
	 					// type : 전송 방식(GET / POST)
	 					type : "get",
	 					
	 					// success : Ajax 통신 성공 시 처리할 함수를 지정하는 속성
	 					success : function(result){
	 						// result 매개변수 : 서버에서 응답이 왔을 때 그 값이 저장 되는 변수
	 						// 매개변수명 임의 지정 가능
	 						key = result;
	 						checkEmail = true;
	 					},
	 					
	 					// error : Ajax 통신 실패 시 처리할 함수를 지정하는 속성
	 					error : function(){
	 						console.log('Ajax 통신 실패...');
	 						checkEmail = false;
	 					}					
	 				});
	 			});
	 		})
	    	 
	    	 $("#joinBtn").click(function() {
	    		 if(checkId == true && checkPwd1 == true && checkPwd2 == true && checkName == true 
		    				&& checkNo1 == true && checkNickName == true && checkPhone == true
		    				&& $("#key").val() == key) {
		    			$("#joinForm").attr("method", "post");
		    			$("#joinForm").attr("action", "<%= request.getContextPath() %>/insert.me");
		    			alert("회원가입에 성공하였습니다");
		    	}else { 
		    			if(checkId == false) {
		    				alert("아이디를 체크해주세요");
		    			}else if(checkPwd1 == false) {
		    				alert("비밀번호를 체크해주세요");
		    			}else if(checkPwd2 == false) {
		    				alert("비밀번호 확인을 체크해주세요");
		    			}else if(checkName == false) {
		    				alert("이름을 체크해주세요");
		    			}else if(checkNo1 == false) {
		    				alert("생년월일을 체크해주세요");
		    			}else if(checkNickName == false) {
		    				alert("닉네임을 체크해주세요");
		    			}else if(checkPhone == false) {
		    				alert("연락처를 체크해주세요");
		    			}else if($("#key").val() != key){
		    				alert("이메일 및 인증번호를 체크해주세요");
		    			}else{
		    				
		    			}
		    	} 
	    	 });
      });
   </script>

</body>
</html>