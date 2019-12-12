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

    <!-- table -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            font-weight: 400;
        }

        h3,
        h4,
        h5 {
            font-weight: 300 !important;
        }

        .grey {
            background: white;
        }

        .calendar-wrapper {
            height: auto;
            max-width: 730px;
            margin: 0 auto;
        }

        .calendar-header {
            background-color: rgba(18, 15, 25, 0.25);
            height: 100%;
            padding: 20px;
            color: #fff;
            font-family: 'Roboto', sans-serif;
            font-weight: 300;
            position: relative;
        }

        .header-title {
            padding-left: 15%;
        }

        .header-background {
            background-image: url("https://raw.githubusercontent.com/JustMonk/codepen-resource-project/master/img/compressed-header.jpg");
            height: 200px;
            background-position: center right;
            background-size: cover;
        }

        .calendar-content {
            background-color: #fff;
            padding: 20px;
            padding-left: 15%;
            padding-right: 15%;
            overflow: hidden;
        }

        .event-mark {
            width: 5px;
            height: 5px;
            background-color: teal;
            border-radius: 100px;
            position: absolute;
            left: 46%;
            top: 70%;
        }

        .calendar-footer {
            height: 330px;
            font-family: 'Roboto', sans-serif;
            font-weight: 300;
            text-align: center;
            background-color: #4b6289 !important;
            position: relative;
            overflow: hidden;
            padding-top: 70px;
        }

        .addForm {
            position: absolute;
            top: 100%;
            width: 100%;
            height: 100%;
            background-color: #4b5889 !important;
            transition: top 0.5s cubic-bezier(1, 0, 0, 1);
            padding: 10px 5px 0 5px;
        }

        .addForm input {
            color: #fff;
        }

        .addForm .row {
            padding-left: 0.75rem;
            padding-right: 0.75rem;
            margin-bottom: 0;
        }

        .addForm h4 {
            color: #fff;
            margin-bottom: 1rem;
        }

        .addEventButtons {
            text-align: right;
            padding: 0 0.75rem 0 0.75rem;
        }

        .addEventButtons a {
            color: black;
            font-weight: 300;
        }

        .emptyForm {
            padding: 20px;
            padding-left: 15%;
            padding-right: 15%;
        }

        .emptyForm h4 {
            color: #fff;
            margin-bottom: 2rem;
        }

        .sidebar-wrapper {
            color: #fff;
            background-color: #5a649c !important;
            padding-top: 0;
            padding-bottom: 20px;
            font-family: 'Roboto', sans-serif;
            font-weight: 300;
            padding-left: 0;
            padding-right: 0;
        }

        .sidebar-title {
            padding: 50px 6% 50px 12%;
        }

        .sidebar-title h4 {
            margin-top: 0;
        }

        .sidebar-events {
            overflow-x: hidden;
            overflow-y: hidden;
            margin-bottom: 70px;
        }

        .empty-message {
            font-size: 1.2rem;
            padding: 15px 6% 15px 12%;
        }

        .eventCard {
            background-color: #fff;
            color: black;
            padding: 12px 24px 12px 24px;
            border-bottom: 1px solid #E5E5E5;
            white-space: nowrap;
            position: relative;
            animation: slideInDown 0.5s;
        }

        .eventCard-header {
            font-weight: bold;
        }

        .eventCard-description {
            color: grey;
        }

        .eventCard-mark-wrapper {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            width: 60px;
            background: linear-gradient(to right, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 1) 25%, rgba(255, 255, 255, 1) 100%);
        }

        .eventCard-mark {
            width: 8px;
            height: 8px;
            background-color: #b39ddb;
            border-radius: 100px;
            position: absolute;
            left: 50%;
            top: 45%;
        }

        .day-mark {
            width: 7px;
            height: 7px;
            background-color: #b39ddb;
            border-radius: 100px;
            position: absolute;
            left: 47%;
            top: 67%;
        }

        .content-wrapper {
            padding-top: 50px;
            padding-bottom: 50px;
        }

        #table-body .col:hover {
            cursor: pointer;
            /*border: 1px solid grey;*/
            background-color: #E0E0E0;
        }

        .empty-day:hover {
            cursor: default !important;
            background-color: #fff !important;
        }

        #table-body .row .col {
            padding: 0.75rem;
        }

        .col {
            width: 14%;
        }

        #table-body .col {
            border: 1px solid transparent;
        }

        #table-body .row {
            margin-bottom: 0;
        }

        #table-body .col {
            padding-top: 1.3rem !important;
            padding-bottom: 1.3rem !important;
        }

        #calendar-table {
            text-align: center;
        }

        .prev-button {
            position: absolute;
            cursor: pointer;
            left: 0%;
            top: 35%;
            color: grey !important;
        }

        .prev-button i {
            font-size: 4em;
        }

        .next-button {
            position: absolute;
            cursor: pointer;
            right: 0%;
            top: 35%;
            color: grey !important;
        }

        .next-button i {
            font-size: 4em;
        }

        .addEvent {
            box-shadow: 0 5px 15px rgb(57, 168, 228);
            background-color: #39a8e4;
            padding: 10px;
            padding-left: 3em;
            padding-right: 3em;
            cursor: pointer;
            border-radius: 25px;
            color: #fff !important;
            background-image: linear-gradient(135deg, #8d8dd4, #45ced4);
        }

        .addEvent:hover {
            transition: box-shadow 0.5s;
            box-shadow: 0 4px 25px rgb(57, 168, 228);
        }

        .mobile-header {
            padding: 0;
            display: none;
            padding-top: 20px;
            padding-bottom: 20px;
            position: fixed;
            z-index: 99;
            width: 100%;
            background-color: #5a649c !important;
        }

        .mobile-header a i {
            color: #fff;
            font-size: 38px;
        }

        .mobile-header h4 {
            color: #fff;
        }

        .mobile-header .row {
            margin-bottom: 0;
        }

        .mobile-header h4 {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            font-weight: 300;
        }

        @media (max-width:992px) {
            .content-wrapper {
                margin-left: 0;
            }

            .mobile-header {
                display: block;
            }

            .calendar-wrapper {
                margin-top: 80px;
            }

            .sidebar-wrapper {
                background-color: #EEEEEE !important;
            }

            .sidebar-title {
                background-color: #5A649C !important;
            }

            .empty-message {
                color: black;
            }
        }

        @media (max-width:767px) {
            .content-wrapper .container {
                width: auto;
            }

            .calendar-content {
                padding-left: 5%;
                padding-right: 5%;
            }

            body .row {
                margin-bottom: 0;
            }
        }

        @media (max-width:450px) {
            .content-wrapper {
                padding-left: 0;
                padding-right: 0;
            }

            .content-wrapper .container {
                padding-left: 0;
                padding-right: 0;
            }
        }

        #sidebar {
            position: relative;
            margin-left: 300px;
        }
    </style>

    <!-- 메뉴바 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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

        .main-wrapper {
            width: 100%;
            transform: translateY(-50px);
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

        #aside1 {
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
</head>

<body>

    <section id="body">
        <aside id="aside1">
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
                        <li style="font-weight: bold">나의 계획</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Board.jsp';">내가 쓴 게시글</a></li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Basket.jsp';">장바구니</a></li>

                        <hr>
                        <li class="bigContent">개인정보 관리</li>
                        <li><a href="#l" onclick="location.href='<%= request.getContextPath() %>/views/myPage/Info-update.jsp';">회원정보 수정</a></li>

                        <hr>
                        <li class="bigContent">고객센터</li>
                        <li><a href="#" onclick="location.href='<%= request.getContextPath() %>/views/myPage/ServiceCenter.jsp';">문의 내역</a></li>
                    </ul>
                </div>
            </section>
        </aside>
        <section id="marginBody">
            <section id="my-info-section4">
                <div class="mobile-header z-depth-1">

                    <div class="row">
                        <div class="col-2">
                            <a href="#" data-activates="sidebar" class="button-collapse">
                                <i class="material-icons">menu</i>
                            </a>
                        </div>
                        <div class="col">
                            <h4>Events</h4>
                        </div>
                    </div>

                </div>

                <div class="main-wrapper">
                    <div class="content-wrapper">
                        <div class="container">

                            <div class="calendar-wrapper z-depth-2">

                                <div class="header-background">
                                    <div class="calendar-header">

                                        <a class="prev-button" id="prev">
                                            <i class="material-icons">keyboard_arrow_left</i>
                                        </a>
                                        <a class="next-button" id="next">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                        </a>

                                        <div class="row header-title">

                                            <div class="header-text">
                                                <h3 id="month-name">February</h3>
                                                <h5 id="todayDayName">Today is Friday 7 Feb</h5>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="calendar-content">
                                    <div id="calendar-table" class="calendar-cells">

                                        <div id="table-header">
                                            <div class="row">
                                                <div class="col">Mon</div>
                                                <div class="col">Tue</div>
                                                <div class="col">Wed</div>
                                                <div class="col">Thu</div>
                                                <div class="col">Fri</div>
                                                <div class="col">Sat</div>
                                                <div class="col">Sun</div>
                                            </div>
                                        </div>

                                        <div id="table-body" class="">

                                        </div>

                                    </div>
                                </div>

                                <div class="calendar-footer">
                                    <div class="emptyForm" id="emptyForm">
                                        <h4 id="emptyFormTitle">No events now</h4>
                                        <a class="addEvent" id="changeFormButton">추가</a>
                                    </div>
                                    <div class="addForm" id="addForm">
                                        <h4>이벤트 추가</h4>

                                        <div class="col">
                                            <div class="input-field col s6">
                                                <input id="eventTitleInput" type="text" class="validate">
                                                <label for="eventTitleInput">주제</label>
                                            </div>
                                            <div class="input-field col s6">
                                                <input id="eventDescInput" type="text" class="validate">
                                                <label for="eventDescInput">내용</label>
                                            </div>
                                            <div>
                                                <input type="text" placeholder="Start Date"
                                                    class="date time start-time" />
                                                -
                                                <input type="text" placeholder="End Date(구현x)"
                                                    class="date time end-time" />
                                            </div>
                                        </div>

                                        <div class="addEventButtons">
                                            <a class="waves-effect waves-light btn blue lighten-2"
                                                id="addEventButton">Add</a>
                                            <a class="waves-effect waves-light btn grey lighten-2"
                                                id="cancelAdd">Cancel</a>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </section>
            <section id="my-info-section5">
                <div class="sidebar-wrapper z-depth-2 side-nav" id="sidebar">
                    <div class="sidebar-title">
                        <h4>Events</h4>
                        <h5 id="eventDayName">Date</h5>
                    </div>
                    <div class="sidebar-events" id="sidebarEvents">
                        <div class="empty-message">이벤트가 없습니다</div>
                    </div>

                </div>
            </section>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
                integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
                crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
                integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
            <script>
                $(".button-collapse").sideNav();
            </script>

            <script>
                var calendar = document.getElementById("calendar-table");
                var gridTable = document.getElementById("table-body");
                var currentDate = new Date();
                var selectedDate = currentDate;
                var selectedDayBlock = null;
                var globalEventObj = {};

                var sidebar = document.getElementById("sidebar");

                function createCalendar(date, side) {
                    var currentDate = date;
                    var startDate = new Date(currentDate.getFullYear(), currentDate.getMonth(), 1);

                    var monthTitle = document.getElementById("month-name");
                    var monthName = currentDate.toLocaleString("en-US", {
                        month: "long"
                    });
                    var yearNum = currentDate.toLocaleString("en-US", {
                        year: "numeric"
                    });
                    monthTitle.innerHTML = `${monthName} ${yearNum}`;

                    if (side == "left") {
                        gridTable.className = "animated fadeOutRight";
                    } else {
                        gridTable.className = "animated fadeOutLeft";
                    }

                    setTimeout(() => {
                        gridTable.innerHTML = "";

                        var newTr = document.createElement("div");
                        newTr.className = "row";
                        var currentTr = gridTable.appendChild(newTr);

                        for (let i = 1; i < startDate.getDay(); i++) {
                            let emptyDivCol = document.createElement("div");
                            emptyDivCol.className = "col empty-day";
                            currentTr.appendChild(emptyDivCol);
                        }

                        var lastDay = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0);
                        lastDay = lastDay.getDate();

                        for (let i = 1; i <= lastDay; i++) {
                            if (currentTr.children.length >= 7) {
                                currentTr = gridTable.appendChild(addNewRow());
                            }
                            let currentDay = document.createElement("div");
                            currentDay.className = "col";
                            if (selectedDayBlock == null && i == currentDate.getDate() || selectedDate.toDateString() == new Date(currentDate.getFullYear(), currentDate.getMonth(), i).toDateString()) {
                                selectedDate = new Date(currentDate.getFullYear(), currentDate.getMonth(), i);

                                document.getElementById("eventDayName").innerHTML = selectedDate.toLocaleString("en-US", {
                                    month: "long",
                                    day: "numeric",
                                    year: "numeric"
                                });

                                selectedDayBlock = currentDay;
                                setTimeout(() => {
                                    currentDay.classList.add("blue");
                                    currentDay.classList.add("lighten-3");
                                }, 900);
                            }
                            currentDay.innerHTML = i;

                            //show marks
                            if (globalEventObj[new Date(currentDate.getFullYear(), currentDate.getMonth(), i).toDateString()]) {
                                let eventMark = document.createElement("div");
                                eventMark.className = "day-mark";
                                currentDay.appendChild(eventMark);
                            }

                            currentTr.appendChild(currentDay);
                        }

                        for (let i = currentTr.getElementsByTagName("div").length; i < 7; i++) {
                            let emptyDivCol = document.createElement("div");
                            emptyDivCol.className = "col empty-day";
                            currentTr.appendChild(emptyDivCol);
                        }

                        if (side == "left") {
                            gridTable.className = "animated fadeInLeft";
                        } else {
                            gridTable.className = "animated fadeInRight";
                        }

                        function addNewRow() {
                            let node = document.createElement("div");
                            node.className = "row";
                            return node;
                        }

                    }, !side ? 0 : 270);
                }

                createCalendar(currentDate);

                var todayDayName = document.getElementById("todayDayName");
                todayDayName.innerHTML = "Today is " + currentDate.toLocaleString("en-US", {
                    weekday: "long",
                    day: "numeric",
                    month: "short"
                });

                var prevButton = document.getElementById("prev");
                var nextButton = document.getElementById("next");

                prevButton.onclick = function changeMonthPrev() {
                    currentDate = new Date(currentDate.getFullYear(), currentDate.getMonth() - 1);
                    createCalendar(currentDate, "left");
                }
                nextButton.onclick = function changeMonthNext() {
                    currentDate = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1);
                    createCalendar(currentDate, "right");
                }

                function addEvent(title, desc) {
                    if (!globalEventObj[selectedDate.toDateString()]) {
                        globalEventObj[selectedDate.toDateString()] = {};
                    }
                    globalEventObj[selectedDate.toDateString()][title] = desc;
                }

                function showEvents() {
                    let sidebarEvents = document.getElementById("sidebarEvents");
                    let objWithDate = globalEventObj[selectedDate.toDateString()];

                    sidebarEvents.innerHTML = "";

                    if (objWithDate) {
                        let eventsCount = 0;
                        for (key in globalEventObj[selectedDate.toDateString()]) {
                            let eventContainer = document.createElement("div");
                            eventContainer.className = "eventCard";

                            let eventHeader = document.createElement("div");
                            eventHeader.className = "eventCard-header";

                            let eventDescription = document.createElement("div");
                            eventDescription.className = "eventCard-description";

                            eventHeader.appendChild(document.createTextNode(key));
                            eventContainer.appendChild(eventHeader);

                            eventDescription.appendChild(document.createTextNode(objWithDate[key]));
                            eventContainer.appendChild(eventDescription);

                            let markWrapper = document.createElement("div");
                            markWrapper.className = "eventCard-mark-wrapper";
                            let mark = document.createElement("div");
                            mark.classList = "eventCard-mark";
                            markWrapper.appendChild(mark);
                            eventContainer.appendChild(markWrapper);

                            sidebarEvents.appendChild(eventContainer);

                            eventsCount++;
                        }
                        let emptyFormMessage = document.getElementById("emptyFormTitle");
                        emptyFormMessage.innerHTML = `${eventsCount} events now`;
                    } else {
                        let emptyMessage = document.createElement("div");
                        emptyMessage.className = "empty-message";
                        emptyMessage.innerHTML = "이벤트가 없습니다";
                        sidebarEvents.appendChild(emptyMessage);
                        let emptyFormMessage = document.getElementById("emptyFormTitle");
                        emptyFormMessage.innerHTML = "No events now";
                    }
                }

                gridTable.onclick = function (e) {

                    if (!e.target.classList.contains("col") || e.target.classList.contains("empty-day")) {
                        return;
                    }

                    if (selectedDayBlock) {
                        if (selectedDayBlock.classList.contains("blue") && selectedDayBlock.classList.contains("lighten-3")) {
                            selectedDayBlock.classList.remove("blue");
                            selectedDayBlock.classList.remove("lighten-3");
                        }
                    }
                    selectedDayBlock = e.target;
                    selectedDayBlock.classList.add("blue");
                    selectedDayBlock.classList.add("lighten-3");

                    selectedDate = new Date(currentDate.getFullYear(), currentDate.getMonth(), parseInt(e.target.innerHTML));

                    showEvents();

                    document.getElementById("eventDayName").innerHTML = selectedDate.toLocaleString("en-US", {
                        month: "long",
                        day: "numeric",
                        year: "numeric"
                    });

                }

                var changeFormButton = document.getElementById("changeFormButton");
                var addForm = document.getElementById("addForm");
                changeFormButton.onclick = function (e) {
                    addForm.style.top = 0;
                }

                var cancelAdd = document.getElementById("cancelAdd");
                cancelAdd.onclick = function (e) {
                    addForm.style.top = "100%";
                    let inputs = addForm.getElementsByTagName("input");
                    for (let i = 0; i < inputs.length; i++) {
                        inputs[i].value = "";
                    }
                    let labels = addForm.getElementsByTagName("label");
                    for (let i = 0; i < labels.length; i++) {
                        labels[i].className = "";
                    }
                }

                var addEventButton = document.getElementById("addEventButton");
                addEventButton.onclick = function (e) {
                    let title = document.getElementById("eventTitleInput").value.trim();
                    let desc = document.getElementById("eventDescInput").value.trim();

                    if (!title || !desc) {
                        document.getElementById("eventTitleInput").value = "";
                        document.getElementById("eventDescInput").value = "";
                        let labels = addForm.getElementsByTagName("label");
                        for (let i = 0; i < labels.length; i++) {
                            labels[i].className = "";
                        }
                        return;
                    }

                    addEvent(title, desc);
                    showEvents();

                    if (!selectedDayBlock.querySelector(".day-mark")) {
                        selectedDayBlock.appendChild(document.createElement("div")).className = "day-mark";
                    }

                    let inputs = addForm.getElementsByTagName("input");
                    for (let i = 0; i < inputs.length; i++) {
                        inputs[i].value = "";
                    }
                    let labels = addForm.getElementsByTagName("label");
                    for (let i = 0; i < labels.length; i++) {
                        labels[i].className = "";
                    }

                }
            </script>

            <script>
                const datePicker = (selector, type = "date") => {
                    const types = { DATE: "date", TIME: "time", DATETIME: "datetime-local" };
                    const elm = document.querySelector(selector);

                    const applyFormatting = (dateString, type, format) => {
                        if (type === types.TIME && dateString) {
                            const [h, m] = dateString.split(":").map(s => parseInt(s, 10));
                            return moment().hour(h).minutes(m).format(format);
                        }
                        return moment(dateString).format(format);
                    }

                    const prettifyDate = (dateString, type) => {
                        const { DATE, TIME, DATETIME } = types;
                        const format = { [DATE]: "ll", [TIME]: "hh:mm A", [DATETIME]: "ll hh:mm" }[type];
                        return applyFormatting(dateString, type, format);
                    }

                    const uglifyDate = (dateString, type) => {
                        const { DATE, TIME, DATETIME } = types;
                        const format = { [DATE]: "YYYY-MM-DD", [TIME]: "hh:mm", [DATETIME]: "YYYY-MM-DDThh:mm" }[type];
                        return applyFormatting(dateString, type, format);
                    }

                    elm.addEventListener("focus", function (e) {
                        if (this.value) this.value = uglifyDate(this.value, type);
                        this.setAttribute("_type", this.getAttribute("type"));
                        this.setAttribute("type", type);
                    });

                    elm.addEventListener("blur", function () {
                        this.setAttribute("type", this.getAttribute("_type"));
                        this.removeAttribute("_type");
                        if (this.value) this.value = prettifyDate(this.value, type);
                    });

                    elm.value = prettifyDate(undefined, type);
                }
                datePicker(".start-time", "time");
                datePicker(".end-time", "time");

            </script>
        </section>
    </section>
</body>

</html>