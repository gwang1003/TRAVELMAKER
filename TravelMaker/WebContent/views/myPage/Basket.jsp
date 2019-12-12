<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        /* 헤더 */
        #menubar {
            width: 100%;
            height: 150px;
        }
    
        /* 몸체 */
        body {
            margin: 0;
            width: 1500px;
            height: 1000px;
            overflow: auto;
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
            width: 100%;
            height: 90%;
            margin-left: 2%;
        }

        #my-info-section5 {
            width: 100%;
            height: 10%;
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
        
    <!-- my-info-section4 css -->
    <style>
            #my-info-section4 {
                margin-left: 3%;
            }

            #my_post {
                width: 100%;
            }
    
            .otherHr {
                width: 63%;
            }
    
            #my_post ul li{
                list-style-type: none;
                height: 100%;
            }
    
            #firstHr {
                width: 61%;
            }
    
            .my-post-img {
                width: 130px;
                height: 100px;
            }
    
            .line {
                width: 40px;
            }
    
            .btn-toolbar {
            }
    </style>
</head>

<body>

    <section id="body">
        <aside>
            <section id="my-info-section1">
                <div class="my-info" id="my-info">
                    <h3 id="my-info-text">마이페이지</h3>
                    <img src="<%= request.getContextPath() %>/resources/img/smile.jpg"><br>
                    <p id="name">&nbsp;&nbsp;&nbsp;임세웅</p>
                    <br><br>
                    <button class="myinfo-button" id="my-info-logout" onclick="logout();">로그아웃</button>
                    <button class="myinfo-button" id="my-info-modify" onclick="infoModify();">회원정보 수정</button>
                </div>
            </section>

            <section id="my-info-section2">
                <div id="mypage-menu">
                    <ul>
                        <li class="bigContent">나의 활동</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Plan.jsp';">나의 계획</a></li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Board.jsp';">내가 쓴 게시글</a></li>
                        <li style="font-weight:bold">장바구니</li>

                        <hr>
                        <li class="bigContent">개인정보 관리</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Info-update.jsp';">회원정보 수정</a></li>

                        <hr>
                        <li class="bigContent">고객센터</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/ServiceCenter.jsp';"">문의 내역</a></li>
                    </ul>
                </div>
            </section>
        </aside>
        <section id="my-info-section4">
                <div id="my_post">
                    <hr id="firstHr">
                    <ul>
                        <li><img src="<%= request.getContextPath() %>/resources/img/비렁길.jpg" class="my-post-img">나의 장바구니1<img src="<%= request.getContextPath() %>/resources/img/line.png" class="line"></li>
                        <hr class="otherHr">
                        <li><img src="<%= request.getContextPath() %>/resources/img/비렁길.jpg" class="my-post-img">나의 장바구니2<img src="<%= request.getContextPath() %>/resources/img/line.png" class="line"></li>
                        <hr class="otherHr">
                        <li><img src="<%= request.getContextPath() %>/resources/img/비렁길.jpg" class="my-post-img">나의 장바구니3<img src="<%= request.getContextPath() %>/resources/img/line.png" class="line"></li>
                        <hr class="otherHr">
                        <li><img src="<%= request.getContextPath() %>/resources/img/비렁길.jpg" class="my-post-img">나의 장바구니4<img src="<%= request.getContextPath() %>/resources/img/line.png" class="line"></li>
                        <hr class="otherHr">
                    </ul>
                </div>
        </section>
        <section id="my-info-section5">
            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group mr-2" role="group" aria-label="First group" style="margin-left: auto; margin-right: auto;">
                        <button type="button" class="btn btn-secondary">&lt;</button>
                        <button type="button" class="btn btn-secondary">1</button>
                        <button type="button" class="btn btn-secondary">2</button>
                        <button type="button" class="btn btn-secondary">3</button>
                        <button type="button" class="btn btn-secondary">4</button>
                        <button type="button" class="btn btn-secondary">&gt;</button>
                    </div>
                </div>
        </section>
    </section>
</body>

</html>