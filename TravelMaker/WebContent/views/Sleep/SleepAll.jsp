<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="member.model.vo.*, java.util.*,sleep.model.vo.*"%>

<%
    	ArrayList<Sleep> blist = (ArrayList<Sleep>) request.getAttribute("blist");
    	ArrayList<Attachment> flist = (ArrayList<Attachment>) request.getAttribute("flist");
    
    
    %>

<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
	background: white;
	display: table;
	margin-top: 0;
	margin-left: auto;
	margin-right: auto;
	width: 100%;
	height: 100%;
}

#main-wrap {
	margin-left: 8%;
	float: left;
	width: 50%;
	height: 100%;
}

.travel, .festival, .lodg {
	width: 100%;
	height: 30%;
}

.travel {
	margin-left: 10%;
}

#choice {
	margin: 40px 31px 0px 31px;
	border-radius: 5px;
	float: right;
	margin-right: 15%;
	border: 1px solid orangered;
	background-color: orangered;
	color: white;
	width: 18%;
	height: 70%;
	text-align: center;
}

div {
	box-sizing: border-box;
}

.tag {
	box-shadow: 2px 1px 2px 1px gray;
	background-color: orangered;
	border-radius: 10px;
	opacity: 0.8;
	position: relative;
	width: 120px;
	height: 45px;
	border: 1px solid red;
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
	margin-left: 10px;
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
	height: 200px;
}

img {
	width: 950px;
	height: 950px;
}

.wrap>a>* {
	padding: 16px 0 16px;
	float: left;
}

.wrap {
	width: 100%;
	height: 75%;
	border-top: solid 1px rgba(128, 128, 128, 0.356);
	border-bottom: solid 1px rgba(128, 128, 128, 0.356);
}

.btn {
	background-color: white;
}

.btn-danger {
	color: red;
}

#minus {
	width: 30px;
	height: 30px;
}

/* Paging Style Set */
.howtopag {
	display: table;
	margin-left: 45%;
	height: 50px;
	font-size: 23px;
}

.howtopag_item {
	display: table-cell;
	width: 50px;
	text-align: center;
	padding-top: 7px;
	padding-bottom: 7px;
	cursor: pointer;
	text-decoration: none;
	border: none !important;
	color: black;
}

.howtopag_item.pagactive {
	background-color: rgb(241, 104, 41) !important;
	color: white !important;
}

.howtopag_item:hover:not (.pagactive ) {
	background-color: #ddd;
	color: #000;
}

.howtopag_item.pagdisabled, .howtopag_item.pagdisabled:hover {
	background-color: transparent;
	color: #dddddd;
	cursor: auto;
}

select {
	text-align: center;
	text-align-last: center;
}

option {
	text-align: left;
}

nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100px;
	padding: 10px 90px;
	box-sizing: border-box;
	background: rgba(187, 188, 190, 0.959);
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
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../views/common/menubar.jsp"%>


	<h1
		style="color: black; font-weight: 900; color: black; margin-top: 140px; margin-left: 40%;">지역별
		숙박</h1>

	<br>
	<br>

	<div id="main-wrap">
		<div class="travel">
			<div class="tag">
				<h3>숙박 ALL</h3>
			</div>
			<div herf="#"
				style="float: right; font-size: 20px; color: gray; cursor: pointer">추천수</div>
			<div href="#"
				style="float: right; font-size: 20px; color: gray; cursor: pointer">가격순&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

			<br>
			<br>



			<div class="wrap">
				<a class="in-wrap" href="#">
					<div class="thumb-pic">
						<img src='<%= request.getContextPath()%>/resources/images/호텔3.jpg'>
					</div>
					<div class="stage gra_black_vertical">
						<div class="name">
							<div class="badge">
								<span class="build_badge"
									style="color: rgba(255, 255, 255, 1); background-color: rgba(97, 95, 184, 1);">5성급</span>
							</div>
							<strong>신라 서울</strong>

						</div>

						<h2>신라호텔</h2>
						<div class="price">
							<div class="map_html">
								<p>
									<em class="mark"><span><b>남은 객실 2개</b><i>&nbsp;</i></span></em><b>459,800원~</b>
								</p>
							</div>
						</div>
					</div>
				</a>


			</div>

			<div class="wrap"></div>



			<div class="wrap"></div>
			<br>
			<br>
			<br>

			<div class="howtopag">
				<a class="howtopag_item pagdisabled" href="default.asp">❮</a><a
					class="howtopag_item pagactive"
					href="<%=request.getContextPath()%>/views/Sleep/SleepAll.jsp">1</a>
				<a class="howtopag_item" href="default_page2.asp">2</a> <a
					class="howtopag_item" href="default_page3.asp">3</a> <a
					class="howtopag_item" href="default_page4.asp">4</a> <a
					class="howtopag_item" href="default_page5.asp">5</a> <a
					class="howtopag_item" href="default_page2.asp">❯</a>
			</div>

		</div>






		<!-- 인워수 늘리고 줄이기 -->
		<script>
        $(function(){
            $('#decreaseQuantity').click(function(e){
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat,10);
                num--;
                if(num<=0){
                    alert('더이상 줄일수 없습니다.');
                    num =1;
                }
                $('#numberUpDown').text(num);
            });
            $('#increaseQuantity').click(function(e){
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat,10);
               num++;
                
                if(num>8){
                    alert('더이상 늘릴수 없습니다.');
                    num=4;
                }
                $('#numberUpDown').text(num);
            });
        });
        </script>



		<!-- 가격 -->

		<script>
            $(function(){
                $('#decreaseQuantity1').click(function(e){
                    e.preventDefault();
                    var stat = $('#numberUpDown').text();
                    var num = parseInt(stat,10);
                    num -= 10000;
                    if(num<=0){
                        alert('더이상 줄일수 없습니다.');
                        num =0;
                    }
                    $('#numberUpDown1').text(num);
                });
                $('#increaseQuantity1').click(function(e){
                    e.preventDefault();
                    var stat = $('#numberUpDown1').text();
                    var num = parseInt(stat,10);
                   
                  num += 10000;
                    
                    if(num>100000000){
                        alert('더이상 늘릴수 없습니다.');
                        num=60000
                        ;
                    }
                    $('#numberUpDown1').text(num);
                });
            });
            </script>




	</div>


	<div id="choice">
		<h2>지역</h2>
		<select
			style="width: 100%; height: 30px; font-size: 20px; align: center;">
			<option>--------</option>
			<option>서울</option>
			<option>경기</option>
			<option>강원</option>
			<option>충청</option>
			<option>경상</option>
			<option>제주</option>

		</select> <br>
		<br>
		<h2>Check In</h2>
		<input type="date"
			style="width: 100%; text-align: center; font-size: 18px;"> <br>
		<br>
		<h2>Check Out</h2>
		<input type="date"
			style="width: 100%; text-align: center; font-size: 18px;"> <br>
		<br>

		<h2>상세조건</h2>
		<button type="button" class="btn btn-outline-danger">초기화</button>
		&emsp;
		<button type="button" class="btn btn-danger">적용</button>
		<br>
		<br> <input type="checkbox" value="예약가능"
			style="width: 20px; height: 20px;">예약가능 <br>
		<br>


		<!-- 인원수정하기 -->
		<h4>인원수</h4>
		<div class="number">
			<a href="#" id="decreaseQuantity"> <img id="minus"
				src='<%= request.getContextPath()%>/resources/images/마이너스.png'></a>&nbsp;&nbsp;

			<span id="numberUpDown">1</span>&nbsp;&nbsp; <a href="#"
				id="increaseQuantity"> <img id="minus"
				src='<%= request.getContextPath()%>/resources/images/플러스.png'></a>

		</div>
		<br>
		<br>


		<!-- 가격 -->
		<h4>가격</h4>

		<div class="number">
			<a href="#" id="decreaseQuantity1"> <img id="minus"
				src='<%= request.getContextPath()%>/resources/images/마이너스.png'></a>&nbsp;&nbsp;

			<span id="numberUpDown">0</span>&nbsp;&nbsp;~ <span
				id="numberUpDown1">70000</span>&nbsp;&nbsp; <a href="#"
				id="increaseQuantity1"> <img id="minus"
				src='<%= request.getContextPath()%>/resources/images/플러스.png'></a>

		</div>
	</div>


	<% if(loginUser != null && loginUser.getmId().equals("admin")) {%>
	<button id="noticeInsert" type="button"
		onclick="location.herf='<%= contextPath %>/views/Sleep/SleepInsert.jsp'">작성하기</button>
	<%} %>




	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>