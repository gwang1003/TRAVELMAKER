<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="external.css">
<style>

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
@media ( max-width :820px) {
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
</style>
</head>
<body>
	<header>
		<div id="wrap">
			<nav>
				<div class="logo">Travel Maker</div>
				<div class="menuToggle"></div>
				<ul id="navUl">
					<li><a id="a0" class="active" href="#main">Home</a></li>
					<li><a id = "a1" href="#aboutMe">BEST</a></li>
					<li><a id="a1" href="#aboutMe">축제</a></li>
					<li><a id="a2" href="#guestBook">여행</a></li>
					<li><a id="a3" href="#gallery">숙박</a></li>
					<li><a id="a3" href="#gallery">커뮤니티</a></li>
					<li><a id="a4" href="#login">LOGIN</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!--한 화면 단위로 스크롤 이동-->

	<!--responsive nav bar-->
	<script>
		$(document).ready(function() {
			$(".menuToggle").click(function() {
				$(this).toggleClass('active');

				$("#navUl").toggleClass('active');
				if ($(this).hasClass('active')) {
					$("#skill-wrapper").hide()
					$(".html").animate({
						"width" : "0"
					}, 'slow')
					$(".js").animate({
						"width" : "0"
					}, 'slow')
					$(".java").animate({
						"width" : "0"
					}, 'slow')
					$(".C").animate({
						"width" : "0"
					}, 'slow')
					$(".android").animate({
						"width" : "0"
					}, 'slow')
				} else {
					$("#skill-wrapper").show();
					$(".html").animate({
						"width" : "80%"
					}, 'slow')
					$(".js").animate({
						"width" : "70%"
					}, 'slow')
					$(".java").animate({
						"width" : "80%"
					}, 'slow')
					$(".C").animate({
						"width" : "40%"
					}, 'slow')
					$(".android").animate({
						"width" : "80%"
					}, 'slow')

				}
			})
		});
	</script>

	<script type="text/javascript">
		window.onload = function() {
			var elm = ".screen";
			$(elm).each(function(index) {
				// 개별적으로 Wheel 이벤트 적용
				$(this).on("mousewheel DOMMouseScroll", function(e) {
					e.preventDefault();
					var delta = 0;
					if (!event)
						event = window.event;
					if (event.wheelDelta) {
						delta = event.wheelDelta / 120;
						if (window.opera)
							delta = -delta;
					} else if (event.detail)
						delta = -event.detail / 3;
					var moveTop = $(window).scrollTop();
					var elmSelecter = $(elm).eq(index);
					console.log(index);
					// 마우스휠을 위에서 아래로
					if (delta < 0) {
						if ($(elmSelecter).next() != undefined) {
							try {
								moveTop = $(elmSelecter).next().offset().top;

							} catch (e) {
							}
						}
						// 마우스휠을 아래에서 위로
					} else {
						if ($(elmSelecter).prev() != undefined) {
							try {
								moveTop = $(elmSelecter).prev().offset().top;
							} catch (e) {
							}
						}
					}
					if (moveTop >= 667 && moveTop < 1300) {
						$(".html").animate({
							"width" : "80%"
						}, 'slow')
						$(".js").animate({
							"width" : "70%"
						}, 'slow')
						$(".java").animate({
							"width" : "80%"
						}, 'slow')
						$(".C").animate({
							"width" : "40%"
						}, 'slow')
						$(".android").animate({
							"width" : "80%"
						}, 'slow')
					} else {
						$(".html").animate({
							"width" : "0"
						}, 'slow')
						$(".js").animate({
							"width" : "0"
						}, 'slow')
						$(".java").animate({
							"width" : "0"
						}, 'slow')
						$(".C").animate({
							"width" : "0"
						}, 'slow')
						$(".android").animate({
							"width" : "0"
						}, 'slow')
					}
					// 화면 이동 0.8초(800)
					$("html,body").stop().animate({
						scrollTop : moveTop + 'px'
					}, {
						duration : 800,
						complete : function() {

						}
					});
				});
			});
		}
	</script>


	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>