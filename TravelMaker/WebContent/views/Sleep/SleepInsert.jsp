<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
   <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
.outer {
   width: 1500px;
   height: 3500px;
   background: white;
   margin: auto;
   margin-top: 150px;
}



.insertArea {
   width: 1000px;
   height: 3300px   ;
   margin: auto;
   background:ghostwhite;
   box-shadow:10px 5px 15px 15px gray;
   border-radius:10px;
   float
}

#titleImgArea {
   width: 350px;
   height: 200px;
   border: 2px dashed darkgray;
   text-align: center;
   display: table-cell;
   vertical-align: middle;
}

#contentImgArea1, #contentImgArea2, #contentImgArea3 {
   width: 150px;
   height: 100px;
   border: 2px dashed darkgray;
   text-align: center;
   display: table-cell;
   vertical-align: middle;
}

#titleImgArea:hover, #contentImgArea1:hover, #contentImgArea2:hover,
   #contentImgArea3:hover {
   cursor: pointer;
}

.btnArea {
   width: 250px;
   margin: auto;
}

button {
   height: 35px;
   width: 100px;
   background: black;
   border: black;
   color: white;
   border-radius: 5px;
   font-size:20px;
}

button:hover {
   cursor: pointer;
}


td{
   font-size:16px;
}
label{
   font-size:16px;
   font-family: 'Do Hyeon', sans-serif;
}



</style>
</head>
<body>
   <%@ include file="../../views/common/menubar.jsp" %>

   <div class="outer">
      <br>
      <h1 align="center" style="font-family: 'Do Hyeon', sans-serif;">숙박 작성</h1>

      <!-- 파일 업로드를 위해서는 enctype을 지정해줘야 함 -->
      <form action="<%= contextPath %>/insert.sl" method="post"
         enctype="multipart/form-data"> 
         <div class="insertArea">
            <table align="center">
               <br>
               <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">숙박 이름 </td>
                  <td>
                  <input name="sName">
                  </td>
                 <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">숙박 타입</td>
                  <td colspan="3"><select name="sType">
                     <option>----</option>
                     <option value=1>호텔</option>
                     <option value=2>모텔</option>
                     <option value=3>펜션</option>
                  </select></td>
                  </tr>
               </tr>
               <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">지역</td>
                  <td colspan="3"><select name="lCode">
                     <option>----</option>
                     <option value=10>서울특별시</option>
                     <option value=20>경기도</option>
                     <option value=30>강원도</option>
                     <option value=40>충청도</option>
                     <option value=50>경상도</option>
                     <option value=60>전라도</option>
                  </select></td>
               </tr>
               
               <tr>
                  <td style="font-family: 'Do Hyeon', sans-serif;">메인 이미지</td>
                  <td colspan="3">
                     <div id="titleImgArea">
                        <img id="titleImg" width="755" height="400">
                     </div>
                  </td>
               </tr>

               <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 정보</td>
                  <td colspan="3"><textarea name="sContent" rows="7" cols="104"
                        style="resize: none;"></textarea></td>
                  
                      
               </tr>
         <td width="100px" name="price" style="font-family: 'Do Hyeon', sans-serif; ">가격</td>
                  <td colspan="3"><textarea name="price" rows="1" cols="15"
                        style="resize: none;"></textarea></td>
         <br><br><br><br><br>
               
                              

               <tr>
                  <td style="font-family: 'Do Hyeon', sans-serif;">객실 사진</td>
                  <td>
                     <div id="contentImgArea1">
                        <img id="contentImg1" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea2">
                        <img id="contentImg2" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea3">
                        <img id="contentImg3" width="245" height="150">
                     </div>
                  </td>
                </tr>
                <tr>
                
                
                <td></td>
                  <td>
                     <div id="contentImgArea1">
                        <img id="contentImg1" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea2">
                        <img id="contentImg2" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea3">
                        <img id="contentImg3"
                         width="245" height="150">
                     </div>
                  </td>
                
               </tr>
               </tr>
               
                     <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 내용</td>
                  <td colspan="3"><textarea name="scontent" rows="7" cols="104"
                        style="resize: none;"></textarea></td>
               </tr>

            </table>

            <!-- 파일 업로드 하는 부분 -->
            <div id="fileArea">
               <input type="file" id="thumbnailImg1" name="thumbnailImg1"
                  onchange="LoadImg(this,1)"> <input type="file"
                  id="thumbnailImg2" name="thumbnailImg2" onchange="LoadImg(this,2)">
               <input type="file" id="thumbnailImg3" name="thumbnailImg3"
                  onchange="LoadImg(this,3)"> <input type="file"
                  id="thumbnailImg4" name="thumbnailImg4" onchange="LoadImg(this,4)">
            </div>
            <br><br>

            <div align="center" id="detailArea">
            <table>
               <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 타입 사진1</td>
                  <td>
                     <div id="contentImgArea1">
                        <img id="contentImg1" width="245" height="150">
                     </div>
                  </td>
                  
               </tr>
               <br>
               
                  <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 타입 내용1</td>
                  <td colspan="3"><textarea name="scontent1" rows="7" cols="104"
                        style="resize: none;"></textarea></td>
                        
               </tr>
               <tr>
                <td width="100px" name="price" style="font-family: 'Do Hyeon', sans-serif; ">가격1</td>
                  <td colspan="3"><textarea name="price1" rows="1" cols="15"
                        style="resize: none;"></textarea></td>
                        </tr>
               
                 <tr>
                  <td style="font-family: 'Do Hyeon', sans-serif;">객실 사진 세부1</td>
                  <td>
                     <div id="contentImgArea1">
                        <img id="contentImg1" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea2">
                        <img id="contentImg2" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea3">
                        <img id="contentImg3" width="245" height="150">
                     </div>
                  </td>
                </tr>
                <tr>
               
            </table>
            
               
            </div>
            <br><br><br><br><br>
            
            
              <div align="center" id="detailArea">
            <table>
               <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 타입 사진2</td>
                  <td>
                     <div id="contentImgArea2">
                        <img id="contentImg2" width="245" height="150">
                     </div>
                  </td>
                  
               </tr>
               <br>
               
                  <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 타입 내용2</td>
                  <td colspan="3"><textarea name="scontent2" rows="7" cols="104"
                        style="resize: none;"></textarea></td>
                        
               </tr>
               <tr>
                <td width="100px" name="price" style="font-family: 'Do Hyeon', sans-serif; ">가격2</td>
                  <td colspan="3"><textarea name="price2" rows="1" cols="15"
                        style="resize: none;"></textarea></td>
                        </tr>
               
                 <tr>
                  <td style="font-family: 'Do Hyeon', sans-serif;">객실 사진 세부2</td>
                  <td>
                     <div id="contentImgArea11">
                        <img id="contentImg11" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea22">
                        <img id="contentImg22" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea33">
                        <img id="contentImg33" width="245" height="150">
                     </div>
                  </td>
                </tr>
                <tr>
               
            </table>
            
               
            </div>
            <br><br><br><br><br>
            
              <div align="center" id="detailArea">
            <table>
               <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 타입 사진3</td>
                  <td>
                     <div id="contentImgArea3">
                        <img id="contentImg3" width="245" height="150">
                     </div>
                  </td>
                  
               </tr>
               <br>
               
                  <tr>
                  <td width="100px" style="font-family: 'Do Hyeon', sans-serif;">객실 타입 내용3</td>
                  <td colspan="3"><textarea name="scontent3" rows="7" cols="104"
                        style="resize: none;"></textarea></td>
                        
               </tr>
               <tr>
                <td width="100px" name="price" style="font-family: 'Do Hyeon', sans-serif; ">가격3</td>
                  <td colspan="3"><textarea name="price3" rows="1" cols="15"
                        style="resize: none;"></textarea></td>
                        </tr>
               
                 <tr>
                  <td style="font-family: 'Do Hyeon', sans-serif;">객실 사진 세부3</td>
                  <td>
                     <div id="contentImgArea111">
                        <img id="contentImg111" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea222">
                        <img id="contentImg222" width="245" height="150">
                     </div>
                  </td>
                  <td>
                     <div id="contentImgArea333">
                        <img id="contentImg333" width="245" height="150">
                     </div>
                  </td>
                </tr>
                <tr>
               
            </table>
            
               
            </div>
            
            

            <script>
               // 내용 작성 부분의 공간을 클릭할 때 파일 첨부 창이 뜨도록 설정하는 함수
               $(function() {
                  $("#fileArea").hide();

                  $("#titleImgArea").click(function() {
                     $("#thumbnailImg1").click();
                  });

                  $("#contentImgArea1").click(function() {
                     $("#thumbnailImg2").click();
                  });

                  $("#contentImgArea2").click(function() {
                     $("#thumbnailImg3").click();
                  });

                  $("#contentImgArea3").click(function() {
                     $("#thumbnailImg4").click();
                  });

               });

               // 파일 첨부 했을 때 미리보기 공간에 미리보기가 가능하게 하는 함수
               function LoadImg(value, num) {
                  // value => input type="file"
                  // num => 이후에 조건문 작성하여 번호에 맞춰서 img 적용 시킬 것

                  // file이 존재하는지 확인
                  if (value.files && value.files[0]) {
                     // 파일을 읽어 들일 FileReader 객체 생성
                     var reader = new FileReader();

                     // 파일 읽기가 다 완료 되었을 때 실행되는 메소드
                     reader.onload = function(e) {

                        switch (num) {
                        case 1:
                           // e.target.result -> data:URL (파일의 컨텐츠)
                           $("#titleImg").attr("src", e.target.result);
                           break;
                        case 2:
                           $("#contentImg1").attr("src",
                                 e.target.result);
                           break;
                        case 3:
                           $("#contentImg2").attr("src",
                                 e.target.result);
                           break;
                        case 4:
                           $("#contentImg3").attr("src",
                                 e.target.result);
                           break;
                        }
                     }
                     // 파일 내용을 읽어들여 dataURL 형식의 문자열로 설정
                     reader.readAsDataURL(value.files[0]);
                  }
               }
            </script>
         </div>
         <br>
         <div class="btnArea">
            <button type="button" onclick="javascript:history.back();" style="font-family: 'Black Han Sans', sans-serif;">취소하기</button>
            <button type="submit" style="font-family: 'Black Han Sans', sans-serif;">작성완료</button>
         </div>
      </form>


   </div>














</body>
</html>