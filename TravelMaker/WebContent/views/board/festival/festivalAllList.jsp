<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <style>
        body{
            width: 1500px;
            margin-left: auto;
            margin-right: auto;

        }

        #total{
            position: relative;
        }

        #choice1 {
        float: left;
        width: 1000px;
        height: 1000px;
        margin-left: 120px;
        border: 1px solid skyblue;
        background-color: white;
        position: relative;
        padding: 0;
    }

    .travel {
        width: 100%;
        height: 30%;
    }

    #choice2 {
        position: fixed;
        right: 70px;
        top: 220px;
        border-radius: 12px;
        border: 3px solid aliceblue;
        background-color: aliceblue;
        box-shadow: 5px 5px 5 10px ghostwhite;
        color: black;
        width: 300px;
        height: 500px;
        text-align: center;

    }

    .btn-outline-info{
        width: 70px;
        height: 50px;
        margin: auto;
        font-size: 13px;
        border: none;
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

    
    .info-btn{
        float:right;
        font-weight: 700;
        color: black;
        background-color: white;
        border-radius: 10px;
        margin: 6px 0px;
        height: 38px;

    }

    .in-wrap{
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

    .stage>h2,
    p {
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

    .count{
        width: 100%;
    }

    .count p{
        width: 50%;
        float: left;
    }
    #good{
        float: right;
    }

    #festivalTable{
        width: 100%;
        margin: 0;
    }

    th{
        text-align:center;
    }

    #month-choice{
        margin-top: 50px;
        margin-bottom: 50px;

    }
</style>
</head>

<body>
    <%@ include file="../../common/menubar.jsp" %>
    <h1 style="color:black; font-weight:900; color:black; margin-top: 140px; margin-left: 40%;">축제 목록</h1>
    <div id="total">

        <div id="choice1">
            <div class="tag">
                <h3>축제 ALL</h3>
            </div>
            <br>

            <!-- 전체 글수 최신순 인기순 새로고침 -->
            <div class="count">
                <span style="text-align:left">전체 글 수 : </span>
                <div id="good">
                        <button type="button" class="btn btn-outline-primary">최신순</button>&emsp;
                        <button type="button" class="btn btn-outline-primary">인기순</button>&emsp;
                    <a href="javascript:" class="btn_represch"><img src="<%= contextPath %>/resources/images/새로고침.png" id="represch" width="30px" height="30px"></a>&emsp;
                </div>

            </div>
            <br>



            <div id="festivalTable">
                
            </div>

        </div>




        <div id="choice2">
            <table align="center" id="month-choice">
                <tr>
                    <td><button type="button" class="btn btn-outline-info">#1월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#2월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#3월</button></td>
                </tr>
                <tr>
                    <td><button type="button" class="btn btn-outline-info">#4월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#5월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#6월</button></td>
                </tr>
                <tr>
                    <td><button type="button" class="btn btn-outline-info">#7월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#8월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#9월</button></td>
                </tr>
                <tr>
                    <td><button type="button" class="btn btn-outline-info">#10월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#11월</button></td>
                    <td><button type="button" class="btn btn-outline-info">#12월</button></td>
                </tr>
            </table>


            <hr>
            <table align="center" id="month-choice">
                <tr>
                    <td><button type="button" class="btn btn-outline-info">서울<br>특별시</button></td>
                    <td><button type="button" class="btn btn-outline-info">강원도</button></td>
                    <td><button type="button" class="btn btn-outline-info">경기도</button></td>
                </tr>
                <tr>
                    <td><button type="button" class="btn btn-outline-info">충청도</button></td>
                    <td><button type="button" class="btn btn-outline-info">경상도</button></td>
                    <td><button type="button" class="btn btn-outline-info">전라도</button></td>
                </tr>
            </table>
        </div>

    </div>


    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>