<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.Member"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>마이페이지</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
		#mypage-menu li {
			
		}
		
		.page {
			cursor:pointer;
		}
		
		.no {
			user-select:none;
		}
	</style>

<!-- 메뉴바 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial;
}

/*nav part*/
nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100px;
	padding: 10px 90px;
	box-sizing: border-box;
	background: rgba(54, 51, 51, 0.5);
	z-index: 1;
}

nav .logo {
	padding: 22px 20px;
	height: 80px;
	float: left;
	font-size: 24px;
	font-weight: bold;
	text-transform: uppercase;
	color: #fff;
}

nav ul {
	list-style-type: none;
	float: right;
	padding: 0;
	margin: 0;
	display: flex;
	z-index: 1;
}

nav li {
	z-index: 1;
}

nav ul li a {
	line-height: 80px;
	color: #fff;
	padding: 12px 30px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 15px;
	font-weight: bold;
	z-index: 1;
}

nav ul li a:hover {
	background: rgba(0, 0, 0, 0.7);
	border-radius: 5px;
	text-decoration: none;
	color: #fff;
}

nav ul li a.active {
	background: #e2472f;
	color: #fff;
	border-radius: 6px;
}

#guestBook {
	background: url("images/s3bg1.jpg");
	position: relative;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

/* section2 timeline*/
/*responsive web part*/
@media ( max-width :820px) {
	.menuToggle {
		position: absolute;
		width: 40px;
		height: 40px;
		display: block;
		float: right;
		top: 25px;
		right: 35px;
		text-align: center;
		font-size: 35px;
		cursor: pointer;
	}
	.menuToggle:before {
		line-height: 40px;
		content: '\f0c9';
		font-family: fontAwesome;
		color: white;
	}
	.menuToggle.active:before {
		line-height: 40px;
		content: '\f00d';
		font-family: fontAwesome;
		color: white;
	}
	.menuToggle:before {
		line-height: 40px;
		content: '\f0c9';
		font-family: fontAwesome;
		color: white;
	}
	#navUl {
		display: none;
	}
	#navUl.active {
		display: block;
		width: 100%;
		background: rgba(54, 51, 51, 0.5);
		margin-top: 10px;
	}
	#navUl.active li {
		text-align: center;
	}
	#navUl.active li a {
		display: block;
	}
	nav {
		padding: 10px 30px;
	}
}

/*time line*/
</style>

<!-- 영역 분할 -->
<style>
#body {
	margin-top: 180px;
	width: 1500px;
	height: 1000px;
	display: flex;
	flex-direction: row;
	margin-left: auto;
	margin-right: auto;
}

aside {
	margin-left: 15%;
	width: 15%;
	height: 100%;
	margin-right: 5%;
}

#marginBody {
	width: 65%;
}

#my-info-section1 {
	width: 80%;
	height: 220px;
}

/* aside -> my-info-section2 */
#my-info-section2 {
	width: 80%;
	height: 520px;
}

#my-info-section4 {
	width: 63%;
	float: left;
	margin-left: 2%;
}

#my-info-section5 {
	width: 40%;
	float: left;
}

ul a {
	color: black;
}
</style>

<!-- aside->section1 css -->
<style>
#my-info {
	width: 100%;
	height: 100%;
	background-color: cornflowerblue;
}

#my-info-text {
	text-align: center;
	color: white;
	margin-bottom: 40px;
}

#my-info-section1 img {
	margin-left: 35px;
	width: 80px;
	height: 80px;
	float: left;
}

#name {
	font-size: 24px;
	font-weight: bold;
}

.myinfo-button {
	border: 1px solid white;
	width: 50%;
	background-color: cornflowerblue;
	color: white;
	font-size: 13px;
	height: 40px;
}

#my-info-logout {
	float: left;
}

@media only screen and (max-width: 2000px) {
	#my-info-section1 {
		width: 220px;
	}
	#my-info-section2 {
		width: 220px;
	}
}
</style>

<!-- aside->section2 css -->
<style>
#my-info-section2 {
	margin-top: 50px;
}

aside {
	float: left;
}

#mypage-menu {
	border: 1px solid black;
	margin-top: 30px;
	width: 100%;
	height: 80%;
}

#mypage-menu ul {
	text-decoration: none;
	list-style-type: none;
	font-size: 18px;
}

#mypage-menu ul {
	margin: 0;
}

#mypage-menu ul li {
	margin-bottom: 15px;
}

.bigContent {
	font-size: 23px;
	font-weight: bold;
	margin-top: 13px;
	color: cornflowerblue;
}
</style>

<!-- 변경바 -->
<style>
.outer {
	margin-left: 70px;
	width: 800px;
	height: 1000px;
	background: white;
	color: black;
}

#joinForm {
	height: 65%;
	box-sizing: border-box;
}

#joinForm td {
	/* text-align:center; */
	font-size: 14px;
	font-weight: bolder;
}

input {
	margin-top: 2px;
}

button {
	height: 30px;
	width: 120px;
	background: darkgray;
	border: darkgray;
	color: white;
	border-radius: 5px;
}

button:hover {
	cursor: pointer;
	background: salmon;
}

#pwdResult {
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
	margin-left: 40px;
	margin-right: auto;
	width: 150px;
	height: 15%;
	box-sizing: border-box;
}

.mimg img {
	width: 150px;
	height: 100%;
	border-radius: 50%;
	transform: translateX(130px);
}

tr {
	padding: 0;
}

#jo {
	width: 79px;
}

#email {
	width: 88px;
}

.outer table {
	margin-left: 30px;
	width: 100%;
	height: 70%;
}

.btns {
	width: 100%;
	height: 30%;
	margin-top: 30px;
	margin-left: 110px;
}

.btns button {
	background: skyblue;
	width: 100px;
	height: 50px;
	float: left;
	border-radius: 0px;
	box-sizing: border-box;
}

.btns button:hover {
	background: salmon;
}

.btns div {
	box-sizing: border-box;
}

td {
	padding: 0;
}

.cen {
	height: 20%;
}

h2 {
	margin: 0;
}

.cen h2, .cen button {
	box-sizing: border-box;
}

.outer hr {
	width: 60%;
}

#logoText {
	width: 300px;
	text-align: center;
	transform: translate(60px);
}

#passExp, #passCorrect, #nickNameExp, #phoneExp {
	font-size: 12px;
	color: red;
	display: none;
}
</style>

</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
	<section id="body">
		<aside>
			<section id="my-info-section1">
				<div class="my-info" id="my-info">
					<h3 id="my-info-text">마이페이지</h3>
					<img onclick="profileUpdate();"
						src="<%= request.getContextPath() %>/resources/myplan_upload/<%= loginUser.getProfile() %>"><br>
					<% System.out.println(request.getContextPath()); %>
					<p id="name">&nbsp;&nbsp;&nbsp;<%= loginUser.getmName() %></p>
					<br> <br>
					<button class="myinfo-button" id="my-info-logout"
						onclick="logout();">로그아웃</button>
					<button class="myinfo-button" id="my-info-modify"
						onclick="infoModify();">회원정보 수정</button>
				</div>
				<script>
                	function logout() {
            			location.href="<%= request.getContextPath() %>/logout.me";
            		}
            	
            		function infoModify() {
            			location.href="<%= request.getContextPath() %>/views/myPage/Info-update.jsp"
            		}
            		
            		// 프로필 
            		function profileUpdate() {
            			var left = (screen.width/2)-135;
            	    	var top = (screen.height/2)-115;
            	   		var url = "<%= request.getContextPath() %>/views/myPage/ProfileUpdate.jsp";
            	    	var uploadWin = window.open(url,"Upload","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=270px, height=230px" + ",top=" + top + ",left=" + left);
            	    	uploadWin.moveTo(left, top);
            	    	uploadWin.focus();
            		}
                </script>
			</section>

			<section id="my-info-section2">
				<div id="mypage-menu">
					<ul>
						<li class="bigContent no">나의 활동</li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/Plan.jsp';">나의
								계획</a></li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/Board.jsp';">내가
								쓴 게시글</a></li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/Basket.jsp';">장바구니</a></li>

						<hr>
						<li class="bigContent no">개인정보 관리</li>
						<li class="no" style="font-weight: bold"><a class="page"
							onclick="location.href='<%= request.getContextPath() %>/views/myPage/Info-update.jsp.jsp';">회원정보 수정</a></li>

						<hr>
						<li class="bigContent no">고객센터</li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/ServiceCenter.jsp';">문의
								내역</a></li>
					</ul>
				</div>
			</section>
		</aside>

		<!-- 1. 회원 가입 -->
		<!-- 1_1. 회원가입 폼 작성 -->
		<section id="outer">
			<div class="outer">
				<div class="mimg">
					<img id="logo" src="<%= request.getContextPath() %>/resources/images/로고.png" width="100px"><br>
					<h2 align="center" id="logoText">회원정보 수정</h2>
				</div>
				<div class="cen"></div>
				<form id="updateForm" name="updateForm">
					<table>
						<tr>
							<td>이름<input type="text" disabled
								value="<%=loginUser.getmName()%>" style="margin-left: 68px;">
								<hr>
							</td>
						</tr>

						<tr>
							<td>아이디<input type="text"
								placeholder="<%=loginUser.getmId()%>" style="margin-left: 52px;"
								id="upId" name="upId">
								<button id="idCheck" type="button">중복확인</button>
								<hr>
							</td>
						</tr>

						<tr>
							<td>비밀번호 <input type="password" maxlength="15" id="upPass"  name="upPass" style="margin-left: 34px"> <label id="passExp">비밀번호는
									9자리 이상 13자리 이하, 영문과 숫자 조합입니다</label>
								<hr>
							</td>
						</tr>


						<tr>
							<td>비밀번호 확인 <input type="password" maxlength="15" name="upPass2"
								id="upPass2" style="margin-left: 2px"> <label
								id="passCorrect">비밀번호가 일치하지 않습니다</label>
								<hr>
							</td>
						</tr>

						<tr>
							<td>닉네임<input type="text" id="upNick" name="upNick" maxlength="6"
								placeholder="<%=loginUser.getNickName()%>"
								style="margin-left: 52px;"> <label id="nickNameExp">이미
									존재하는 닉네임입니다</label>
								<hr>
							</td>
						</tr>

						<tr>
							<td>휴대폰 번호<input type="text"
								placeholder="<%=loginUser.getPhone()%>" id="upPhone" name="upPhone"
								style="margin-left: 20px;"> <label id="phoneExp">휴대폰
									번호는 010, 011로 시작하며 11자리여야 합니다</label>
								<hr>
							</td>
						</tr>

						<tr>
							<td>이메일
							<input type="text" name="upEmail" id="upEmail" value="<%= loginUser.getEmail().substring(0, loginUser.getEmail().indexOf("@")) %>" required>@
							<select
								id="upEmail2" name="upEmail2">
									<option value="naver.com">naver.com</option>
									<option value="naver.com">daum.net</option>
									<option value="naver.com">hanmail.net</option>
									<option value="naver.com">google.com</option>
							</select>
							</td>
							<td>
								<div style="margin-left:-450px;"><button id="emailCheck" type="button">이메일 인증</button></div>
								<div style="margin-left:-450px;"><input type="text" id="key" style="width:100px;" placeholder="인증번호입력"></div>
							</td>
						</tr>
					</table>
					<div class="btns" align="center">
						<div style="height: 50%"></div>
						<button id="toMain" onclick="returnToMain()" type="button">CANCEL</button>
						<button id="updateBtn">SUBMIT</button>
						<button id="deleteMember">회원탈퇴</button>
					</div>
				</form>
				
                <script>
                	$(function() {
                		$("#deleteMember").click(function() {
                			console.log("클릭");
                			if(window.confirm("정말 회원을 탈퇴하시겠습니까 ?\n" +
                					"한번 탈퇴한 회원은 복구가 불가능합니다")) {
                				location.href="<%= request.getContextPath() %>/delete.me";
                				window.alert("회원을 탈퇴하셨습니다");
                			}else {
                				window.alert("회원 탈퇴들 취소하셨습니다");
                			}
                		});
                	});
                </script>
			</div>

			<script>
				function returnToMain() {
					location.href="<%= request.getContextPath() %>";
				}
			
				var checkId, checkPwd1, checkPwd2, checkNickName, checkPhone, checkEmail;
				checkId = false;
				checkPwd1 = false;
				checkPwd2 = false;
				checkNickName = false;
				checkPhone = false;
				checkEmail = false;
				
				// id 중복체크 
			    $(function() {
						var isUsable = false;
						
						$("#idCheck").click(function() {
							var upId = $("#updateForm #upId");
							if(!upId || upId.val().length < 6) {
								alert("아이디는 최소 6자리 이상이어야 합니다.");
								upId.focus();
							}else {
								$.ajax({
									url : "<%=request.getContextPath()%>/updateId.me",
									type : "post",
									data : {upId:upId.val()},
									success : function(data) {
										if(data == "fail") {
											alert("사용할 수 없는 아이디입니다.");
											upId.focus();
										}else {
											if(confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")) {
												upId.prop('readonly', true); 
												isUsable = true;
											}else {
												upId.focus();
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
						var passExp = /^[a-zA-Z0-9]{9,13}$/;
				    	 $("#upPass").focusout(function() {
				    		 if(passExp.test($(this).val())) {	
				    			 $('#passExp').css('display', 'none');
				    			 checkPwd1 = true;
				    		 }else {
				    			 $('#passExp').css('display', 'unset');
				    			 checkPwd1 = false;
				    		 }
				    	 });
						
						// pwd 일치 여부 확인
				    	 $("#upPass2").focusout(function() {
					    	 var pass1 = $("#upPass").val();
					    	 var pass2 = $("#upPass2").val();
				    		 
					    	 if(pass1 == pass2) {
					    		 $('#passCorrect').css('display', 'none');
					    		 checkPwd2 = true
					    	 }else {
					    		 $('#passCorrect').css('display', 'unset');
					    		 checkPwd2 = false;
					    	 }
				    	 });
				    	 
				    	 // 닉네임 길이 확인 및 중복확인, 형식 확인
				    	 var nickExp = /^[a-zA-Z0-9가-힣]{1,6}$/;
				    	 $("#upNick").focusout(function() {
				    		 var nick = $("#updateForm #upNick");
				    		 $.ajax({
									url : "<%=request.getContextPath()%>/nicknameCheck.me",
									type : "post",
									data : {nick:nick.val()},
									success : function(data) {
										if(!(nickExp.test(nick.val()))) {
											$("#nickNameExp").css('display', 'unset');
											$("#nickNameExp").text("한글, 영어, 숫자들로 이루어진 값이어야 합니다");
											checkNickName = false;
										}else {
											if(data == "fail") {
												$("#nickNameExp").css('display', 'unset');
												$("#nickNameExp").text("이미 존재하는 닉네임입니다");
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

				    	 // 연락처 글자 11자리, 앞은 010 또는 011로 시작
				    	 $('#upPhone').focusout(function() {
				    		 var phone = $('#upPhone');
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
					 				var email = $("#upEmail").val() + '@' + $("#upEmail2").val();
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
				    	 
				    	 
				    	 $("#updateBtn").click(function() {
				    		 console.log(checkId + " " + checkPwd1 + " " + checkPwd2 + " " + checkNickName + " " + checkPhone);
				    		 if(checkId == true && checkPwd1 == true && checkPwd2 == true && 
				    				 checkNickName == true && checkPhone == true) {
				    			 	$("#updateForm").attr("method", "post");
					    			$("#updateForm").attr("action", "<%=request.getContextPath()%>/update.me");
					    			 alert("<%= request.getAttribute("msg") %>");
					    	}else { 
					    			if(checkId == false) {
					    				alert("아이디를 체크해주세요");
					    				location.href="#upId";
					    			}else if(checkPwd1 == false) {
					    				alert("비밀번호를 체크해주세요");
					    				location.href="#upPass";
					    			}else if(checkPwd2 == false) {
					    				alert("비밀번호 확인을 체크해주세요");
					    				location.href="#upPass2";
					    			}else if(checkNickName == false) {
					    				alert("닉네임을 체크해주세요");
					    				location.href="#upNick";
					    			}else if(checkPhone == false) {
					    				alert("연락처를 체크해주세요");
					    				location.href="#upPhone";
					    			}else if($("#key").val() != key){
					    				alert("이메일 및 인증번호를 체크해주세요");
					    			}else {
					    				
					    			}
					    	} 
				 		});
			    });
			</script>
		</section>
	</section>
	<%@ include file="../common/footer.jsp" %>
</body>

</html>