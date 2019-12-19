<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member" %>
<%@page import="member.model.vo.MyPlan" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>

    <link rel="stylesheet" href="css/bootstrap.css">
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- 영역 분할 -->
    <style>
        /* 몸체 */
        body {
            margin-top: 180px;
            width: 1500px;
            height: 1000px;
            overflow: auto;
            margin-left: auto;
            margin-right: auto;
        }

        #body {
            margin-top: 9%;
            display: flex;
            flex-direction: row;
        }

        #aside1 {
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

        #aside1 {
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

    <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:600);
        @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css);

        .time {
            box-sizing: border-box;
            border-radius: 2px;
            border: 1px solid #999;
            cursor: pointer;
            outline: none;
            box-shadow: 3px 3px 0px #ddd;
        }

        .date {
            font-family: 'Open Sans', sans-serif;
            color: #111;
            max-width: 110px;
            min-height: 32px;
            text-align: center;
            font-size: 14px;
            color: #222;
            position: relative;
        }

        .time {
            min-width: 110px;
        }

        .date:focus {
            border-color: #333;
        }

        .date::-webkit-inner-spin-button,
        .date::-webkit-outer-spin-button,
        .date::-webkit-calendar-picker-indicator,
        .date::-webkit-clear-button {
            -webkit-appearance: none;
            display: none;
            margin: 0;
        }

        .date::-webkit-datetime-edit-text,
        .date::-webkit-datetime-edit-hour-field,
        .date::-webkit-datetime-edit-minute-field,
        .date::-webkit-datetime-edit-second-field,
        .date::-webkit-datetime-edit-ampm-field {
            color: #666;
        }
    </style>

	<!-- <style>
		#my-info-section4 {
            width: 50%;
            height: 50%;
            margin-left: 2%;
            float: left;
        }

        #my-info-section5 {
            width: 48%;
            height: 50%;
            float: left;
        }

        ul a {
            color: black;
        }
	</style>
	-->
</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
    <section id="body">
        <aside id="aside1">
            <section id="my-info-section1">
                <div class="my-info" id="my-info">
                    <h3 id="my-info-text">마이페이지</h3>
                    <img src="<%= request.getContextPath() %>/resources/images/smile.jpg"><br>
                    <p id="name">&nbsp;&nbsp;&nbsp;임세웅</p>
                    <br><br>
                    <button class="myinfo-button" id="my-info-logout" onclick="logout();">로그아웃</button>
                    <button class="myinfo-button" id="my-info-modify" onclick="infoModify();">회원정보 수정</button>
                </div>
                <script>
                	function logout() {
                		location.href="<%= request.getContextPath() %>/logout.me";
                	}
                </script>
            </section>

            <section id="my-info-section2">
                <div id="mypage-menu">
                    <ul>
                        <li class="bigContent">나의 활동</li>
                        <li style="font-weight: bold">나의 계획</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Board.jsp';">내가 쓴 게시글</a></li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Basket.jsp';">장바구니</a></li>

                        <hr>
                        <li class="bigContent">개인정보 관리</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Info-update.jsp';">회원정보 수정</a></li>
                        <hr>
                        <li class="bigContent">고객센터</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/select.qa?mSeq=' + <%= loginUser.getM_seq()%>">문의 내역</a></li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/PlanCalendar.jsp'">새 마이페이지</a></li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/PlanDetail.jsp'">플랜창</a></li>
                    </ul>
                </div>
            </section>
        </aside>
  	
  		<section id="marginBody">
  			<%@ include file="./PlanCalendar.jsp" %>
  		</section>
    </section>
</body>

</html>