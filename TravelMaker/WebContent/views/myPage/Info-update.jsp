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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

        #body {
            margin-top: 4%;
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
            margin-left: 40px;
            width: 800px;
            height: 700px;
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
            margin-left: 0;
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

        table {
            margin-left: 30px;
            width: 100%;
            height: 70%;
        }

        .btns {
            width: 100%;
            height: 30%;
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

        .cen h2,
        .cen button {
            box-sizing: border-box;
        }

        .outer hr {
            width: 60%;
            transform: translateX(-200px);
        }

        #logoText {
            width: 300px;
            text-align: center;
            transform: translate(60px);
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
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Basket.jsp';">장바구니</a></li>

                        <hr>
                        <li class="bigContent">개인정보 관리</li>
                        <li style="font-weight:bold">회원정보 수정</a></li>

                        <hr>
                        <li class="bigContent">고객센터</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/ServiceCenter.jsp';">문의 내역</a></li>
                    </ul>
                </div>
            </section>
        </aside>

        <!-- 1. 회원 가입 -->
        <!-- 1_1. 회원가입 폼 작성 -->
        <section id="outer">
            <div class="outer">
                <div class="mimg">
                    <img id="logo" src="img/로고.png" width="100px"><br>
                    <h2 align="center" id="logoText">회원정보 수정</h2>
                </div>
                <div class="cen">
                </div>
                <form id="joinForm" name="joinForm" action="<%= request.getContextPath() %>/insert.me" method="post"
                    onsubmit="return joinValidate();">
                    <table>
                        <tr>
                            <td>이름<input type="text" disabled value="임세웅" style="margin-left: 68px;">
                                <hr>
                            </td>
                        </tr>

                        <tr>
                            <td>아이디<input type="text" disabled value="TravelMaster72" style="margin-left: 52px;">
                                <hr>
                            </td>
                        </tr>

                        <tr>
                            <td>닉네임<input type="text" placeholder="어둠썬더" style="margin-left: 52px;"> <button>변경</button>
                                <hr>
                            </td>
                        </tr>

                        <tr>
                            <td>휴대폰 번호<input type="text" value="010-8879-3312" disabled style="margin-left: 20px;">
                                <hr>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                이메일<input type="text" disabled value="travel772@naver.com"
                                    style="margin-left: 52px;"><button type="button"
                                    style="margin-left:10px;">인증하기</button>
                            </td>
                        </tr>
                    </table>
                    <div class="btns" align="center">
                        <div style="height:50%"></div>
                        <button id="toMain" onclick="returnToMain()" type="button">CANCEL</button>
                        <button id="joinBtn">SUBMIT</button>
                    </div>
                </form>
            </div>
        </section>


        <script>

            // 1. 메인으로 돌아가기
            function returnToMain() {
                location.href = "<%= request.getContextPath() %>";
            }

            // 2. 유효성 검사
            function joinValidate() {
                if (!(/^[a-z][a-z\d]{3,11}$/.test($("#joinForm input[name=userId]").val()))) {
                    alert('아이디는 영소문자로 시작해서 4~12자 입력(숫자 포함 가능)');
                    $("#joinForm input[name=userId]").select();
                    return false;
                }

                if ($("#joinForm input[name=userPwd]").val() != $("#joinForm input[name=userPwd2]").val()) {
                    $("#pwdResult").text("비밀번호 불일치").css("color", "red");
                    return false;
                }

                if (!(/^[가-힣]{2,}$/.test($("#joinForm input[name=userName]").val()))) {
                    alert('이름은 한글로 2글자 이상 입력');
                    $("#joinForm input[name=userName]").select();
                    return false;
                }

                return true;

            }

            // 3. 회원 가입
            // InsertMemberServlet 만들어서 진행

            // 4. 아이디 중복체크
            function checkId() {
                window.open("idCheckForm.jsp", "checkForm", "width=300, height=200");
            }

        </script>


    </section>
</body>

</html>