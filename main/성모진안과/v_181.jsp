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
* {font-family: 'GmarketSans'}
.page {background-color: #ebebeb;}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff;}
.form, .form .formContents{background-color:#ffffff;}
.page > .img-area:nth-child(1) {margin-bottom: 3%;}

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

.page .paging{padding: 0% 16.94%; margin: 0 auto; display: flex; justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button {position: relative; width: 100%; height: 149px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {width: 78.01% !important; height: 100%; margin: 5% auto 0; padding-left: 5%; object-fit: cover; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;}
.page .paging button a {display:block;}

.form + .description {display: flex; align-items: center; justify-content: center; padding: 2.15% 0 1.75%; background: url("//static.savemkt.com/event/v_${eventSeq}/bottom.jpg") no-repeat top center / cover;}
.form + .description > * {font-family: 'GmarketSans'; font-weight: 500; font-size: 125%;}
.form + .description #target {margin-left: 2%;}

#page-1 .poster_01 > div.img-area:nth-child(2) {margin-top: -29%;}
#page-1 .poster_01 > div.img-area:nth-child(3) {position: relative;}
#page-1 .poster_02 {position: absolute; left: 50%; bottom: 21%; width: 100%; transform: translateX(-50%);}

#page-2 .poster_03 {width: 100%; padding: 7.63% 14.25% 25%; background: url('//static.savemkt.com/event/v_${eventSeq}/content_bg.png') no-repeat top center / 100% 100%;}
#page-2 .poster_03 .img-area {margin-bottom: 3%;}
#page-3 .poster_05 {width: 100%; padding: 7.63% 14.25% 25%; background: url('//static.savemkt.com/event/v_${eventSeq}/content_bg.png') no-repeat top center / 100% 100%;}
#page-3 .poster_05 .img-area {margin-bottom: 3%;}
#page-4 .poster_09 {width: 100%; padding: 7.63% 14.25% 25%; background: url('//static.savemkt.com/event/v_${eventSeq}/content_bg.png') no-repeat top center / 100% 100%;}
#page-4 .poster_09 .img-area {margin-bottom: 3%;}

.form-box {margin-top: 10%;}
#wrap .formContents {position: static;}
.form .formContents .description {width: 100%;margin:0 auto;text-align:center;box-sizing:border-box; font-family: 'GmarketSans'; font-weight: 300;}
.form .formContents .description * {font-family: 'GmarketSans'; font-weight: 300;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding-bottom:2%;}
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;}
.form .question_box .q_select label{width:100%; padding: 4% 0 2.5%; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 200%; font-weight: 500; font-family: 'GmarketSans';}
.form .question_box .q_select label.on{background: #aaa;}
.form .question_box .q_select label:not(:last-child){margin-bottom: 5%;}
.form .question_box .q_select label img{width:95%;}

.form .next_btn_inQuestion {width: 100%; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {}
.form .table_box{ padding:0; border: 2px solid #000 ; border-radius:27px; margin-bottom: 18px; }
.form .table_box input {background: #ededed; border-radius: 0.8rem; font-size: 2.8rem; border: none; background: transparent; width: 100%; padding: 1.5rem; text-align: center; font-family: 'GmarketSans'; font-weight: 500;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); text-align: center; font-family: 'GmarketSans'; font-weight: 500;}

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

.form .submit {display: flex; align-items: center; justify-content: flex-end; width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer; position: relative; width: 100%; height: 149px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%;  margin: 3% auto;  padding: 0;}
.form .submit input[type="image"] {
    width: 78.01% !important; height: 100%; margin: 5% auto 0; padding-left: 5%; object-fit: cover; animation: pulsating 0.8s linear infinite;
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
    top: 150%;
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
    color: #000;
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
    background-color: #0a2f85;
    color: #fff;
    width: 195px;
    height: 80px;
    padding-top: 1%;
    font-size: 125%;
    line-height: 1;
    font-weight: 400;
    border-radius: 1.5rem;
    font-family: 'GmarketSans';
}

[class^="popup-confirm2"] strong {
    color: #0a2f85;
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
    #page_landing_c .form .table_box input {padding: 1rem; padding-top: 1.15rem; font-size: 1rem; text-align: center;}
    .count_box {top: 36%; left: 56%;}
    .count_box, .count {font-size: 2.2rem;}
    .page .paging button {height: 46px;}
    .form .submit {height: 46px;}
    .agBox, .btn-agreement {font-size: 1rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}
}
@media screen and (max-width: 500px){
    .form + .description > * {font-size: 60%;}

    .form .submit input[type="image"] {height: unset; margin: 10% 0 0;}

    #page_landing_c .wrap_checkbox * {justify-content: center; font-size: 12px !important;}
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
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 
        
                    <div class="formContents"> 
                        <!-- <div class="clock-work"></div> -->
                        <section class="page" id="page-1">
                            <div class="poster_01">
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.png"></div>
                                <div class="img-area">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.png">
                                    <p class="paging poster_02">
                                        <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                                    </p>
                                </div>
                            </div>
                        </section>
            
                        <section class="page" id="page-2">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                            <div class="poster_03">
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                                <div class="img-area poster_04"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                                <div class="question_box">
                                    <div class="q_select">
                                        <label><input type="radio" name="tadd1" value="예">예</label>
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" name="tadd1" value="아니오">아니오</label>
                                    </div>
                                </div>
                                <div class="next_btn_inQuestion"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_next.png" onclick="pageSelFuc(4,$(this))"></div>
                            </div>
                        </section>
            
                        <section class="page" id="page-3">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                            <div class="poster_05">
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                                <div class="img-area poster_06"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png"></div>
                                <div class="question_box">
                                    <div class="q_select">
                                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" name="tadd2" value="예">예</label>
                                        <label><input type="radio" name="tadd2" value="아니오">아니오</label>
                                    </div>
                                </div>
                                <div class="next_btn_inQuestion"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_next.png" onclick="pageSelFuc(4,$(this))"></div>
                            </div>
                        </section>
            
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
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                            <div class="img-area poster_09">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/gage_03.png">
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
                                    </div>
                                    <div class="wrap_checkbox">
                                    <div>
                                        <label><input type="checkbox" name="agBox" id="privacyCheckbox" value="y" name="terms">개인정보이용동의</label>
                                        <label id="agree" class="agree">[자세히보기]</label>
                                    </div>
                                    </div>
                                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt2.png" /></div>
                                    <div class="description">
                                        <div class="description-info">
                                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                        
                        </section>

                        <div class="overlay"></div>
                        <div class="popup-confirm">
                            <p>
                                <strong>혜택 제공 대상이 아닙니다.</strong>
                            </p>
                            <div class="btn-box">
                                <button type="button" class="btn-confirm">확인</button>
                                <!-- <button type="button" class="btn-out">해당없음<br />(나가기)</button> -->
                            </div>
                        </div>

                        <div class="popup-confirm2">
                            <p>
                                <strong>서울/경기도</strong><br />
                                거주자 한정 이벤트입니다
                            </p>
                            <div class="btn-box">
                                <button type="button" class="btn-confirm">확인</button>
                                <!-- <button type="button" class="btn-out">해당없음<br />(나가기)</button> -->
                            </div>
                        </div>

                        <!-- 개인정보처리방침 전문 -->
                        <div id="modal2" class="modal modal2" style="display: none;">
                            <div class="modal-content">
                                <span class="close" id="close">×</span>
                                <p></p>
                            </div>
                        </div>
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

            <div class="description">
                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                <span id="target">대상 : ${resVo.target}</span>
            </div>
            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
		        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
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
        jineyeAgreement();

        $('.overlay').hide();
        $('.popup-confirm').hide();
        $('.popup-confirm2').hide();
	});

    $('input[name="tadd1"]').on('change', function () {
        if ($(this).val() === "예") {
            $('.overlay, .popup-confirm').show();
        }
    });

    $('input[name="tadd2"]').on('change', function () {
        if ($(this).val() === "아니오") {
            $('.overlay, .popup-confirm2').show();
        }
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function () {
        $('.overlay, .popup-confirm').hide();

        // ✅ 선택 초기화
        $('input[name="tadd1"]').prop('checked', false);
        $('.q_select label').removeClass('on');
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function () {
        $('.overlay, .popup-confirm2').hide();

        // ✅ 선택 초기화
        $('input[name="tadd2"]').prop('checked', false);
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
    var agree = document.querySelector(".agree");
    var close2 = document.getElementById("close");
    agree.onclick = function () { modal2.style.display = "block"; }
    close2.onclick = function () { modal2.style.display = "none"; }

    let isAnimating = false; // 애니메이션 상태 플래그
    // 첫번째 페이지
    function show1pg(){    
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
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

        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
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
        animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.1, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_05', {x: +200, opacity: 0, duration: 0});
        animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    }

    // 마지막 페이지
    function show4pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
            isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation04 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation04.to('#page-3 .poster_05', { x: -100, opacity: 0, delay: 0.1, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .question_box .q_select > label', {x: -100, opacity: 0});
        animation04.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation04.to('#page-3', { display: 'none' });
        animation04.to('#page-4', { display: 'block', duration: 0.1 });
        animation04.from('#page-4 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .description', {x: +200, opacity: 0, duration: 0.2});
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

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
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
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>