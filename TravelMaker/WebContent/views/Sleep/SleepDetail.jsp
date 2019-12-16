<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
  <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="<%= request.getContextPath()%>/views/Sleep/swiper-4.5.1/dist/css/swiper.min.css">
  
<title>Insert title here</title>
 <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="external.css">
<style>
    html,
    body {
      width: 1500px;
      height: 700px ;
     /*background:rgb(248, 237, 237);*/ 
    }

    body {

      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    #div1 {
      float: left;
      width: 50%;
      height: 70%;
      margin-left: 7%;
      box-sizing: border-box;

    }

    #div2 {
      float: left;
      width: 40%;
      height: 80%;
      box-sizing: border-box;

    }

    #head {
      width: 100%;
      height: 15%;
    }

    .swiper-container {
      width: 100%;
      height: 300px;
      margin-left: 25%;
      margin-top: 2%;
    }

    .swiper-slide {
      background-size: cover;
      background-position: left;
    }

    .gallery-top {
      height: 60%;
      width: 70%;
    }

    .gallery-thumbs {
      height: 20%;
      width: 70%;
      box-sizing: border-box;
      padding: 5px 0;
    }

    .gallery-thumbs .swiper-slide {
      height: 100%;
      opacity: 0.4;
    }

    .gallery-thumbs .swiper-slide-thumb-active {
      opacity: 1;
    }

    .badge {
      float: left;
      font-size: 30px;
      margin-top: 2%;
    }

    .sub {
      font-size: 20px;
      margin-top: 10%;
    }

    .badge1 {
      float: left;
      font-size: 20px;
      margin-top: 3%;
    }

    .sub2 {
      box-sizing: border-box;
      height: 10px;
      padding: 0 0 0 48px;
      margin-top:1px;
      background-size: 32px auto;
      font-size: 16px;
      line-height: 64px;
      color: rgba(0, 0, 0, 0.87);

    }

    .sub3 {
      width: 60%;
      height: 45%;
      border: 1px solid white;
      margin-left: 20%;
      margin-top: 45%;
      border:1px solid rgb(235, 223, 223);
      border-radius: 6px;

    }

    .sub4 {
      margin-top:2%;
      width: 60%;
      height: 45%;
      border: 1px solid white;
      margin-left: 20%;
     border:1px solid rgb(235, 223, 223);
      border-radius: 6px;

    }

    #subimg{
      width:40%;
      height:260px;
      margin-left: 3%;
      margin-top:2%;
      box-sizing: border-box;
      float: left;
    }

    #subimg1{
      width:50%;
      margin-left: 50%;
      margin-top:2%;

    }

    #subimg2{
      widows: 50%;
      margin-top:3%;
      margin-left:47%;

    }

    .last{
      width:100%;
      height:40%;
      background: rgb(248, 235, 235);
      text-align: center;
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


#over{
    line-height: 40px;
    padding: 12px 30px;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 30px;
    font-weight: bold;
    z-index: 1;
    color:gray;
}


#over:hover{
    background:  rgb(241, 56, 56);
    border-radius: 5px;
    text-decoration: none;
    color:white;
}

#over.active {
    background: rgb(241, 56, 56);
    color: rgb(241, 56, 56);
    border-radius: 6px;
}
#head{
   width:100%;
   height:20%;
}

  </style>
</head>
<body>

<%@ include file="../../views/common/menubar.jsp" %>
<div id="head"></div>

  <!-- Swiper -->
  <div id="div1">

    <div class="swiper-container gallery-top">
      <div class="swiper-wrapper">
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호1.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호2.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호3.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호4.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호5.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호6.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호7.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호8.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호9.jpg')"></div>
      </div>
      <!-- Add Arrows -->
      <div class="swiper-button-next swiper-button-white"></div>
      <div class="swiper-button-prev swiper-button-white"></div>
    </div>
    <div class="swiper-container gallery-thumbs">
      <div class="swiper-wrapper">
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호1.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호2.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호3.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호4.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호5.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호6.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호7.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호8.jpg')"></div>
        <div class="swiper-slide" style="background-image:url('<%= request.getContextPath()%>/resources/images/호9.jpg')"></div>
      </div>
    </div>

  </div>

  <div id="div2">

    <div class="badge1"><span class="build_badge"
        style="color: rgba(255,255,255,1); background-color: rgb(230, 68, 27);">7성급</span></div>
    <h2 class="badge">샹그랄라 호텔</h2>
    <h2 style="margin-top: 4%;">(Shangri-La Hotel)</h2>

    <h3 class="sub">위치 : 단구동 단관길110-11번지 401호</h3>

  </div>




  <div class="sub2">
   
      <div href="#" id="over" style="float:left; margin-left:17%; ">숙박/예약</div>
      <div href="#" id="over" style="float:left; margin-left:3%; ">객실정보</div>
        <div href="#" id="over" style="float:left; margin-left:3%;">리뷰</div>
        <br>
         <input type="date" value="mm-yy" style="width:15%; font-size: 15px; margin-left: 16%;
        border:1px solid rgb(250, 237, 237); background: rgb(250, 244, 244); font-weight: bold;">
  </div>

  <div class="sub3">

    <img id="subimg" src=<%= request.getContextPath()%>/resources/images/호7.jpg>
    <div id="subimg1" style="font-size:30px;">주니어 스위트<hr></div>
    <br><br>
    <div id="subimg2" style="font-size: 25px; margin-left: 50%;">가격
      <div style="text-align: right; font-size: 20px;"><strong>247,000~원</strong></div>
      <br>
      <button onclick="location.href='reservation.jsp'" style="background: rgb(235, 60, 60); color: white; text-align: center; border-radius:4px; width:100%; height:40px;"><a style=" font-size:25px;">예약</a>
     </div>
    </div>

  </div>

  <div class="sub4">

      <img id="subimg" src=<%= request.getContextPath()%>/resources/images/호5.jpg>
      <div id="subimg1" style="font-size:30px;">주니어 스위트 (2싱글베드)<hr></div>
      <br><br>
      <div id="subimg2" style="font-size: 25px; margin-left: 50%;">가격
        <div style="text-align: right; font-size: 20px;"><strong>268,000~원</strong></div>
        <br>
         <button onclick="location.href='reservation.jsp'" style="background: rgb(235, 60, 60); color: white; text-align: center; border-radius:4px; width:100%; height:40px;"><a style=" font-size:25px;">예약</a>
                
        </div>
      </div>
  
    </div>

    <div class="sub4">

        <img id="subimg" src=<%= request.getContextPath()%>/resources/images/호2.jpg>
        <div id="subimg1" style="font-size:30px;">주니어 스위트 (2인조식포함)<hr></div>
        <br><br>
        <div id="subimg2" style="font-size: 25px; margin-left: 50%;">가격
          <div style="text-align: right; font-size: 20px;"><strong>327,000~원</strong></div>
          <br>
          <div style="background: rgb(235, 60, 60); color: white; text-align: center; border-radius:4px; ">예약</div>
        </div>
    
      </div>
      

      <div class="last">

       여기는 대충 간지나게 설명 끄적하면 될듯




      </div>



  <!-- Swiper JS -->
  <script src="<%= request.getContextPath()%>/views/Sleep/swiper-4.5.1/dist/js/swiper.js"></script>

  <!-- Initialize Swiper -->
  <script>  
  

  
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      spaceBetween: 10,
      slidesPerView: 4,
      loop: true,
      freeMode: true,
      loopedSlides: 5, //looped slides should be the same
      watchSlidesVisibility: true,
      watchSlidesProgress: true,
    });
    var galleryTop = new Swiper('.gallery-top', {
      spaceBetween: 10,
      loop: true,
      loopedSlides: 5, //looped slides should be the same
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      thumbs: {
        swiper: galleryThumbs,
      },
    });
  </script>
</body>
</html>