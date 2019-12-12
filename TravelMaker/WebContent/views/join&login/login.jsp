<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
           body {
        background: ghostwhite;
        display: table;
        margin-top: 0;
        margin-left: auto;
        margin-right: auto;
        width: 1000px;
        height: 100%;
    }

        form {
            height:100%;
        }

        .loginForm {
            width:500px;
            height:100%;
            margin-top:5%;
            margin-left:auto;
            margin-right:auto;
            border:1px solid darkgray;
            background-color:white;
            
        }

        #p {
            background-color:black;
            width:300px;
            height:40px;
            text-align: center;
            margin-left:auto;
            margin-right:auto;
            line-height: 40px;
        }

        p {
            color:white;
            font-size:15px;
        }

        #mimg {
            margin-left:auto;
            margin-right:auto;
            width:100px;
            height:100px;
            margin-top:10px;
            
        }

        #mimg img {
            width: 100px;
            height:100px;
            border-radius: 50%;
        }

        #login {
            width:300px;
            margin-left:auto;
            margin-right:auto;
        }

        #login input {
            width:300px;
            height: 40px;
            box-sizing: border-box;
        }

        #loginBtn {
            width:350px;
            height:30px;
            margin-left:auto;
            margin-right:auto;
        }

        #lo, #insert{
            width:150px;
            height: 100%;
            color:white;
            background:skyblue;
        }

        #insert {
            padding:0;
            margin-right:0;
            margin-left:27px;
        }

        .log {
            width:250px;
            margin-left:auto;
            margin-right:auto;
        }

        .log button {
            width: 100%;
            height:50px;
            margin-left:auto;
            margin-right:auto;
        }

        #selectForm {
            width:200px;
            height:40px;
            margin-left:auto;
            margin-right:auto;
            
        }
        
        #select {
            width:200px;
            height:40px;
            margin-left:auto;
            margin-right:auto;
            color:white;
            background:darkturquoise;
        }

        .log :nth-of-type(1) {
            background:blue;
            color:white;
        }

        .log :nth-of-type(2) {
            background:green;
            color:white;
        }
        .log :nth-of-type(3) {
            background:gold;
            color:white;
        }
        .log :nth-of-type(4) {
            background:orangered;
            color:white;
            margin-bottom: 25px;
        }

        .log button {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form action="<%= request.getContextPath() %>/login.me" method="post">
        <div class="loginForm">
            <div id=mimg><img src="image/피카츄.gif" alt=""></div>
            <div id="p">
            <p>TRAVEL MAKER</p> 
            </div>
            <br>
            <div id="login">
                <input type="text" id="" placeholder="ID" name="loginId"> <br>

                <input type="password" id="pwd" placeholder="****" name="loginPass"> <br> <br> 
            </div>
            <div id="loginBtn"> <button id="lo">로그인</button> &nbsp;&nbsp; 
            <input type="button" onclick="goJoin();" id="insert" value="회원가입">
            <script>
            	function goJoin() {
            		location.href="<%= request.getContextPath() %>/views/join&login/Join.jsp";
            		System.out.println("<%= request.getContextPath() %>/views/join&login/Join.jsp");
            	}
            </script>
            </div> <br>
            <div id="selectForm">
            <button id="select">아이디/비밀번호 찾기</button>
            </div>
            <br>
            <div class="log">
                <button name="fb">FaceBook 로그인</button>
                <button name="na">네이버 로그인</button>
                <button name="kk">Kakao 로그인</button>
                <button name="gg">Google 로그인</button>
            </div>
        </div>
    </form>
    

</body>
</html>