<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, board.model.vo.*"%>
	
	<%
		Board b = (Board)request.getAttribute("board");
		
		ArrayList<Attachment> fileList = (ArrayList<Attachment>)request.getAttribute("fileList");
		Attachment titleImg = fileList.get(0);
		Information in = (Information)request.getAttribute("in");
		System.out.println("타이틀" +titleImg);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap"
	rel="stylesheet">

<style>
body {
	background-color: white;
	width: 1500px;
	height: 2000px;
}

#total {
	position: relative;
}

#choice1 {
	margin: auto;
	width: 1000px;
	height: 1500px;
	position: relative;
	padding : 50px;
}

.travel {
	width: 100%;
	height: 30%;
}

.btn {
	width: 70px;
	height: 50px;
	margin: auto;
	font-size: 13px;
}

.tag {
	border-radius: 10px;
	opacity: 0.8;
	position: relative;
	margin-top: 120px;
}

.tag>p {
	color: white;
	text-align: center;
	font-size: 24px;
	font-weight: 400;
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

#fesTable {
	text-align: center;
	width: 100%;
	height: 100%;
}

#b1 {
	float: left;
	margin-top: 20px;
}

#b2 {
	float: right;
	margin-top: 20px;
}

#b {
	border-radius: 10px;
	height: 140px;
	width: 100%;
	border-style: double;
}

.t {
	border: 1px solid black;
	border-radius: 10px;
}

td {
	margin: 0;
	padding: 0;
}

.replyArea {
	width: 100%;
	margin: auto;
}

#replySelectArea {
	height: 500px;
}

#replyTable {
	width: 100%;
}
</style>
</head>

<body>
	<%@ include file="../../common/menubar.jsp"%>

	<div id="total">

		<div id="choice1">
			<div class="tag">
				<h1 align="center"
					style="font-family: 'Black Han Sans', sans-serif;">축제 상세 설명</h1>
			</div>
			<br> <br>

			<div id="festival">
				<img src="<%=request.getContextPath()%>/resources/images/목록.png"
					style="float: right; height: 30px;">
				<div>
					<h2>
						<strong><%= b.getbTitle() %></strong>
					</h2>
					<h4>위치 : <%= in.getAddress() %></h4>
				</div>

				<div
					style="border: 1px solid black; text-align: center; border-radius: 10px">대표사진</div>
				<br> <img
					src="<%=request.getContextPath()%>/resources/festival_uploadFile/<%= titleImg.getChangeName() %>" width="100%">
				<div
					style="border: 1px solid black; text-align: center; border-radius: 10px">
					<details>
						<summary style="margin-top: 30px;">
							축제 설명 보기<br> <br>
						</summary>
						<br>
						<p><%= b.getbContent() %></p>
					</details>
				</div>

				<br>

				<div id="b">
					<div id="b1">
						<ul>
							<li>시작일&emsp;&emsp;<%= in.getsDay() %></li>
							<li>전화번호&emsp;&emsp;<%= in.getTel() %></li>
							<li>주소 &emsp;&emsp;<%= in.getAddress() %></li>
						</ul>
					</div>

					<div id="b2">
						<ul>
							<li>종료일 &emsp;&emsp;<%= in.geteDay() %></li>
							<li>홈페이지 &emsp;&emsp;<%= in.getPage() %></li>
							<li>이용요금 &emsp;&emsp;<%= in.getPrice() %></li>
						</ul>
					</div>
				</div>
			</div>

			<hr>
			<hr>

			<div class="replyArea">
				<!-- 댓글 작성하는 부분 -->
				<div class="replyWriterArea">
					<table align="center" id="replyTable">
						<tr>
							<td><img src="<%= contextPath %>/resources/images/speech-bubble.png" width="50px" height="50px">&emsp;</td>
							<td><textarea rows="3" cols="105" id="replyContent"></textarea>
							<td><button type="button" class="btn btn-outline-info">등록</button></td>
						</tr>
					</table>
				</div>



			</div>

		</div>


		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
</body>
</html>