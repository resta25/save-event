<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>

* {box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}
.pointColor {color: #ff0000; font-size: 4rem !important; font-weight: 700;}

/* 기본 css 초기화 */
#page_landing_c main {max-width: 818px; background-color: transparent;}
#page_landing_c .wrap_form {background-color: transparent; border: none; padding: 0; position: relative;}
#page_landing_c .wrap_curd {background-color: transparent;}
.form input[type="checkbox"], .form input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}
input:is([type="checkbox"],[type="radio"]) {width: 0; height: 0;}
.wrap_checkbox input:is([type="checkbox"],[type="radio"]) {width: 15px; height: 15px;}
.btn_submit {background-color: transparent !important;}
:is(#page_landing_a, #page_landing_c) .wrap_checkbox > div {justify-content: center;}
#page_landing_c .wrap_curd input[type="radio"] {margin-left: 0;}

:is(#page_landing_a, #page_landing_c) .wrap_curd .btn_submit {
    height: auto;
    padding: 10px 0;
    font-size: 28px;
    line-height: 2;
    font-weight: 700;
    max-width: 89.85%;
    margin: 3% auto 7.35%;
}
input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {background-color: transparent; border: none; outline: none; padding: 0; margin: 0;}
.wrap_curd select {border-radius: 0;}
input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {border: 1px solid #000; border-radius: 0;}
#page_landing_c .wrap_checkbox {padding: 0;}

.wrap_form {padding-bottom: 10%;}
.wrap_form .formContents{padding: 0;}
.title-img {width: 80%; margin: 0 auto 5%;}

/* 상단 스탬프영역 */
#page_landing_c .wrap_curd .stamp-box {position: relative;}
#page_landing_c .wrap_curd .stamp-box > img {width: 100%;}
#page_landing_c .wrap_curd .stamp-box .stamp {position: absolute; bottom: 6%; right: 8%; opacity: 0; transform-origin: center; animation: stampPop 0.45s ease-out forwards; animation-delay: 0.3s; width: 47%;}
#page_landing_c .wrap_curd .stamp-box .stamp img { width: 100%;}

/* 설문영역 */
#page_landing_c .wrap_curd .form-inner {padding: 2rem; padding-top: 0;}
#page_landing_c .wrap_curd .question_box { padding-bottom: 2rem; position: relative;}
#page_landing_c .wrap_curd .question_box .question {font-size: 3rem; padding: 2rem 0; text-align: center; font-weight: 700;}
#page_landing_c .wrap_curd .question_box .q_select {width: 100%; display: flex; align-items: center; justify-content: space-between; gap: 2rem;}
#page_landing_c .wrap_curd .question_box .q_select label {width: 100%; margin-bottom: 2%; justify-content: center;}
#page_landing_c .wrap_curd .question_box .q_select label img {width: 100%;}

#page_landing_c .wrap_curd .select-box {padding-bottom: 3rem; border-top: 3px dashed #000; display: none;}
#page_landing_c .wrap_curd .select-box .question {font-size: 3rem; padding: 2rem 0; text-align: center; font-weight: 700;}
#page_landing_c .wrap_curd .select-box select {
    -webkit-appearance: none; /* iOS, Safari */
    -moz-appearance: none;    /* Firefox */
    appearance: none;
    width: 100%;
    margin: 0 auto;
    text-align: center; text-align-last: center; font-size: 2rem; font-weight: 700;  padding: 1rem 0; border: 1px solid #c3c3c3; border-radius: 1rem; height: auto; background: url("//static.savemkt.com/event/v_${eventSeq}/arrow.png") no-repeat center right 2rem; background-size: 2rem 1.5rem; background-color: #e8e8e8; outline: none; margin-left: 0;}
#page_landing_c .wrap_curd .select-box select option {font-size: 2rem; font-weight: 500; text-align: center;}

/* 설문 팝업 */
#page_landing_c .wrap_curd .question-popup {background: #fff; border-radius: 1rem; padding: 3rem 2rem 2rem; position: absolute; z-index: 999; top: 0%; left: 50%; transform: translateX(-50%); width: 93%; display: none;}
#page_landing_c .wrap_curd .question-popup .popup-text {font-size: 4rem; line-height: 0.5; font-weight: 700; text-align: center; font-family: 'Gmarket Sans';}
#page_landing_c .wrap_curd .question-popup .button-box { display: flex ; align-items: center; justify-content: center; gap: 2rem; margin: 1.5rem 0 0; }
#page_landing_c .wrap_curd .question-popup .button-box > div {background: #000; color: #fff; font-size: 2rem; text-align: center; border-radius: 1rem; width: 15rem; height: 7rem; cursor: pointer;}
#page_landing_c .wrap_curd .question-popup .button-box .check {font-size: 4rem;}
#page_landing_c .wrap_curd .question-popup .button-box .close {}

/* db영역 */
#page_landing_c .wrap_curd .user-box {padding: 4rem 0 0; border-top: 3px dashed #000; display: none; }
#page_landing_c .wrap_curd .user-box .user-info {position: relative; margin-bottom: 1rem;}
#page_landing_c .wrap_curd .user-box .user-info img {width: 100%;}
#page_landing_c .wrap_curd .user-box .user-info input {position: absolute; top: 50%; transform: translateY(-50%); left: 23%; font-size: 2rem; padding: 2rem; padding-left: 0; background: transparent; border: none; width: 70%;}

.wrap_form .submit {width: 100%; margin: 1rem auto; padding: 0; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}
.wrap_form .submit input[type="image"]{width: 100%; height: 100%;}

#page_landing_c .wrap_curd .description {text-align: center; padding: 1rem 0;}

.wrap_form .agBox{width: 100%;}
form .description p{margin: 0;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; top: 0; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}
.btn-agreement {text-align: center; cursor: pointer;}

@keyframes pulsating {
    50% { transform: scale(0.95); }
}

@keyframes stampPop {
    0% {
        opacity: 0;
        transform: scale(2.2) rotate(-10deg);
        filter: blur(2px);
    }
    40% {
        opacity: 1;
        transform: scale(0.98) rotate(3deg);
        filter: blur(0);
        /* box-shadow: 0 8px 18px rgba(0,0,0,0.25); */
    }
    65% {
        transform: scale(1.04) rotate(-2deg);
    }
    85% {
        transform: scale(0.98) rotate(1deg);
    }
    100% {
        opacity: 1;
        transform: scale(1) rotate(0deg);
        /* box-shadow: 0 4px 10px rgba(0,0,0,0.18); */
    }
}

@media screen and (max-width: 820px){
    #page_landing_c .wrap_curd .question-popup .popup-text,
    .pointColor {font-size: 3rem !important;}
}
@media screen and (max-width: 768px){
}
@media screen and (max-width: 640px){
    #page_landing_c .wrap_curd .question_box .question,
    #page_landing_c .wrap_curd .select-box .question {font-size: 3rem;}

    #page_landing_c .wrap_curd .question-popup .popup-text,
    .pointColor {font-size: 2rem !important;}
    #page_landing_c .wrap_curd .question-popup .button-box > div {font-size: 1.5rem; width: 10rem; height: 5rem;}
    #page_landing_c .wrap_curd .question-popup .button-box .check {font-size: 3rem;}
}
@media screen and (max-width: 480px){
    #page_landing_c .wrap_curd .question_box .question,
    #page_landing_c .wrap_curd .select-box .question {font-size: 2.4rem;}
    #page_landing_c .wrap_curd .select-box select {font-size: 1.4rem; background-size: 1.5rem 1rem;}
    #page_landing_c .wrap_curd .select-box select option {font-size: 1.4rem;}
    #page_landing_c .wrap_curd .user-box .user-info input {font-size: 1rem;}
    #page_landing_c .wrap_curd .question_box .q_select {gap: 1rem;}

    #page_landing_c .wrap_curd .question-popup .popup-text,
    .pointColor {font-size: 1.5rem !important;}
    #page_landing_c .wrap_curd .question-popup .button-box > div {font-size: 1rem; width: 8rem; height: 3rem;}
    #page_landing_c .wrap_curd .question-popup .button-box .check {font-size: 2rem;}
}
@media screen and (max-width: 395px){
    #page_landing_c .wrap_curd .question_box .question,
    #page_landing_c .wrap_curd .select-box .question {font-size: 1.7rem; padding: 1rem 0;}
    #page_landing_c .wrap_curd .select-box {padding-bottom: 2rem;}
    #page_landing_c .wrap_curd .select-box select {font-size: 1rem; background-size: 1rem 0.7rem;}
    #page_landing_c .wrap_curd .select-box select option {font-size: 1rem;}
    #page_landing_c .wrap_curd .user-box {padding: 2rem 0 0;}
    #page_landing_c .wrap_checkbox * {font-size: 10px;}
}
@media screen and (max-width: 375px){
    #page_landing_c .wrap_curd .question-popup .popup-text, .pointColor {font-size: 1.2em !important;}
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css" type="text/css"/>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
<main>
    <div class="wrap_form">
        <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
            <div class="img-area stamp-box">
                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
                <span class="stamp"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.png"></span>
            </div>
            <div class="form-inner">
                <div class="question_box">
                    <div class="question">수험생 이신가요?</div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="예" onclick="slide()"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" value="아니오" onclick="popup()"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_02.png"></label>
                    </div>
                    <div class="question-popup">
                        <p class="popup-text">본 이벤트는<br/><span class="pointColor">수험생</span>만 신청 가능합니다.</p>
                        <div class="button-box">
                            <div class="check" onclick="reset()">확인</div>
                            <div class="close" onclick="windowClose()">해당없을<br/>(나가기)</div>
                        </div>
                    </div>
                </div>
                <div class="select-box">
                    <div class="question">추가 이벤트 혜택</div>
                    <select name="tadd2">
                        <option value="" disabled>추가 이벤트 혜택을 선택해 주세요</option>
                        <option value="수술비 의료법상 최대할인">수술비 의료법상 최대할인</option>
                        <option value="검사비 무료(아벨리노 검사 포함)">검사비 무료(아벨리노 검사 포함)</option>
                        <option value="선글라스, 보조배터리 제공">선글라스, 보조배터리 제공</option>
                    </select>
                </div>

                <div class="user-box">
                    <div class="user-info">
                        <img src="//static.savemkt.com/event/v_${eventSeq}/name.png">
                        <input type="text" name="name" id="name" class="inp" required placeholder=""  autocomplete="off" >
                    </div>
                    <div class="user-info">
                        <img src="//static.savemkt.com/event/v_${eventSeq}/age.png">
                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="">
                    </div>
                    <div class="user-info">
                        <img src="//static.savemkt.com/event/v_${eventSeq}/phone.png">
                        <input type="tel" placeholder="" id="phone" name="phone" maxlength="11" value="010">
                    </div>
                    <div class="wrap_checkbox">
                        <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
                    </div>                        
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png"></div>
                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span id="target">대상 :  ${resVo.target}</span>
                    </div>
                </div>

            </div>

            <div id="modal2" class="modal modal2" style="display: none;">
                <div class="modal-content">
                    <span class="close" id="close">×</span>
                    <p>
                        개인정보처리방침<br>
                        자사 제휴의 요청 개인정보 수집 및 이용 동의<br>
                        <br>
                        [개인정보 수집 및 이용 동의]<br><br />
                        - 수집 · 이용 주체 : 이벤트 신청<br />
                        - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br />
                        - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br />
                        - 보유 및 이용 기간 : 관련 법령에서 정한 보존 기간<br />
                        <br>
                        * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다<br>
                        * 고객 동의 철회 시 지체없이 파기합니다.<br>
                        <br>
                        [개인정보 처리위탁 동의]<br><br />
                        - 수탁자 : 자사 제휴의 요청<br />
                        - 위탁 업무 내용<br />
                        └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                        └ 고객정보 서버 운영 및 관리<br />
                        └ 서비스 신청 내역 관리를 위한 개인정보 전송<br />
                        └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br />
                        - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                    </p>
                </div>
            </div>

            <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
            <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
            <input type="hidden" id="site" 			name="site" value="${site}"/>
            <input type="hidden" id="media" 		name="site" value="${media}"/>
            <input type="hidden" id="interlock" 	name="interlock" value="${resVo.interlock}"/>
            <input type="hidden" id="checkAgeMin" 	name="checkAgeMin" value="${resVo.checkAgeMin}"/>
            <input type="hidden" id="checkAgeMax" 	name="checkAgeMax" value="${resVo.checkAgeMax}"/>
            <input type="hidden" id="checkGender" 	name="checkGender" value="${resVo.checkGender}"/>
            <input type="hidden" id="add1" 			name="add1" value=""/>
            <input type="hidden" id="add2" 			name="add2" value=""/>
            <input type="hidden" id="add3" 			name="add3" value=""/>
            <input type="hidden" id="add4" 			name="add4" value=""/>
            <input type="hidden" id="add5" 			name="add5" value=""/>
            <input type="hidden" id="add6" 			name="add6" value=""/>

            <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
            <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
            <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
        </form>
    </div>

    <div class="container">
        <!-- <div class="img-area notice-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.png"></div> -->
        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
    </div>

    <div class="overlay"></div>
    <div id="modal2" class="modal modal2" style="display: none;">
        <div class="modal-content">
            <span class="close" id="close">×</span>
            <p></p>
        </div>
    </div>
</main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
$(document).ready(function(){
    initDate();/* 기간항목 start */
    blockSourceView();//드래그, 우클릭 방지
});

//설문 클릭시 이미지 on/off
$('input[name*="tadd"]').on('click', function(){
    $('label', $(this).parents('.q_select')).each(function(i,t) {
        $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
    });
    $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
});

// 팝업
function popup (){
    $('.overlay').fadeIn();
    $('.question-popup').fadeIn();
}

// reset 버튼 이벤트
function reset () {
    $('.overlay').fadeOut();
    $('.question-popup').fadeOut();
}

// 나가기 버튼 이벤트
function windowClose() {
    window.close();
    self.close();
    window.opener = window.location.href;
    window.open('about:blank', '_self').close();
}

// 스크롤 이동
function scrollToBottom() {
    $("html, body").delay(500).animate({ scrollTop: $(document).height() }, 1000, 'linear');
}

// 선택영역 슬라이드
function slide() {
    if (!$('.select-box').is(':visible')) {
        $('.select-box').stop(true, true).slideDown(300);
        scrollToBottom();
    }
}

$('.select-box select').on('change', function () {
    const val = $(this).val();
    if (val && val !== '') {
        // 이미 열려있으면 또 애니메이션 겹치지 않도록 처리
        if (!$('.user-box').is(':visible')) {
            $('.user-box').stop(true, true).slideDown(300);
            scrollToBottom();
        }
    } else {
        // "선택해 주세요"로 다시 바꾸면 숨기고 싶으면 아래 주석 해제
        // $('.user-box').slideUp(300);
    }
});

// 개인정보 처리방침 관련 이벤트
var modal2 = document.getElementById("modal2");
var agree = document.querySelector(".agBox .btn-agreement");
var close2 = document.getElementById("close");

agree.onclick = function () { modal2.style.display = "block"; }
close2.onclick = function () { modal2.style.display = "none"; }
document.addEventListener('DOMContentLoaded', function() {
    const phoneInput = document.getElementById('phone');

    // 페이지 로드 시 기본값 설정
    phoneInput.value = '010';

    // 입력값이 사라지면 다시 '010' 넣기
    phoneInput.addEventListener('input', function() {
        if (!phoneInput.value.startsWith('010')) {
            phoneInput.value = '010';
        }
    });
});

//submit
function fnForm(formId){
    /* form 자동 처리 방지 */
    event.preventDefault();
    /* form id로 proc */
    let procForm = document.getElementById(formId);
    
    // 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
    let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
    if (!selectedRadio1) {
        alert("설문을 선택해주세요.");
        return;
    } else {
        procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
    }

    let selectedRadio2 = procForm.querySelector('select[name="tadd2"]');
    if (!selectedRadio2) {
        alert("설문을 선택해주세요.");
        return;
    } else {
        procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
    }

    /*
    let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
    procForm.querySelector("input[name='add2']").value = selectedRadio2;
    
    let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
    procForm.querySelector("input[name='add3']").value = selectedRadio3;
    */
    
    // 필수값 체크 항목
    var required = {
        'name': '이름'
        ,'age': '나이'
        ,'phone': '전화번호'
        ,'add1': '설문1'
        ,'add2': '설문2'
        // ,'add2': '희망지점'
        // ,'add3': '설문3'
        ,'agBox': '개인정보'
    };
    
    validateForm(procForm, required);
}
</script>