<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%@page import="member.model.vo.MyPlan"%>
<%@page import="java.util.ArrayList"%>

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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="external.css">
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
        @media(max-width:820px) {
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
#body {
    margin-top: 180px;
	width: 1500px;
	height: 1000px;
	display: flex;
	overflow: auto;
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

<!-- 캘린더 -->
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:600);

@import
	url(https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css)
	;

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

.date::-webkit-inner-spin-button, .date::-webkit-outer-spin-button,
	.date::-webkit-calendar-picker-indicator, .date::-webkit-clear-button {
	-webkit-appearance: none;
	display: none;
	margin: 0;
}

.date::-webkit-datetime-edit-text, .date::-webkit-datetime-edit-hour-field,
	.date::-webkit-datetime-edit-minute-field, .date::-webkit-datetime-edit-second-field,
	.date::-webkit-datetime-edit-ampm-field {
	color: #666;
}
</style>
</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
	<section id="body">
		<aside id="aside1">
			<section id="my-info-section1">
				<div class="my-info" id="my-info">
					<h3 id="my-info-text">마이페이지</h3>
					<img onclick="profileUpdate();"
						src="<%= request.getContextPath() %>/resources/myplan_upload/<%= loginUser.getProfile() %>"><br>
					<p id="name">
						&nbsp;&nbsp;&nbsp;<%= loginUser.getmName() %></p>
					<br>
					<br>
					<button class="myinfo-button" id="my-info-logout"
						onclick="logout();">로그아웃</button>
					<button class="myinfo-button" id="my-info-modify"
						onclick="infoModify();">회원정보 수정</button>
				</div>
				<script>
					// 로그아웃 이동 
                	function logout() {
                		location.href="<%= request.getContextPath() %>/logout.me";
                	}
                	
					// 정보수정 이동 
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
						<li style="font-weight: bold" class="no"><a class="page"
							onclick="location.href='<%= request.getContextPath() %>/views/myPage/Plan.jsp';">나의 계획</a></li>
						<li><a class="page"
							onclick="location.href='<%= request.getContextPath() %>/views/myPage/Board.jsp';">내가
								쓴 게시글</a></li>
						<li><a class="page"
							onclick="location.href='<%= request.getContextPath() %>/views/myPage/Basket.jsp';">장바구니</a></li>

						<hr>
						<li class="bigContent no">개인정보 관리</li>
						<li><a class="page"
							onclick="location.href='<%= request.getContextPath() %>/views/myPage/Info-update.jsp';">회원정보
								수정</a></li>
						<hr>
						<li class="bigContent no">고객센터</li>
						<li><a class="page"
							onclick="location.href='<%= request.getContextPath() %>/select.qa?mSeq=' + <%= loginUser.getM_seq()%>">문의
								내역</a></li>
					</ul>
				</div>
			</section>
		</aside>

		<section id="marginBody">
			<%@ include file="./PlanCalendar.jsp"%>
		</section>
	</section>
</body>

</html>