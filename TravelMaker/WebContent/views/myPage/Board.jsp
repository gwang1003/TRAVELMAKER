<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, board.model.vo.*"%>

<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	ArrayList<Board> blist = (ArrayList<Board>) request.getAttribute("blist");
	ArrayList<Attachment> flist = (ArrayList<Attachment>) request.getAttribute("flist");
	PageInfo pi = (PageInfo) request.getAttribute("pi");

	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();

	String lname = (String) request.getAttribute("lname");
	String mname = (String) request.getAttribute("mname");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>마이페이지</title>

<link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
#mypage-menu li {
	
}

.page {
	cursor: pointer;
}

.no {
	user-select: none;
}
</style>

<!-- 메뉴바 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="external.css">
<style>
body {
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
/* 몸체 */
body {
	width: 1500px;
	height: 800px;
	overflow: auto;
	margin-top: 180px;
	margin-left: auto;
	margin-right: auto;
}

#body {
	margin-top: 4%;
	display: flex;
	flex-direction: row;
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

#my-info-section3 {
	width: 63%;
	float: left;
	margin-left: 2%;
}

ul a {
	color: black;
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
	padding-left: 20%;
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

<!-- board -->
<style>
#total {
	width: 600px;
	height: 400px;
}

#choice1 {
	float: left;
	width: 500;
	height: 500px;
	margin-left: 120px;
	border: 1px solid black;
	padding: 0;
	background: white;
	border-radius: 10px;
}

#ct {
	width: 380px;
}

#choice2 {
	position: fixed;
	margin-left: 1200px;
	top: 220px;
	border-radius: 12px;
	border: 3px solid white;
	background-color: white;
	color: black;
	width: 17%;
	height: 520px;
	text-align: center;
	box-shadow: 5px 5px 5px 5px gray;
}

.btn-outline-info {
	width: 100px;
	height: 40px;
	margin: auto;
	font-size: 17px;
	border: none;
	color: black;
}

.btn-outline-info:hover {
	background-color: black;
	color: white;
}

.tag>h3 {
	color: white;
	margin: auto;
	margin-top: auto;
	text-align: center;
	margin: 6px 0px;
	height: 20px;
	font-size: 25px;
}

.info-btn {
	float: right;
	font-weight: 700;
	color: black;
	background-color: white;
	border-radius: 10px;
	margin: 6px 0px;
	height: 38px;
}

.in-wrap {
	width: 100%;
	height: 100%;
}

.thumb-pic {
	box-sizing: border-box;
	margin: auto;
	width: 30%;
	height: 100%;
}

.stage {
	box-sizing: border-box;
	width: 70%;
	height: 150px;
}

.stage>h2, p {
	color: black;
	vertical-align: top;
	text-align: center;
}

.stage>h2 {
	margin: auto;
}

.thumb-pic>img {
	box-sizing: border-box;
	width: 100%;
	height: 30%;
}

.wrap>a>* {
	padding: 16px 0 16px;
	float: left;
}

.count {
	width: 100%;
	margin-right: 20px;
}

.count p {
	width: 50%;
	float: left;
}

#good {
	float: right;
}

#festivalTable {
	width: 100%;
	height: 1500px;
	margin-left: 20px;
	magin-right: 20px;
}

.month-choice {
	font-family: 'Do Hyeon', sans-serif;
	margin-top: 20px;
	margin-bottom: 50px;
}

ul {
	list-style-type: none;
	padding: 0;
}

li {
	margin-top: 3px;
}

li button {
	width: 50px;
}

th {
	font-size: 25px;
	font-weight: 400;
}

#write {
	float: right;
	background: white;
}

#insertBtn {
	border: none;
	background-color: white;
}

button {
	font-family: 'Do Hyeon', sans-serif;
}

span, p, input {
	font-family: 'Do Hyeon', sans-serif;
}

.navbar .navbar-search .dropdown-menu {
	min-width: 25px;
}

.dropdown-menu .label-icon {
	margin-left: 5px;
}

.btn-outline {
	background-color: transparent;
	color: inherit;
	transition: all .5s;
}

.nav {
	margin: auto;
	ailgn: center;
	width: 600px;
	ailgn: center;
}

.form-control {
	border: 1px solid black;
}

.pagingArea {
	margin-top: 15px;
	text-align: center;
	font-size: 0;
}

.pagingArea button {
	background-color: white;
	display: inline-block;
	width: 30px;
	height: 28px;
	margin: 0 1px;
	border: 1px solid #dbdbdb;
	color: #767676;
	font-size: 15px;
	font-weight: bold;
	line-height: 20px;
	vertical-align: middle;
	text-decoration: none;
}

.pagingArea button:hover, .pagingArea button:active, .pagingArea button:focus
	{
	border: 1px solid #4c8500;
}
</style>
</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
	<section id="body">
		<aside>
			<section id="my-info-section1">
				<div class="my-info" id="my-info">
					<h3 id="my-info-text">마이페이지</h3>
					<img onclick="profileUpdate();"
						src="<%=request.getContextPath()%>/resources/myplan_upload/<%=loginUser.getProfile()%>"><br>
					<p id="name">
						&nbsp;&nbsp;&nbsp;<%=loginUser.getmName()%></p>
					<br> <br>
					<button class="myinfo-button" id="my-info-logout"
						onclick="logout();">로그아웃</button>
					<button class="myinfo-button" id="my-info-modify"
						onclick="infoModify();">회원정보 수정</button>
				</div>
				<script>
                	function logout() {
            			location.href="<%=request.getContextPath()%>/logout.me";
            		}
            	
            		function infoModify() {
            			location.href="<%=request.getContextPath()%>/views/myPage/Info-update.jsp"
            		}
            		
            		// 프로필 
            		function profileUpdate() {
            			var left = (screen.width/2)-135;
            	    	var top = (screen.height/2)-115;
            	   		var url = "<%=request.getContextPath()%>/views/myPage/ProfileUpdate.jsp";
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
						<li class="no" style="font-weight: bold"><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/Board.jsp';">내가
								쓴 게시글</a></li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/Basket.jsp';">장바구니</a></li>

						<hr>
						<li class="bigContent no">개인정보 관리</li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/Info-update.jsp';">회원정보
								수정</a></li>

						<hr>
						<li class="bigContent no">고객센터</li>
						<li><a class="page"
							onclick="location.href='<%=request.getContextPath()%>/views/myPage/ServiceCenter.jsp';">문의
								내역</a></li>
					</ul>
				</div>
			</section>
		</aside>

		<section id="my-info-section3">
			<%
				if (lname == null && mname != null) {
			%>
			<h1
				style="color: black; margin-top: 120px; margin-left: 40%; font-family: 'Black Han Sans', sans-serif;"><%=mname%>
				축제 목록
			</h1>

			<%
				} else if (lname != null && mname == null) {
			%>
			<h1
				style="color: black; margin-top: 120px; margin-left: 40%; font-family: 'Black Han Sans', sans-serif;"><%=lname%>
				축제 목록
			</h1>
			<%
				} else if (lname == null && mname == null) {
			%>
			<h1
				style="color: black; margin-top: 120px; margin-left: 40%; font-family: 'Black Han Sans', sans-serif;">전체
				축제 목록</h1>
			<%
				}
			%>

			<br> <br>
			<div id="total">

				<div id="choice1">

					<div class="nav nav-justified navbar-nav">
						<form class="navbar-form navbar-search"
							action="<%=contextPath%>/search.fe" method="get">
							<div class="input-group" style="margin-top: 20px;">
								<input type="search" name="search" class="form-control"
									placeholder="검색어 입력">

								<div class="input-group-btn">
									<button type="submit" class="btn btn-search btn-default"
										style="border: 1px solid black;">검색</button>


								</div>
							</div>
						</form>
					</div>


					<br> <br>



					<!-- 전체 글수 최신순 인기순 새로고침 -->
					<div class="count">
						<span style="text-align: left; margin-left: 20px;">전체 글 수 :
							<%=listCount%></span>

						<%
							if (loginUser != null) {
						%>
						<div id="write">
							<button type="button" id="insertBtn"
								onclick="location.href='<%=contextPath%>/views/board/festival/festivalInsert.jsp'">
								<img src="<%=contextPath%>/resources/images/write.png"
									width="50px" height="50px">
							</button>
						</div>
						<%
							}
						%>

					</div>
					<br> <br>




					<hr>

					<div id="festivalTable">

						<div class="thumbnailArea" style="width: 1000px; height: 1600px;">

							<%
								for (Board b : blist) {
							%>

							<div class="cli" style="height: 210px;">
								<input type="hidden" value="<%=b.getbId()%>">
								<div style="float: left; width: 300px; box-sizing: border-box;">

									<%
										for (Attachment at : flist) {
									%>
									<%
										if (b.getbId() == at.getbId()) {
									%>
									<img
										src="<%=contextPath%>/resources/festival_uploadFile/<%=at.getChangeName()%>"
										width="300px" height="200px">
									<%
										}
									%>
									<%
										}
									%>
								</div>
								<div
									style="float: left; width: 550px; height: 200px; box-sizing: border-box;">
									<span style="margin-left: 10px;"> No.<%=b.getbId()%></span>
									<p style="font-size: 25px;"><%=b.getbTitle()%></p>
									<p style="color: gray;"><%=b.getbContent()%></p>
								</div>
								<div
									style="float: left; width: 150px; height: 200px; box-sizing: border-box; margin-bottom: 40px;">
									<br>
									<p>
										작성자 :
										<%=b.getbWriter()%>
									</p>
									<br>
									<hr>
									<br>

									<p>
										조회수 :
										<%=b.getbCount()%>
									</p>
								</div>
							</div>
							<hr>
							<%
								}
							%>
						</div>
						<hr>
					</div>

					<!-- 페이징 바 -->
					<div class="pagingArea" align="center">
						<!-- 맨 처음으로 (<<) -->
						<button
							onclick="location.href='<%=contextPath%>/festivalall.fe?currentPage=1&flag=2'">
							&lt;&lt;</button>

						<!-- 이전 페이지로 (<) -->
						<%
							if (currentPage == 1) {
						%>
						<button disabled>&lt;</button>
						<%
							} else {
						%>
						<button
							onclick="location.href='<%=contextPath%>/festivalall.fe?currentPage=<%=currentPage - 1%>&flag=2'">
							&lt;</button>
						<%
							}
						%>

						<!-- 10개의 페이지 목록 -->
						<%
							for (int p = startPage; p <= endPage; p++) {
						%>
						<%
							if (p == currentPage) {
						%>
						<button disabled style="background-color: black; color: white;">
							<%=p%>
						</button>
						<%
							} else {
						%>
						<button
							onclick="location.href='<%=contextPath%>/festivalall.fe?currentPage=<%=p%>&flag=2'"><%=p%></button>
						<%
							}
						%>
						<%
							}
						%>

						<!-- 다음 페이지로 (>) -->
						<%
							if (currentPage == maxPage) {
						%>
						<button disabled>&gt;</button>
						<%
							} else {
						%>
						<button
							onclick="location.href='<%=contextPath%>/festivalall.fe?currentPage=<%=currentPage + 1%>&flag=2'">
							&gt;</button>
						<%
							}
						%>

						<!-- 맨 끝으로 (>>) -->
						<button
							onclick="location.href='<%=contextPath%>/festivalall.fe?currentPage=<%=maxPage%>&flag=2'">
							&gt;&gt;</button>
					</div>
				</div>




				<div id="ct">
					<div id="choice2">
						<div class="month-choice">
							<ul>
								<li><button type="button" id="m1"
										class="btn btn-outline-info">#1~3월</button> <input
									type="hidden" value="1"></li>
								<li><button type="button" id="m2"
										class="btn btn-outline-info" value="2">#4~6월</button> <input
									type="hidden" value="2"></li>
								<li><button type="button" id="m3"
										class="btn btn-outline-info" value="3">#7~9월</button> <input
									type="hidden" value="3"></li>
								<li><button type="button" id="m4"
										class="btn btn-outline-info" value="4">#10~12월</button> <input
									type="hidden" value="4"></li>

							</ul>

						</div>
						<hr>
						<div class="location-choice">
							<ul>
								<li><button type="button" class="btn btn-outline-info"
										id="seoul">서울</button> <input type="hidden" value="10"></li>
								<li><button type="button" class="btn btn-outline-info"
										id="kyeongi">경기도</button> <input type="hidden" value="20"></li>
								<li><button type="button" class="btn btn-outline-info"
										id="kangwon">강원도</button> <input type="hidden" value="30"></li>
								<li><button type="button" class="btn btn-outline-info"
										id="chung">충청도</button> <input type="hidden" value="40"></li>
								<li><button type="button" class="btn btn-outline-info"
										id="gyeong">경상도</button> <input type="hidden" value="50"></li>
								<li><button type="button" class="btn btn-outline-info"
										id="jeon">전라도</button> <input type="hidden" value="60"></li>
							</ul>
						</div>

					</div>
				</div>

			</div>

			<script>
        	
        		$(function(){
        			$(".month-choice li").click(function(){
        				var month = $(this).children().eq(1).val();
        				location.href="<%=contextPath%>/month.fe?month=" + month;
        			});
        		});
        	
        		$(function(){
        			$(".location-choice li").click(function(){
        				var lId = $(this).children().eq(1).val();
        				location.href="<%=contextPath%>/location.fe?lId=" + lId;
        			});
        		});
        	
        		$(function(){
        			$(".cli").click(function(){
        				var bId =  $(this).children().eq(0).val();
        				<%if (loginUser != null) {%>
        				location.href="<%=contextPath%>/detail.fe?bId=" + bId;
        				<%} else {%>
        				alert('상세보기는 로그인이 필요합니다');
        				location.href="<%=contextPath%>
				/views/join&login/login.jsp";
			<%}%>
				});
				});

				$(function() {

					$(".input-group-btn .dropdown-menu li a").click(
							function() {

								var selText = $(this).html();

								$(this).parents('.input-group-btn').find(
										'.btn-search').html(selText);

							});

				});
			</script>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
				integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
				crossorigin="anonymous"></script>

		</section>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>

</html>