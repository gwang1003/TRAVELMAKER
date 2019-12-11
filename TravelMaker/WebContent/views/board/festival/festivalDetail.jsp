<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	margin-top: 200px;
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
						<strong>강원도 대관령 양때 축제</strong>
					</h2>
					<h4>위치 : 강원도</h4>
				</div>

				<div
					style="border: 1px solid black; text-align: center; border-radius: 10px">대표사진</div>
				<br> <img
					src="<%=request.getContextPath()%>/resources/images/서울2.jpg"
					width="100%">
				</td>

				<div
					style="border: 1px solid black; text-align: center; border-radius: 10px">
					<details>
						<summary style="margin-top: 60px;">
							축제 설명 보기<br> <br> <br> <br>
						</summary>
						<br>
						<p>동물과 자연 그대로의 산지생태축산 목장 대관령양떼목장은 농림부에서 지정한 동물복지와 산림보존에 특화된
							산지생태축산 목장입니다. 대관령의 부드러운 능선과 야생 식물로 가득 차있는 습지대는 자연 그대로의 모습을 간직하고
							있기에 더욱 아름답고 신기하기만 합니다. 푸른 초지가 바람에 흔들거리는 아름다운 목장의 능선에서 양들이 한가로이 풀을
							뜯고 있는 모습을 보고 있으면, 마치 알프스에 와 있는듯한 착각을 하게합니다. 특히 봄, 여름, 가을, 겨울 시시각각
							변하는 목장의 경관은 자연의 신비로움과 아름다움을 몸소 느끼게 해줍니다.</p>
					</details>
				</div>

				<br>

				<div id="b">
					<div id="b1">
						<ul>
							<li>시작일&emsp;&emsp;2020.01.04</li>
							<li>전화번호&emsp;&emsp; 1688-3005</li>
							<li>주소 &emsp;&emsp;강원도 화천읍 어딘가</li>
							<li>주관 &emsp;&emsp;재단나라 법인</li>
						</ul>
					</div>

					<div id="b2">
						<ul>
							<li>종료일 &emsp;&emsp;2020.02.26</li>
							<li>홈페이지 &emsp;&emsp;http://www.narafestival.com</li>
							<li>주최 &emsp;&emsp;화천군</li>
							<li>이용요금 &emsp;&emsp;행사 홈페이지 참고http://www.narafestival.com</li>
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