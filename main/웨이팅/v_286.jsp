<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
@font-face {
    font-family: 'Pretendard';
    font-weight: 400;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 500;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 600;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 700;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 800;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.otf') format('opentype');
}
* {font-family: 'Pretendard';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff; max-width: 1080px; width: 100%;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {width: 100%; margin: 0 auto; padding: 3.398% 3.5%; background-color: #fff;}
.page#page-4 {padding-bottom: 5%;}

/* 초기화 css */
#page_landing_c main {max-width: unset;}
.form input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}
.btn_submit {background: none; background-color: transparent !important;}
input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {
    height: auto;
    padding: 0;
}
input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

/* 상단 카운트 박스 */
.count-area {position: absolute; top: 9.68%; padding: 0 7.25%;}
#page-2 .count-area {position: relative; padding: 0;}
.count-area .count-box {font-size: 175%;}
.count-area .count {position: absolute; top: 12.5%; left: 57.7%;  transform: translateX(-50%);  width: 12%; color: #fff000; text-align: center; font-weight: 800; font-family: 'Pretendard'; font-size: 135%;}
#page-2 .count-area .count {left: 58.7%;}

.gif-area {position: absolute; bottom: -11.545%; padding: 0 4.417%;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex; justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button {position: relative; width: 100%; height: 176px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb_01.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {width: 63.37% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}
.page .paging button a {display:block;}

#page-1 {position: relative;}
#page-1 .poster_01 {z-index: 2; position: relative;}
#page-1 .paging{width: 80.26%; padding: 2.705% 0 7.93%;}
#page-1 .poster_02 {position: relative;}
#page-1 .video-box {border: 8px solid #1000aa; border-left: none; border-right: none;}
#page-1 .video-box video {display: block; width: 100%; height: 100%;}

#page-2 .bg {padding: 7%; background:  url('//static.savemkt.com/event/v_${eventSeq}/bg.png') no-repeat center top / 100% 100%;}
#page-2 .paging{padding: 0 14.87% 3%;}
#page-2 .poster_04 {margin: 2.506% 0 7.517%;}

#page-2.page .paging button,
#page-3.page .paging button {background-image: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb_01.png');}
#page-2.page .paging button img,
#page-3.page .paging button img {width: 55% !important; margin: 0; margin-left: auto; margin-right: 3%;}

#page-3 .poster_06 {margin: 2.506% 0 7.517%;}

.form-box {margin-top: 7.54%;}
#wrap .formContents {position: static;}
.form .formContents .description {text-align: center; margin-top: 3%;}
.form .formContents .description * {font-size: 100%; font-family: 'Pretendard'; font-weight: 400;}
.form-box .form-box-top {padding:5% 5% 0;}
.form .question_box {padding: 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; column-gap: 11px; font-size: 150%;}
.form .question_box .q_select label {width: 100%; padding: 2.5% 0 2.1%; background: #c0c0c0; cursor: pointer; border: 2px solid #c0c0c0; border-radius: 1rem; font-size: 115%; font-weight: 700; font-family: 'Pretendard'; letter-spacing: -0.075em; line-height: 1; text-align: center;}
.form .question_box .q_select label.on {background: #fff; border: 2px solid #000;}
/* .form .question_box .q_select label:not(:last-child){margin-bottom: 2%;} */
.form .question_box .q_select label img{width:95%;}

.form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {background: url("//static.savemkt.com/event/v_${eventSeq}/event_main_03.png") no-repeat top center / 100% 100%; padding: 0%;}
.form .table_box + .table_box  {margin-top: 7.75%;}
.form .table_box .legend, .form .question_box .legend {font-size: 182%; font-weight: 800; letter-spacing: -0.075em; font-family: 'Pretendard';}
.form .table_box input {display: block; background: #c0c0c0; width: 100%; padding: 2.54% 5%; border-radius: 10px; border: none; outline: none; font-size: 145%;}
/* .form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
.form .table_box input {background: #fff; text-align: center; border-radius: 2rem; font-size: 2.8rem; border: 1px solid #092b7b; width: 100%; padding: 1.5rem 2rem; font-family: 'Pretendard'; font-weight: 500; text-align: center;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); font-family: 'Pretendard'; font-weight: 500;}

.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom input {} */

/* 개인정보 처리방침 */
.agBox {display: flex; align-items: center; justify-content: center; column-gap: 0.5rem; margin-top: 5%; font-family: 'Pretendard'; font-weight: 500; font-size: 1.4rem; line-height: 1;}
.agBox label {display: flex; align-items: center; column-gap: 0.5rem;}
.btn-agreement {flex-shrink: 0; text-align: center; display: block; color: #000; font-family: 'Pretendard'; font-weight: 500; font-size: 81%;}
.btn-agreement b {font-weight: 800; font-size: 100%; font-family: 'Pretendard';}

.sub_txt {text-align: center;}

.form .submit {display: flex; align-items: center; justify-content: center; margin: 1em auto 0; padding: 0;}
.form .submit {position: relative;     width: 100%;
    height: 152px;
    background: url("//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png") no-repeat center center / 100% 100%;
    margin: 5% auto 5%;
    padding: 0% 0;}
.form .submit input[type="image"] {
    width: 71.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;
}
.form .submit input[type="image"] {}


/* 거주자 팝업 */
.overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
}
[class^="popup-"] {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 575px;
    height: max-content;
    margin: 0;
    padding: 30px;
    font-size: 150%;
    background-color: #fff;
    border-radius: 25px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    opacity: 1;
    visibility: visible;
}
[class^="popup-"] p,
[class^="popup-"] span {
    text-align: center;
    font-size: 250%;
    font-weight: 700;
    font-family: 'Pretendard';
}
[class^="popup-"] strong {
    color: #ff0000;
    font-weight: 700;
    font-family: 'Pretendard';
}
[class^="popup-"] .btn-box {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    margin-top: 5%;
    font-size: 150%;
}
[class^="popup-"] .btn-box button {
    background-color: #0a2f85;
    color: #fff;
    width: 195px;
    height: 80px;
    padding-top: 1%;
    font-size: 125%;
    line-height: 1;
    font-weight: 400;
    border-radius: 0.5rem;
    font-family: 'Pretendard';
}

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

/* font */
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@media screen and (max-width: 786px) {
    #page-1 .paging {padding-top: 2.5%;}
    .agBox {padding-bottom: 2.5%;}
    .form .table_box {border-radius: 9px;}
    #page_landing_c .form .table_box input {padding: 1rem; font-size: 125%; border-radius: 1rem;}
    .count_box {top: 36%; left: 55%;}
    .count_box, .count {font-size: 2.2rem;}
    .page .paging button {height: 72px;}
    .form .submit {height: 72px;}
    .agBox, .btn-agreement {font-size: 1rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}


    .form .formContents .description * {font-size: 95%;}
}
@media screen and (max-width: 500px){
    /* .roulette {padding: 4% 9.5% 4.19%;} */
    .count-area .count {font-size: 85%;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}
    .form .footer_01 .description p,
    .form .footer_01 .description .ad_txt,
    .form .footer_01 .description span {font-size: 70%;}
    .form .footer_02 .description p,
    .form .footer_02 .description .ad_txt,
    .form .footer_02 .description span {font-size: 70%;}
    .form .question_box .q_select {column-gap: 6px; font-size: 95%;}
    .form .question_box .q_select label {border-radius: 0.5rem;}
    /* .form .question_box .q_select label {font-size: 1.45rem; border-radius: 1rem;} */
    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: unset;}
    .form-box .description {padding-bottom: 0%;}
    .form .video-area {border-width: 4px;}
    .form .video-area::after {bottom: 8px; right: 8px;}
    [class^="popup-"] .btn-box button {width: 115px; height: 50px;}

    .form .submit input[type="image"] {width: 71.46% !important;}

    .form .formContents .description * {font-size: 85%;}

    .sub_txt {font-size: 90%;}

    .form .table_box .legend, .form .question_box .legend {font-size: 125%;}
}
    
</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>
<body id="page_landing_c" class="loaded">
    <main>
        <div id="wrap">
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 

                    <div class="formContents"> 
                        <!-- <div class="clock-work"></div> -->
                        <section class="page" id="page-1">
                            <div class="poster_01">
                                <div class="img-area">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
                                </div>
                            </div>
                            <div class="poster_02">
                                <div class="video-box">
                                    <video id="location" playsinline au muted loop src="//static.savemkt.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                                </div>
                                <div class="agBox">
                                    <a href="javascript:void(0);" class="btn-agreement">혜택 제공을 위한 <b>개인정보처리방침</b>에 동의해 주세요</a>
                                </div>
                                <p class="paging">
                                    <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                                </p>
                            </div>
                        </section>
            
                        <section class="page" id="page-2">
                            <div class="bg">
                                <div class="img-area poster_03">
                                     <img src="//static.savemkt.com/event/v_${eventSeq}/q_1.png">
                                </div>
                                <div class="form-box poster_11">
                                    <div class="formGroup">
                                        <div class="table_box top">
                                            <span class="legend">성함</span>
                                            <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                        </div>
                                        <div class="table_box top">
                                            <span class="legend">나이</span>
                                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요.">
                                        </div>
                                        <div class="table_box bottom">
                                            <span class="legend">전화번호</span>
                                            <input type="tel" name="phone" id="phone" value="010" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                                        </div>
                                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_01.png" /></div>
                                    </div>
                                    <div class="description">
                                        <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                        <span id="target">대상자 : ${resVo.target}</span>
                                    </div>
                                    <p class="sub_txt">
                                        안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br /> 상담 외 어떠한 목적으로도 사용하지 않습니다. 
                                    </p>
                                </div>
                            </div>
                        </section>

                        <div class="overlay"></div>
                        <div class="popup-confirm">
                            <div class="img-area">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/pop_txt.png">
                            </div>
                            <div class="btn-box">
                                <button type="button" class="btn-confirm">확인</button>
                            </div>
                        </div>

                        <!-- 개인정보처리방침 전문 -->
                        <div id="modal2" class="modal modal2" style="display: none;">
                            <div class="modal-content">
                                <span class="close" id="close">×</span>
                                <p>
                                </p>
                            </div>
                        </div>
                        <!-- <div class="description">
                            <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <span id="target">대상자 : ${resVo.target}</span>
                        </div> -->
                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>	 -->
                    </div>
                    <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
                    <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
                    <input type="hidden" id="site" 			name="site" value="${site}"/>
                    <input type="hidden" id="media" 		name="media" value="${media}"/>
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
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    history.scrollRestoration = 'manual';

    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
        abellacubeAgreement();

        $('.overlay').hide();
        $('.popup-confirm').hide();
	});

    $('input[name="tadd2"]').on('change', function () {
        if ($(this).val() === "아니오") {
            $('.overlay, .popup-confirm').show();
        }
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function () {
        $('.overlay, .popup-confirm').hide();

        // ✅ 선택 초기화
        $('input[name="tadd2"]').prop('checked', false);
        $('.q_select label').removeClass('on');
    });


    function resetPage1() {
        // page-1 자체
        gsap.set('#page-1', { display: 'block', opacity: 1 });

        // 내부 요소들 원위치
        gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .agBox', {
            x: 0,
            y: 0,
            opacity: 1,
            clearProps: 'transform'
        });
    }


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

    let isAnimating = false; // 애니메이션 상태 플래그
    // 첫번째 페이지
    function show1pg(){
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .agBox', { y: +50, delay: 0.8, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();
    // 두번째 페이지
    function show2pg() {
        history.scrollRestoration = 'manual';

        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });

        const isMobile = window.matchMedia("(max-width: 768px)").matches;

        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .paging', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .paging', {x: +200, opacity: 0, delay: 0.2, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }

    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .paging', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_05', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_06', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .paging', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    }
    // 마지막 페이지
    function show4pg() {
        history.scrollRestoration = 'manual';

        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
            isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        // animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        // animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        // animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3 .poster_05', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .poster_06', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .paging', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-3', { display: 'none' });
        animation03.to('#page-4', { display: 'block', duration: 0.1 });
        animation03.from('#page-4 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .poster_08', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .description', {x: +200, opacity: 0, duration: 0.2});
    }

    //설문 클릭 시 클래스on 추가
    $('input[name*="tadd"]').bind('click', function() {
        $(this).closest('.q_select').find('label').removeClass('on');			
        $(this.parentNode).addClass('on');	
    });

    // 버튼 페이지 이동 함수 (설문)
	function pageSelFuc(num, obj) {
        if($('input[name="tadd' + num + '"]').is(':checked')) {
            $('.section0' + num).fadeOut(function() {
                $('.section0' + (num + 1)).fadeIn();
                $(document).scrollTop(0);
            });
        } else {
            alert('설문을 체크해 주세요.');
        }
	}

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

        // let tage = procForm.querySelector(`input[name="tage"]:checked`);
		// if (!tage) {
		// 	alert("연령을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='age']").value = tage.value;
		// }

		// let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		// if (!selectedRadio2) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
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
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>