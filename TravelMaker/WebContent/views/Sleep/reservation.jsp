<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>

        body{
            width:1500px;
            height:1000px;
        }

    #head{
    width:100%;
    height:20%;
    border: 1px solid blue;

}

    #rs{
    box-sizing: border-box;
    float: left;
    width:45%;
    height:100%;
    margin-top: 8%;
    margin-left: 20%;
    border-radius:3px;
    
}

    #rs2{
        box-sizing: border-box;
        float:right;
        margin-right: 17%;
        width:18%;
        height:55%;
        margin-top:8%;
        background: rgb(243, 240, 240);
    }


    #last{
        width:100%;
        height:200px;
        background: rgb(236, 224, 224);
    }

    #select{
        color:gray;
        width:35%; 
        height:50px; 
        font-size: 20px;
        background: rgb(248, 246, 246);
        border-radius: 3px;
    }

.agree{
    padding:23px 16px;font-size:25px
    }
.agree p{
    position: relative;height: 40px;padding-left: 37px;line-height: 40px
    }
 .agree .all_check{
     font-weight: bold;
 }
 .agree .all_check span{
     color:rgba(0,0,0,0.87)
     }
 .agree span{
     display: inline-block;color: rgba(0,0,0,0.56);cursor:pointer
     }
 .agree span b{
     font-weight:normal;color:rgb(230,28,81);
     }
.agree input{
    position: absolute;top: 50%;left: 0;margin-top: -12px;
    }


    
    
    </style>
</head>
<body>
	<%@ include file="../../views/common/menubar.jsp" %>


        <div id="rs">
        <h3>예약자 정보</h3>
        <br>
        <h3 style="color:gray;">예약자 이름</h3>
        <input type="text" value="&nbsp;&nbsp;이태균(예약자 이름 가져오기)" style=" width:90%; height:50px; border:1px solid gray; font-size: 20px;
                    color:gray; border-radius:3px;">
                    <br>

    <h3 style="color:gray;">휴대폰 번호</h3>
<input type="text" value="&nbsp;&nbsp;01077619227(예약자 핸드폰 번호 가져오기)" style=" width:90%; height:50px; border:1px solid gray; font-size: 20px;
            color:gray; border-radius:3px;">

            <br><br><br><br><br>

            <div id="rstype" style="font-size: 30px;">결제수단 선택</div>
            <br>
            <select id="select">
                    <option style="color:gray;">&nbsp;&nbsp;카드결제 (체크,신용)</option>
                        <option>휴대폰 결제</option>
                        <option>PAYCO 결제</option>
                        <option>네이버페이 결제</option>
                        </select>
                        <br><br><br>
            
             <section class="agree">    
                <p class="all_check"><label><input type="checkbox" name="checkAll" class="inp_chk_02"> <span>전체 동의</span></label></p>
            <p><input type="checkbox" name="checkOne" class="inp_chk_02"> <span onclick="pop_agree_01();">숙소이용규칙 및 취소/환불규정 동의 <b>(필수)</b></span></p>
                <p><input type="checkbox" name="checkOne" class="inp_chk_02"> <span onclick="pop_agree_02();">개인정보 수집 및 이용 동의 <b>(필수)</b></span></p>
              <p><input type="checkbox" name="checkOne" class="inp_chk_02"> <span onclick="pop_agree_03();">개인정보 제 3자 제공 동의 <b>(필수)</b></span></p>
                                
                    <p class="guest_chk_area"><input type="checkbox" name="checkOne" class="inp_chk_02"> <span>만 14세 이상입니다. <b>(필수)</b><span></span></span></p>               
                            </section>

            
        </div>

        <div class="layer pop_fix pop_agree_01" style="display: none;">
                <div class="fix_title">
                    숙소이용규칙 및 취소/환불 규정
                    <button onclick="close_layer();">닫기</button>
                </div>
                <div class="fix_cont" style="touch-action: none;">
                    <div class="scroller" style="transform: translate(0px, 0px) translateZ(0px);">
                        <div class="txt">
                            <strong>이용규칙</strong>
                            <ul class="dot_txt">
                                                    <li>최대 인원 초과 시 입실 불가합니다.</li>
                                <li>정원 기준 요금 외 인원 추가 요금은 현장결제입니다.</li>
                                <li>제공 이미지는 배정된 객실과 다를 수 있습니다.</li>
                                <li>제공 정보는 숙소의 사정에 따라 변경될 수 있습니다.</li>
                                <li>미성년자는 보호자 동반 시 투숙이 가능합니다.</li>
                                                    <li>체크인 시 배정의 경우, 객실과 베드타입을 보장하지 않습니다.</li>
                                <li>객실 타입에 시간이 별도 기재된 경우, 체크인/아웃 시간이 상이할 수 있습니다.</li>
                                <li>조식, 인원, 침구, 침대 등 추가는 예약하신 <mark>숙소로 요청 및 결제</mark> 가능합니다.</li>
                                                                        <li>업체 현장에서 객실 컨디션 및 서비스로 인해 발생된 분쟁은 여기어때에서 책임지지 않습니다.</li>
                            </ul>
                            <strong>취소/환불규정</strong>
                            <ul class="dot_txt">
                                                                                    <li><mark>비회원으로 결제 시 취소 및 환불이 불가합니다.</mark></li>
                                        <li>숙소 사정에 의해 취소 발생 시 100% 환불이 가능합니다.</li>
                                        <li>단! 숙소의 객실 정보가 수시로 변경될 수 있으며 이로 인한 불이익은 여기어때가 책임지지 않습니다.</li>
                                                            
                                                </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="layer pop_fix pop_agree_02" style="display: none;">
                    <div class="fix_title">
                        개인정보 수집 및 이용 동의
                        <button onclick="close_layer();">닫기</button>
                    </div>
                    <div class="fix_cont" style="touch-action: none;">
                        <div class="scroller" style="transform: translate(0px, 0px) translateZ(0px);">
                            <div class="txt">
                                <p>“여기어때” 개인정보 수집 이용 목적 및 항목, 보유기간은 아래와 같습니다.<br>“회원” 은 정보 수집/이용 약관에 동의하지 않을 수 있으며, 동의하지 않는 경우 예약 서비스 이용에 제한이 있을 수 있습니다.</p>
                                <table cellpadding="0" cellspacing="0" class="pop_table">
                                <colgroup><col width="33%"><col width="33%"><col width="34%"></colgroup>
                                <tbody><tr>
                                    <th>수집/이용 목적</th>
                                    <th>위탁 업무 내용</th>
                                    <th>개인 정보의 보유 및 이용 기간</th>
                                </tr>
                                <tr>
                                    <td>예약 서비스 이용</td>
                                    <td>예약자명, 휴대폰 번호, 결제정보</td>
                                    <td>전자상거래 상 소비자 보호에 관한 법률에 따라 5년 간 보관</td>
                                </tr>
                                <tr>
                                    <td>결제 서비스 이용</td>
                                    <td>- 신용카드 결제: 카드사명, 카드번호, 유효기간, 이메일 등 - 휴대폰 결제: 휴대폰 번호, 통신사, 결제 승인번호 등 - 계좌 이체 시: 은행명, 계좌번호, 예금주</td>
                                    <td>전자상거래 상 소비자 보호에 관한 법률에 따라 5년 간 보관</td>
                                </tr>
                                <tr>
                                    <td>서비스 이용 및 부정거래 기록 확인</td>
                                    <td>서비스 이용 시간/이용 기록, 접속 로그, 이용 콘텐츠, 쿠키, 접속IP 정보, 주소, 사용된 신용카드 정보, 기기 모델명, 브라우저 정보</td>
                                    <td>통신비밀보호법에 따라 3개월간 보관</td>
                                </tr>
                                </tbody></table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="layer pop_fix pop_agree_03" style="display: none;">
                        <div class="fix_title">
                            개인정보 제 3자 제공 동의
                            <button onclick="close_layer();">닫기</button>
                        </div>
                        <div class="fix_cont">
                            <div class="scroller">
                                <div class="txt">
                                    <p>회원 정보를 제공받는 자, 제공목적, 제공하는 정보, 보유 · 이용기간은 아래와 같습니다.<br>"회원"은 정보 수집/이용 약관에 동의하지 않을 수 있으며, 동의하지 않는 경우 예약 서비스 이용에 제한이 있을 수 있습니다.</p>			
                                    <table cellpadding="0" cellspacing="0" class="pop_table">
                                    <colgroup><col width="30%"><col width="70%"></colgroup>
                                    <tbody><tr>
                                        <th>제공받는 자</th>
                                        <td>노보텔 스위트 앰배서더 서울 용산</td>
                                    </tr>
                                    <tr>
                                        <th>제공 목적</th>
                                        <td>숙박예약서비스 이용계약 이행(서비스 제공, 확인, 이용자 정보 확인)</td>
                                    </tr>
                                    <tr>
                                        <th>제공하는 정보</th>
                                        <td>예약한 숙박서비스의 이용자 정보(예약자 이름, 휴대폰번호, 예약번호, 예약한 업체명, 예약한 객실명, 결제금액)</td>
                                    </tr>
                                    <tr>
                                        <th>제공받는 자의 개인정보 보유 및 이용기간</th>
                                        <td>예약서비스 제공 완료 후 6개월</td>
                                    </tr>
                                    </tbody></table>
                                </div>
                            </div>
                        </div>
                    </div>

        <script>
       function allCheckFunc( obj ) {
    $("[name=checkOne]").prop("checked", $(obj).prop("checked") );
}
  
// 체크박스 체크시 전체선택 체크 여부
function oneCheckFunc( obj ){

    var allObj = $("[name=checkAll]");
    var objName = $(obj).attr("name");

    if($(obj).prop("checked")){
        checkBoxLength = $("[name="+ objName +"]").length;
        checkedLength = $("[name="+ objName +"]:checked").length;

        if( checkBoxLength == checkedLength ) {
            allObj.prop("checked", true);
        } else {
            allObj.prop("checked", false);
        }
    }
    else
    {
        allObj.prop("checked", false);
    }
}
  
$(function(){
    $("[name=checkAll]").click(function(){
        allCheckFunc( this );
    });
    $("[name=checkOne]").each(function(){
        $(this).click(function(){
            oneCheckFunc( $(this) );
        });
    });
});
function reserveVerify() {
    clearTimecount();
    cencelSend();
}



        </script>

        

        <div id="rs2">
            <div style="color:gray; font-size:17px; margin-top:8%; margin-left:6%;">숙소이름 </div>
            <div style="color:black; font-size:22px; margin-top:3%; margin-left:6%;">샹그랄라 호텔</div>
           

            <div style="color:gray; font-size:17px; margin-top:8%; margin-left:6%;">객실타입/기간 </div>
            <div style="color:black; font-size:22px; margin-top:3%; margin-left:6%;">주니어스위트(타입가져오기) /1(CheckIn-CheckOut)박</div>

            <div style="color:gray; font-size:17px; margin-top:8%; margin-left:6%;">체크인 </div>
            <div style="color:black; font-size:22px; margin-top:3%; margin-left:6%;">12.11수(CheckIn가져오기) 15:00(이거는 그냥 고정)</div>

            <div style="color:gray; font-size:17px; margin-top:8%; margin-left:6%;">체크아웃 </div>
            <div style="color:black; font-size:22px; margin-top:3%; margin-left:6%;">12.12목(CheckIn가져오기) 12:00(이거는 그냥 고정)</div>
            <br>

            <div style="width:85%; margin-left:5%;"><hr></div>
            <br>
            <div style="color:black; font-size:22px; margin-top:3%; margin-left:6%; font-weight: bolder; box-sizing: border-box; float:left;">총 결제 금액</div>
            <div style="  box-sizing: border-box; float:left; margin-top: 5%;">(VAT포함)</div>

            <div style="font-size: 30px; color:rgb(224, 33, 33); font-weight: bold; float: left;">274,500(금액가져오기)</div>

            <div style="float: left;">- 해당 객실가는 세금, 봉사료가 포함 된 금액입니다</div>
            <br>

            <button id="rsbtn"style="width:100%; height:50px; background:rgb(224, 33, 33); color:white; margin-top:30%;
                        border-radius:5px;">
                결제
        </button>
</div>

<br><br><br><br><br><br>

<div id="last" style="float: left;">asdfasdfasd</div>











</body>
</html>