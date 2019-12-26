<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, sleep.model.vo.*"%>

<%
	ArrayList<Sleep> list = (ArrayList<Sleep>) request.getAttribute("list");
	ArrayList<Sleep> slist = (ArrayList<Sleep>) request.getAttribute("slist");
	ArrayList<Attachment> flist = (ArrayList<Attachment>) request.getAttribute("flist");

	PageInfo pi = (PageInfo) request.getAttribute("pi");

	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
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
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<style>
body {
	width: 1500px;
	height: 1500px;
	margin-left: auto;
	margin-right: auto;
}

#total {
float:left;
	width: 100%;
	height: 950px;
}

#choice1 {
	float: left;
	width: 1000px;
	height: 1200px;
	margin-left: 120px;
	border: 1px solid black;
	padding: 0;
	background: white;

	border-radius: 3px;
}

#ct {
	width: 380px;
}
  

#choice2 {	
	margin-left:5%;
	float:left;
	border-radius: 8px;
	border: 3px solid aliceblue;
	background-color: orangered;
	color: black;
	width: 300px;
	height: 700px;
	text-align: center;
}

.btn-outline-info {
	width: 70px;
	height: 50px;
	margin: auto;
	font-size: 17px;
	border: none;
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

.count {
	width: 100%;
	margin-right: 20px;
}

.count p {
	width: 50%;
	float: left;
}

#good {
	float: right;
}

#festivalTable {
	width: 100%;
	height: 800px;
	margin-left: 20px;
	magin-right: 20px;
}

#month-choice {
	margin-top: 50px;
	margin-bottom: 50px;
}

#write {
	float: right;
}

#insertBtn {
	border: none;
	background-color: ghostwhite;
}

button {
	font-family: 'Do Hyeon', sans-serif;
}

span, p {
	font-family: 'Do Hyeon', sans-serif;
}

 #minus{
            width:30px;
            height:30px;
        }
        
  #plus{
  	 width:30px;
            height:30px;
  }      
</style>
</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
	<h1
		style="color: black; color: black; margin-top: 120px; margin-left: 40%; font-family: 'Black Han Sans', sans-serif;">숙박
		ALL</h1>
	<br>
	<br>
	<div id="total">

		<div id="choice1">

			<div id="search" align="center" style="display: inline;">
				<div>
					<!-- <select>
						<option>----</option>
						<option>제목</option>
						<option>작성자</option>
					</select>  --><input type="search"style="width: 500px; height: 40px; margin-top: 20px;">
					<button style="width: 100px; height: 40px; background-color: orangered; color: white; border-radius: 10px; font-size: 25px;">검색</button>


				</div>

			</div>

			<br> <br>



			<!-- 전체 글수 최신순 인기순 새로고침 -->
			<div class="count">
				
				<div id="good">
					
			</div>
			<br> <br>
			<%
				if (loginUser != null) {
			%>
			<div id="write">
				<button type="button" id="insertBtn"onclick="location.href='<%=contextPath%>/views/Sleep/SleepInsert.jsp'">
					<img src="<%=contextPath%>/resources/images/edit.png" width="40px"
						height="40px">
				</button>
			</div>
			<%
				}
			%>


			<br> <br>

			<hr>

			<div id="festivalTable">

				<div class="thumbnailArea" style="width: 1000px; height: 1000px;">
					<%
						for (Sleep s : slist) {
					%>

					<div class="cli" style="height: 210px;">
						<input type="hidden" value="<%=s.getsId()%>">
						<div style="float: left; width: 300px; box-sizing: border-box;">

							<%
								for (Attachment at : flist) {
							%>
							<%
								if (s.getsId() == at.getbId()) {
							%>


							<img src="<%=contextPath%>/resources/sleep_uploadFile/<%=at.getChangeName()%>"
								width="300px" height="200px">

							<%
								}
							%>
							<%
								}
							%>
						</div>
						<div style="float: left; width: 500px; height: 200px; box-sizing: border-box;">
							
							 <p style="font-size:40px; float:left;"><%=s.getsName()%><br><br><span style="font-size:30px; color:orangered"><%= s.getPrice() %>원~</span></p>
						<p style="float:left"><%=s.getsContent()%></p>
						<%-- <p style="color:red; font-size:30px; float:left;"><%= s.getPrice() %>원~</p> --%>
						</div>
						<div
							style="float: left; width: 200px; height: 200px; box-sizing: border-box; margin-bottom: 40px;">
							<%-- 	<p><%=b.getbWriter()%></p> --%>
							<p>
								작성자 :
								<%=s.getsWriter()%>
								<br> 조회수 :
								<%-- <%=b.getGood()%> --%>
								<%=s.getsCount()%><br>
								(<% if(s.getlCode().equals("10")) {%> 호텔 ) 
								<% }else if(s.getlCode().equals("20")) {%> 모텔 )
								<% }else { %> 펜션 )
								<% }	 %>
							</p>
						</div>
					</div>
					<hr>
					<%
						}
					%>
				</div>
				<hr>
			</div>

			<!-- 페이징 바 -->
			<div class="pagingArea" align="center">
				<!-- 맨 처음으로 (<<) -->
				<button
					onclick="location.href='<%=contextPath%>/list.sl?currentPage=1'">
					&lt;&lt;</button>

				<!-- 이전 페이지로 (<) -->
				<%
					if (currentPage == 1) {
				%>
				<button disabled>&lt;</button>
				<%
					} else {
				%>
				<button
					onclick="location.href='<%=contextPath%>/list.sl?currentPage=<%=currentPage - 1%>'">
					&lt;</button>
				<%
					}
				%>

				<!-- 10개의 페이지 목록 -->
				<%
					for (int p = startPage; p <= endPage; p++) {
				%>
				<%
					if (p == currentPage) {
				%>
				<button disabled>
					<%=p%>
				</button>
				<%
					} else {
				%>
				<button
					onclick="location.href='<%=contextPath%>/list.sl?currentPage=<%=p%>'"><%=p%></button>
				<%
					}
				%>
				<%
					}
				%>

				<!-- 다음 페이지로 (>) -->
				<%
					if (currentPage == maxPage) {
				%>
				<button disabled>&gt;</button>
				<%
					} else {
				%>
				<button
					onclick="location.href='<%=contextPath%>/list.sl?currentPage=<%=currentPage + 1%>'">
					
					&gt;</button>
				<%
					}
				%>

				<!-- 맨 끝으로 (>>) -->
				<button
					onclick="location.href='<%=contextPath%>/list.sl?currentPage=<%=maxPage%>'">
					&gt;&gt;</button>
			</div>
		</div>




		<!-- 인워수 늘리고 줄이기 -->
		<script> 
        $(function(){
            $('#decreaseQuantity').click(function(e){
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat,10);
                num--;
                if(num<=0){
                    alert('더이상 줄일수 없습니다.');
                    num =1;
                }
                $('#numberUpDown').text(num);
            });
            $('#increaseQuantity').click(function(e){
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat,10);
               num++;
                
                if(num>8){
                    alert('더이상 늘릴수 없습니다.');
                    num=4;
                }
                $('#numberUpDown').text(num);
            });
        });
        </script>



		<!-- 가격 -->

		<script>
            $(function(){
                $('#decreaseQuantity1').click(function(e){
                    e.preventDefault();
                    var stat = $('#numberUpDown').text();
                    var num = parseInt(stat,10);
                    num -= 10000;
                    if(num<=0){
                        alert('더이상 줄일수 없습니다.');
                        num =0;
                    }
                    $('#numberUpDown1').text(num);
                });
                $('#increaseQuantity1').click(function(e){
                    e.preventDefault();
                    var stat = $('#numberUpDown1').text();
                    var num = parseInt(stat,10);
                   
                  num += 10000;
                    
                    if(num>100000000){
                        alert('더이상 늘릴수 없습니다.');
                        num=60000
                        ;
                    }
                    $('#numberUpDown1').text(num);
                });
            });
            </script>




	</div>

	<div id="choice2">
		<h2>지역</h2>
		<select
			style="width: 100%; height: 30px; font-size: 20px; align: center;">
			<option>--------</option>
			<option>서울</option>
			<option>경기</option>
			<option>강원</option>
			<option>충청</option>
			<option>경상</option>
			<option>제주</option>

		</select> <br> <br>
		<button type="button" class="btn btn-outline-light" style="float:left">지역별</button>
					<br><br><br>
		<button type="button" class="btn btn-outline-light" style="float:left">조회순</button>
		

	</div>


	<script>
		$(function(){
			$(".cli").click(function(){
				var sId =  $(this).children().eq(0).val();
				location.href="<%=contextPath%>/detail.sl?sId=" +sId;
			});
		});
	</script>


	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>