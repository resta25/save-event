<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
    font-weight: 300;
    font-style: normal;
}
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: 500;
    font-style: normal;
}
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff');
    font-weight: 700;
    font-style: normal;
}
* {font-family: 'Gmarket Sans';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {width: 85%; margin: 0 auto;}
.page:not(#page-1) .img-area {margin-bottom: 3%;}

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

/* 비디오 영역 */
.form .video-area {position: relative; padding-top: 75.27%; border: 8px solid #6ebfff; border-right: 0; border-left: 0;}
.form .video-area::after {position: absolute; bottom: 12px; right: 12px; content: '*생성형 ai 영상'; color: #858585; font-size: 10px; }
.form #location {position: absolute; top: 0; left: 0; width: 100%; height: 100%; max-height: 813px; object-fit: cover;} 

/* 룰렛 영역 */
.roulette {padding: 4.92% 5% 8.8%;}
.roulette image {width: 100%;}
.count_box {width: 70%; text-align: center; font-size: 2.8rem; color: #fff; position: absolute; top: 32.5%; left: 56.5%; transform: translateX(-50%);}
.count {color: #f0ff00; font-size: 4rem; font-family: 'GmarketSans'; font-weight: 500;}

/* 시침, 초침 */
.container {position: relative;}
/* .clock{position: absolute; top: 51.5%; left: 13%; background-color: #f0ff00; transition : all 0.05s; transition-timing-function : cubic-bezier(0.1, 2.7, 0.58, 1); transform-origin : 100%;}
.hourHand{width: 1.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);}
.secondHand{left: 12.5%; width: 2.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);} */

.poster_01 > .img-area {width: 90%; margin: 0 auto 7.97%;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex;    justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button {position: relative; width: 100%; height: 186px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {width: 61.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;}
    .page .paging button a {display:block;}
    
    #page-1 .paging{padding-top:5%;}
    
    .form-box {margin-top: 10%;}
    #wrap .formContents {position: static;}
    .form .formContents .description {width:90%;margin:0 auto;text-align:center;box-sizing:border-box; font-family: 'GmarketSans'; font-weight: 300;}
    .form .formContents .description * {font-family: 'GmarketSans'; font-weight: 300;}
    .form-box .form-box-top {padding:5% 5% 0;}
    .form-box .description {padding-bottom:2%;}
    .form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
    .form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;}
    .form .question_box .q_select label{width:100%; padding: 4% 0 2.5%; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 200%; font-weight: 500; font-family: 'GmarketSans';}
    .form .question_box .q_select label.on{background: #aaa;}
    .form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
    .form .question_box .q_select label img{width:95%;}
    
    .form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
    .form .next_btn_inQuestion img {width: 100%;}
    
    /* 이름, 전화번호 boz */
    .formGroup {}
    .form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
    .form .table_box input {background: #ededed; border-radius: 0.8rem; font-size: 2.8rem; border: none; background: transparent; width: 100%; padding: 1.5rem 0 1.5rem 2rem; font-family: 'GmarketSans'; font-weight: 500;}
    .form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); text-align: left; font-family: 'GmarketSans'; font-weight: 500;}
    
    .form .table_box.top {width:95%;}
    .form .table_box.middle {width: 95%;}
    .form .table_box.bottom {width:95%;}
    .form .table_box.txt_box {width:95%; height: 130px;}
    .form .table_box.bottom input {}
    
    /* 개인정보 처리방침 */
    .agBox {display: flex; align-items: center; justify-content: center; padding-bottom: 5%; font-family: 'GmarketSans'; font-weight: 500; font-size: 1.4rem; line-height: 1;}
    .btn-agreement {flex-shrink: 0; text-align: center; font-size: 1.4rem;  display: block; color: #000; font-family: 'GmarketSans';}
    .btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'GmarketSans';}
    /* submit btn */
    /* .form .submit {width: 85%; margin: 0 auto; padding: 5% 0;}
    .form .submit input[type="image"] {width: 100%;} */
    
    .form .submit {display: flex; align-items: center; justify-content: center; margin: 1em auto 0; padding: 0;}
    .form .submit {position: relative; width: 70.155%; height: 134px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 3% auto; padding: 0% 0;}
    .form .submit input[type="image"] {
        width: 71.46% !important; margin: 0 auto; margin-left: auto; margin-right: 9%; animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
    }

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
        width: 785px;
        height: max-content;
        margin: 0;
        padding: 30px 0;
        font-size: 150%;
        background-color: #fff;
        border-radius: 10px;
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
        font-family: 'GmarketSans';
    }
    [class^="popup-"] strong {
        color: #ff0000;
        font-weight: 700;
        font-family: 'GmarketSans';
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
        background-color: #0202c5;
        color: #fff;
        width: 195px;
        height: 80px;
        padding-top: 1%;
        font-size: 125%;
        line-height: 1;
        font-weight: 400;
        border-radius: 0.5rem;
        font-family: 'GmarketSans';
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
        #page_landing_c .form .table_box input {padding: 1.5rem 0 1rem 2rem;
        font-size: 1.4rem;}
        .count_box {top: 36%; left: 56%;}
        .count_box, .count {font-size: 2.2rem;}
        .page .paging button {height: 66px;}
        .form .submit {height: 53px;}
        .agBox, .btn-agreement {font-size: 1rem;}

        [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}
    }
    @media screen and (max-width: 500px){
        .roulette {padding: 4% 9.5% 4.19%;}
        .poster_01 > .img-area {width: 67.03%; margin: 0 auto 4.15%;}
        .count_box, .count {font-size: 1.25rem;}
        .form .description p,
        .form .description .ad_txt,
        .form .description span {font-size: 80%;}
        .form .question_box .q_select label {font-size: 1.45rem;}
        #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: unset;}
        .form-box .description {padding-bottom: 4%;}
        .form .video-area {border-width: 4px;}
        .form .video-area::after {bottom: 8px; right: 8px;}
        [class^="popup-"] .btn-box button {width: 115px; height: 50px;}
        /* #page_landing_c .form .table_box input {padding: 1.5rem 0 1.5rem 2rem;} */
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
            <div class="container">
                <div class="img-area roulette">
                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png">
                    <div class="count_box"><span class="count"></span></div>
                </div>
                <!-- 시침 -->
                <div class="clock hourHand" style="transform: translate(-50%, -50%) rotate(106.5deg);"></div>
                <!-- 초침 -->
                <div class="clock secondHand" style="transform: translate(-50%, -50%) rotate(162deg);"></div>
            </div>
        
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 
        
                <div class="formContents"> 
                    <!-- <div class="clock-work"></div> -->
                    <section class="page" id="page-1">
                        <div class="poster_01">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                            <div class="video-area">
                                <video id="location" playsinline="" muted="" loop="" src="//static.savemkt.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                                <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                            </div>
                        </div>
        
                        <p class="paging poster_02">
                            <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                        </p>
                        <div class="agBox">
                            혜택 제공을 위한&nbsp;
                            <a href="javascript:void(0);" class="btn-agreement"><b>개인정보처리방침</b></a>
                            에 동의해 주세요
                        </div>
                    </section>
        
                    <section class="page" id="page-2">
                        <div class="img-area poster_03"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                        <div class="img-area poster_04"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="예">예</label>
                                <label><input type="radio" name="tadd1" value="아니오">아니오</label>
                            </div>
                        </div>
                        <div class="next_btn_inQuestion"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png" onclick="pageSelFuc(4,$(this))"></div>
                    </section>
        
                    <!-- <section class="page" id="page-3">
                        <div class="img-area poster_05"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                        <div class="img-area poster_06" style="margin-top: 5%;"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tage" value="40">40대</label>
                                <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tage" value="50">50대</label>
                                <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tage" value="60">60대</label>
                            </div>
                        </div>
                        <div class="next_btn_inQuestion"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png" onclick="pageSelFuc(2,$(this))"></div> 
                    </section> -->
        
                    <!-- <section class="page" id="page-4">
                        <div class="img-area poster_07"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_03.png"></div>
                        <div class="img-area poster_08" style="margin-top: 5%;"><img src="//static.savemkt.com/event/v_${eventSeq}/q_03.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label><input type="radio" onclick="setTimeout(show5pg, 100)" onclick="pageFuc(4,$(this))" name="add3" value="대구">대구</label>
                                <label><input type="radio" onclick="setTimeout(show5pg, 100)" onclick="pageFuc(4,$(this))" name="add3" value="경산">경산</label>
                                <label><input type="radio" onclick="setTimeout(show5pg, 100)" onclick="pageFuc(4,$(this))" name="add3" value="구미">구미</label>
                                <label><input type="radio" onclick="setTimeout(show5pg, 100)" onclick="pageFuc(4,$(this))" name="add3" value="기타">기타</label>
                            </div>
                        </div>
                        <div class="next_btn_inQuestion"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png" onclick="pageSelFuc(3,$(this))"></div> 
                    </section> -->
        
                    <section class="page" id="page-4">
                        <div class="img-area poster_09"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_03.png"></div>
                        <div class="img-area poster_10" style="margin-top: 5%;"><img src="//static.savemkt.com/event/v_${eventSeq}/q_03.png"></div>
                        <div class="form-box poster_11">
                            <div class="formGroup">
                                <div class="table_box top">
                                    <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                </div>
                                <div class="table_box middle">
                                    <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                                </div>
                                <div class="table_box bottom">
                                    <input type="tel" name="phone" id="phone" value="" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                                </div>
                                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png" /></div>
                            </div>
                            <div class="description">
                                <div class="description-info">
                                    <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                    <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                </div>
                                <span id="target">대상 : ${resVo.target}</span>
                            </div>
                        </div>
                    </section>

                    <div class="overlay"></div>
                    <div class="popup-confirm">
                        <p>
                            본 이벤트는 <br />
                            <strong>대구 거주자</strong>만 신청 가능합니다.
                        </p>
                        <div class="btn-box">
                            <button type="button" class="btn-confirm">확인</button>
                            <button type="button" class="btn-out">해당없음<br />(나가기)</button>
                        </div>
                    </div>

                    <!-- 개인정보처리방침 전문 -->
                    <div id="modal2" class="modal modal2" style="display: none;">
                        <div class="modal-content">
                            <span class="close" id="close">×</span>
                            <p></p>
                        </div>
                    </div>
                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>	
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
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
        isimdangAgreement();

        $('.overlay').hide();
        $('.popup-confirm').hide();
	});

    $('input[name="tadd1"]').on('change', function () {
        if ($(this).val() === "아니오") {
            $('.overlay, .popup-confirm').show();
        }
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function () {
        $('.overlay, .popup-confirm').hide();

        // ✅ 선택 초기화
        $('input[name="tadd1"]').prop('checked', false);
        $('.q_select label').removeClass('on');
    });

    // popup-confirm > 나가기 버튼
    $('.btn-out').on('click', function(){
        $('.overlay, .popup-confirm').hide();

        $('.page').hide();   // 다른 페이지 숨기기
        resetPage1();        // ⭐ GSAP 상태 초기화
        show1pg();           // 애니메이션 다시 실행

        $('input[name="tadd1"]').prop('checked', false);
        $('.q_select label').removeClass('on');
        $(document).scrollTop(0);
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
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });

        const isMobile = window.matchMedia("(max-width: 768px)").matches;

        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        // animation02.to('.count_box', { top: '38%', duration: 0 }, "<");
        animation02.set('.count_box', {
            top: isMobile ? '35%' : '38%'
        }, "<");
        animation02.to('.roulette', { paddingBottom: '5.19%', duration: 0 }, "<");
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }

    // 세번째 페이지
    // function show3pg() {
    //     if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
    //     isAnimating = true; // 애니메이션 시작 상태로 변경

    //     const animation03 = gsap.timeline({
    //         onComplete: () => {
    //             isAnimating = false; // 애니메이션 끝나면 플래그 해제
    //         }
    //     });
    //     animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
    //     animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
    //     animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
    //     animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
    //     animation03.to('#page-2', { display: 'none' });
    //     animation03.to('#page-3', { display: 'block', duration: 0.1 });
    //     animation03.from('#page-3 .poster_05', {x: +200, opacity: 0, duration: 0.});
    //     animation03.from('#page-3 .poster_06', {x: +200, opacity: 0, duration: 0.});
    //     animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    //     animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    // }
    // 마지막 페이지
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
        animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        // animation03.to('#page-3 .poster_05', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-3 .poster_06', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-3 .question_box .q_select > label', {x: -100, opacity: 0});
        // animation03.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        // animation03.to('#page-3', { display: 'none' });
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

    // 신청 인원 카운트다운 기능
    let remainingCount = 45; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // 카운트다운 시작
    const countdownInterval = setInterval(() => {
        if (remainingCount > 1) {
            remainingCount--; // 1명 차감
            $countElement.text(remainingCount + '명'); // 새로운 값 표시
        } else {
            clearInterval(countdownInterval); // 0명이 되면 카운트다운 중지
            $countElement.text(1 + '명'); // 0으로 표시
        }
    }, 5000); // 5000ms = 5초 간격

    // count
    $(document).ready(function() {
        let count = 45; // 초기 인원 수
        const intervalTime = 3000; // 3초마다 업데이트

        // 인원 수 업데이트 함수
        function updateCount() {
            let countText = count + '명'
            $('.count').text(countText); // 인원 수를 화면에 표시

            count--; // 인원 수 감소
            if (count < 0) {
                count = 45; // 0이 되면 다시 45로 초기화
            }
        }

        // 3초마다 updateCount 함수 실행
        setInterval(updateCount, intervalTime);

        // 페이지 로드 시 초기 인원 표시
        updateCount();
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
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

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
			, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>