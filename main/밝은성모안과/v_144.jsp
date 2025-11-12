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

/* 상단 스탬프영역 */
#page_landing_c .wrap_curd .stamp-box {position: relative;}
#page_landing_c .wrap_curd .stamp-box > img {width: 100%;}
#page_landing_c .wrap_curd .stamp-box .stamp {position: absolute; bottom: 6%; right: 8%; opacity: 0; transform-origin: center; animation: stampPop 0.45s ease-out forwards; animation-delay: 0.3s; width: 47%;}
#page_landing_c .wrap_curd .stamp-box .stamp img { width: 100%;}

/* 설문영역 */
#page_landing_c .wrap_curd .form-inner {padding: 2rem; padding-top: 0;}
#page_landing_c .wrap_curd .question_box { padding-bottom: 2rem; position: relative;}
#page_landing_c .wrap_curd .question_box .question {font-size: 3rem; padding: 2rem 0; text-align: center; font-weight: 700;}
#page_landing_c .wrap_curd .question_box .q_select {width: 100%;  margin-bottom: 2%;  display: flex; align-items: center; justify-content: space-between; gap: 2rem;}
#page_landing_c .wrap_curd .question_box .q_select label {width: 100%; justify-content: center; background-color: #e8e8e8; padding: 1.1rem 1rem; border: 2px solid #c3c3c3; font-size: 215%; border-radius: 15px; font-weight: 500;}
#page_landing_c .wrap_curd .question_box .q_select label.checked {background-color: #000; border-color: #000; color: #fffc00;}

#page_landing_c .wrap_curd .select-box {padding-bottom: 3rem; border-top: 3px dashed #000; display: none;}
#page_landing_c .wrap_curd .select-box .question {font-size: 3rem; padding: 2rem 0; text-align: center; font-weight: 700;}
#page_landing_c .wrap_curd .select-box .q_select {}
#page_landing_c .wrap_curd .select-box .q_select .question-txt {text-align: center; font-size: 2rem;  border: 2px solid #c3c3c3; border-radius: 1rem; padding: 1.5rem 0; background: url("//static.savemkt.com/event/v_${eventSeq}/arrow.png") no-repeat center right 2rem; background-size: 2rem 1.5rem; background-color: #e8e8e8; cursor: pointer; letter-spacing: -1px; font-weight: 700;}
#page_landing_c .wrap_curd .select-box .q_select .select-inner { display: flex; flex-direction: column; align-items: center; background: #e8e8e8; border: 2px solid #c3c3c3; border-radius: 1rem; margin-top: 0.7rem; display: none; }
#page_landing_c .wrap_curd .select-box .q_select label { padding: 1rem 0; width: 100%; }
#page_landing_c .wrap_curd .select-box .q_select label:nth-child(1) {border-radius: 1rem 1rem 0 0;}
#page_landing_c .wrap_curd .select-box .q_select label:nth-child(3) {border-radius: 0 0 1rem 1rem;}
#page_landing_c .wrap_curd .select-box .q_select label:hover {background: #000;}
#page_landing_c .wrap_curd .select-box .q_select label input {}
#page_landing_c .wrap_curd .select-box .q_select label span { font-size: 2rem; width: 100%; text-align: center; font-weight: 700; }
#page_landing_c .wrap_curd .select-box .q_select label:hover span {color: #ffff00;}

/* 설문 팝업 */
/* #page_landing_c .wrap_curd .popup-question {position: absolute; z-index: 999; top: 0%; left: 50%; transform: translateX(-50%); width: 93%; display: none;}
#page_landing_c .wrap_curd .popup-question .button-box { display: flex ; align-items: center; justify-content: center; width: 60%; gap: 2rem; position: absolute; bottom: 10%; left: 50%; transform: translateX(-50%);}
#page_landing_c .wrap_curd .popup-question .button-box > div {width: calc(100% / 2); cursor: pointer;}
#page_landing_c .wrap_curd .popup-question .button-box > div img {width: 100%;}
#page_landing_c .wrap_curd .popup-question .button-box .check {}
#page_landing_c .wrap_curd .popup-question .button-box .close {} */

/* db영역 */
#page_landing_c .wrap_curd .user-box {padding: 4rem 0 0; border-top: 3px dashed #000; display: none; }
#page_landing_c .wrap_curd .user-box .user-info {position: relative; margin-bottom: 1rem;}
#page_landing_c .wrap_curd .user-box .user-info img {width: 100%;}
#page_landing_c .wrap_curd .user-box .user-info input {position: absolute; top: 50%; transform: translateY(-50%); left: 23%; font-size: 2rem; padding: 2rem; padding-left: 0; background: transparent; border: none; width: 70%;}

.wrap_form .submit {width: 100%; margin: 1rem auto; padding: 0; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite; text-align: center;}
.wrap_form .submit input[type="image"]{width: 100%; height: 100%; cursor: pointer;}

#page_landing_c .wrap_curd .description {text-align: center; padding: 1rem 0;}

.wrap_form .agBox{width: 100%;}

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

.popup-form .btn-box    {
    display: flex;
    align-items: center;
    gap: 1rem;
    justify-content: space-between;
    position: absolute;
    width: 75%;
    /* height: 100%; */
    bottom: 3rem;
    left: 50%;
    transform: translateX(-50%);
}
.popup-form .btn-box button {
    width: 50%;
}

.timer-box {position: relative;}
.timer-box #timer {position: absolute;top: 0;color: #fff;right: 0;font-size: 3.7rem;font-weight: 700;font-family: 'Gmarket Sans';letter-spacing: 3px;width: 26.25%;height: 100%;display: flex; align-items: center; justify-content: center;}

.font-red {
    color: #ff0000;
}

[class^="popup-"] {
    z-index: 999;
    position: absolute;
    bottom: -50%;
    left: 50%;
    transform: translate(-50%, 0%);
    width: 600px;
    height: max-content;
    margin: 0;
    padding: 40px 0 30px;
    background-color: #fff;
    border-radius: 30px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    opacity: 1;
    visibility: visible;
}
[class^="popup-question"] {
    bottom: 10%;
}
[class^="popup-"] p,
[class^="popup-"] span {
    text-align: center;
    font-size: 250%;
    font-weight: 900;
}
[class^="popup-form"] p {
    padding-bottom: 15%;
}
[class^="popup-question"] span,
[class^="popup-form"] span {
    font-size: 100%;
}
[class^="popup-"] strong {
    color: #ff0000;
    font-weight: 900;
}
[class^="popup-"] .btn-box {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    margin-top: 5%;
}
[class^="popup-form"] .btn-box {
    margin-top: 0;
}
[class^="popup-"] .btn-box button {
    background-color: #000;
    color: #fff;
    width: 150px;
    height: 50px;
    font-size: 125%;
    font-weight: 700;
    border-radius: 0.5rem;
}
[class^="popup-form"] .btn-box button {
    background-color: #fff;
}
.popup-valid .btn-box button {
    width: 65%;
    margin: 0 auto;
    font-size: 175%;
    font-weight: 500;
} 


/* submit 애니메이션 */
@keyframes pulsating {
    50% { transform: scale(0.95); }
}

/* 스탬프 애니메이션 */
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
}
@media screen and (max-width: 768px){
    [class^="popup-"] {width: 90%;}
    [class^="popup-"] p, [class^="popup-"] span {font-size: 150%;}
    [class^="popup-question"] span, [class^="popup-form"] span {font-size: 100%;}
    [class^="popup-question"] {bottom: 50%;}
    [class^="popup-form"],
    [class^="popup-valid"] {bottom: 0;}
    [class^="popup-form"] p {padding-bottom: 22%;}
    [class^="popup-"] .btn-box {width: 70%; margin: 5% auto 0;}
    #page_landing_c .wrap_curd .select-box .q_select .question-txt {font-size: 1.5rem; padding: 0.5rem; background-position: center right 1.15rem; background-size: 1.5rem 1rem;}
    #page_landing_c .wrap_curd .question_box .q_select label {font-size: 1.5rem; padding: 0.5rem;}
    #page_landing_c .wrap_curd .select-box .q_select label span {font-size: 1.5rem;}
    .wrap_form .submit {text-align: center;}
    :is(#page_landing_a, #page_landing_c) .wrap_curd .btn_submit {margin-bottom: 3%;}
    #page_landing_c .wrap_curd .question_box .q_select label img {height: 48px; width: 100%;}
    [class^="popup-"] .btn-box button {width: 120px; height: 40px;}
}
@media screen and (max-width: 640px){
    #page_landing_c .wrap_curd .question_box .question,
    #page_landing_c .wrap_curd .select-box .question {font-size: 3rem;}
}
@media screen and (max-width: 480px){
    #page_landing_c .wrap_curd .question_box .question,
    #page_landing_c .wrap_curd .select-box .question {font-size: 2.4rem;}
    #page_landing_c .wrap_curd .user-box .user-info input {font-size: 1.5rem;}

}
@media screen and (max-width: 395px){
    #page_landing_c .wrap_curd .question_box .question,
    #page_landing_c .wrap_curd .select-box .question {font-size: 1.7rem; padding: 1rem 0;}

    #page_landing_c .wrap_curd .select-box .q_select .question-txt {font-size: 1.5rem; background-size: 1.5rem 1rem; padding: 1.2rem 0;}
    #page_landing_c .wrap_curd .select-box .q_select label span {font-size: 1.5rem;}

    #page_landing_c .wrap_curd .user-box {padding: 2rem 0 0;}
    #page_landing_c .wrap_checkbox * {font-size: 10px;}
    #page_landing_c .wrap_curd .select-box {padding-bottom: 2rem;}
    #page_landing_c .wrap_curd .select-box .q_select .question-txt {font-size: 1.2rem; background-size: 1rem 0.7rem;}
    #page_landing_c .wrap_curd .select-box .q_select label span {font-size: 1.2rem;}
    #page_landing_c .wrap_curd .user-box .user-info input {font-size: 1rem;}
    #page_landing_c .wrap_curd * {font-size: 10px;}
}
@media screen and (max-width: 375px){
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
                        <label><input type="radio" name="tadd1" value="예" onclick="slide()">예</label>
                        <label><input type="radio" name="tadd1" value="아니오" onclick="popup()">아니오</label>
                    </div>
                    <!-- <div class="popup-question popup-question">
                        <img src="//static.savemkt.com/event/v_${eventSeq}/popup.png">
                        <p>본 이벤트는 <br /><span class="font-red">수험생</span>만 신청 가능합니다.</p>
                        <div class="button-box">
                            <div class="check" onclick="reset()"><img src="//static.savemkt.com/event/v_${eventSeq}/check_btn.png"></div>
                            <div class="close" onclick="windowClose()"><img src="//static.savemkt.com/event/v_${eventSeq}/close_btn.png"></div>
                        </div>
                    </div> -->
                </div>
                <div class="select-box">
                    <div class="question">추가 이벤트 혜택</div>
                    <div class="q_select">
                        <div class="question-txt">추가 이벤트 혜택을 선택해 주세요</div>
                        <div class="select-inner">
                            <label><input type="radio" name="tadd2" value="수술비 최대할인 (의료법상)"><span>수술비 최대할인 (의료법상)</span></label>
                            <label><input type="radio" name="tadd2" value="검사비 무료 (아벨리노 검사 포함)"><span>검사비 무료 (아벨리노 검사 포함)</span></label>
                            <label><input type="radio" name="tadd2" value="선글라스, 보조배터리 제공"><span>선글라스, 보조배터리 제공</span></label>
                        </div>
                    </div>
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
                    <div class="submit"><input type="image" class="btn_submit" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png"></div>
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
                    <p></p>
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
    <div class="overlay"></div>
    <div class="popup-question">
        <p>본 이벤트는 <br /><span class="font-red">수험생</span>만 신청 가능합니다.</p>
        <div class="btn-box">
            <div class="check" onclick="reset()"><img src="//static.savemkt.com/event/v_${eventSeq}/check_btn.png"></div>
            <div class="close" onclick="windowClose()"><img src="//static.savemkt.com/event/v_${eventSeq}/close_btn.png"></div>
        </div>
    </div>
    <div class="popup-valid">
        <span class="font-red">필수 항목을 모두 입력해주세요.</span>
        <div class="btn-box">
            <button type="button" class="btn-valid">확인</button>
        </div>
    </div>
    <div class="popup-form">
        <p>
            스마일라식 장학금 이벤트는 <br />
            <span class="font-red">강남점 방문고객</span>만 신청 가능합니다!
        </p>
        <div class="btn-box">
            <button type="button" class="btn-confirm"><img src="//static.savemkt.com/event/v_${eventSeq}/check_btn.png"></button>
            <button type="button" class="btn-out"><img src="//static.savemkt.com/event/v_${eventSeq}/close_btn.png"></button>
        </div>
    </div>
</main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
$(document).ready(function(){
    initDate();/* 기간항목 start */
    blockSourceView();//드래그, 우클릭 방지

    sungmoAgreement(); //개인정보처리방침
});

//설문 클릭시 이미지 on/off
// $('input[name="tadd1"]').on('click', function(){
//     $('label', $(this).parents('.q_select')).each(function(i,t) {
//         $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
//     });
//     $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
// });

// 팝업
function popup (){
    $('.overlay').fadeIn();
    $('.popup-question').fadeIn();
}

// reset 버튼 이벤트
function reset () {
    $('.overlay').fadeOut();
    $('.popup-question').fadeOut();
    $('label:nth-child(1) input[name="tadd1"]').closest('label').addClass('checked')
}

// 나가기 버튼 이벤트
function windowClose() {
    location.reload();
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

$('.select-box .q_select .question-txt').on('click',function(){
    $('.select-inner').stop(true, true).slideDown(500);
    scrollToBottom();
});

// ✅ 설문 클릭 시 이미지 on/off (선택 토글)
$('label:nth-child(1) input[name*="tadd1"]').on('click', function () {
    const $parent = $(this).closest('.q_select'); // 부모 영역 지정

    // 모든 label에서 checked 클래스 제거
    $parent.find('label').removeClass('checked');

    // 클릭한 input의 label에 checked 클래스 추가
    $(this).closest('label').addClass('checked');
});


$('input[name="tadd2"]').on('change', function() {
    // 선택된 라디오의 값 가져오기
    var selectedValue = $(this).val();
    // question-txt에 텍스트 변경
    $('.q_select .question-txt').text(selectedValue).css({ 'background': '#000', 'color': '#ff0' });

    $('.select-inner').hide();
    $('.user-box').stop(true, true).slideDown(300);
    scrollToBottom();
});

$('.popup-question .btn-box .check').on('click', function() {
    const yesRadio = $('input[name="tadd1"][value="예"]');
    const yesLabel = yesRadio.parent();

    // 라디오 체크
    yesRadio.prop('checked', true);

    // 다른 버튼들 이미지 모두 off로
    $('label', yesRadio.parents('.q_select')).each(function(i, t) {
        $('img', t).attr('src', function(index, src) {
            return src.replace('_on', '_off');
        });
    });

    // 예 버튼만 on으로 변경
    $('img', yesLabel).attr('src', function(index, src) {
        return src.replace('_off', '_on');
    });

    // 예 클릭 시 실행되는 slide() 함수 호출
    if (typeof slide === 'function') {
        slide();
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

    $('.overlay').hide();
    $('.popup-question').hide();
    $('.popup-valid').hide();
    $('.popup-form').hide();

    let isConfirm = false;

    $('.submit .btn_submit').on('click', function(e) {
        e.preventDefault();

        const tadd1 = $('input[name="tadd1"]:checked').val();
        const tadd2 = $('input[name="tadd2"]:checked').val();
        const agBox = $('input[name="agBox"]:checked').val();
        const nameVal = $('input[name="name"]').val();
        const phoneVal = $('input[name="phone"]').val();

        // ✅ 필수값 유효성 검사
        if (!tadd1 || !tadd2 || !agBox || !nameVal || !phoneVal || phoneVal.length < 11) {
            $('.overlay').show();
            $('.popup-valid').show();
            return;
        }

        // ✅ 모든 항목이 입력된 경우 → 확인 팝업 표시
        $('.overlay, .popup-form').show();
        isConfirm = false;
    });

    $('.btn-valid').on('click', function() {
        $('.overlay, .popup-valid').hide();
    });

    $('.btn-confirm').on('click', function() {
        isConfirm = true;
        $('.overlay, .popup-form').hide();

        if (isConfirm) {
            fnForm('form-1'); // ✅ 폼 전송 함수 실행
        }
    });

    $('.btn-out').on('click', function() {
        isConfirm = false;
        $('.overlay, .popup-form').hide();
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

    let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
    if (!selectedRadio2) {
        alert("설문을 선택해주세요.");
        return;
    } else {
        procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
    }

    // let selectedRadio2 = procForm.querySelector('select[name="tadd2"]');
    // if (!selectedRadio2) {
    //     alert("설문을 선택해주세요.");
    //     return;
    // } else {
    //     procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
    // }

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