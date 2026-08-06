<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>

/* font */
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
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
* {font-family: 'Pretendard';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {width: 85%; margin: 0 auto;}
.page:not(#page-1) .img-area {margin-bottom: 3%;}

/* 초기화 css */
#page_landing_c main {max-width: unset;}
.form input[type="radio"] { border: 0; clip: rect(0 0 0 0); height: 1px; margin: -1px; overflow: hidden; padding: 0; position: absolute; width: 1px; }
.btn_submit {background: none; background-color: transparent !important;}
input:not( [type="checkbox"], [type="radio"], [type="range"] ), select { height: auto; padding: 0; }
input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

/* 타이머 영역 */
#page-1 .poster_01 > .top-img {position: sticky; top: 0; z-index: 9;}
#page-1 .count-group {background: #000; color: #fff; width: 80%; position: absolute; top: 5%; left: 50%; transform: translateX(-50%); width: 80%; display: flex; align-items: center; justify-content: center; border-radius: 5rem; margin: 0; padding: 0.5rem 0;}
.count-group {background: #000; color: #fff; width: 100%; display: flex; align-items: center; justify-content: center; border-radius: 5rem; padding-bottom: 0; margin: 4rem 0; padding: 0.7rem 0;}
.count-group > img {width: 5% !important; margin-right: 2rem;}
.count_box {color: #fff; font-size: 4.3rem; letter-spacing: -0.1rem;}
.count {color: #f0ff00; font-size: 4.3rem; font-family: 'Pretendard';; font-weight: 500;}

.poster_01 > .full-area {width: 100%; margin: 0;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex;    justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button {position: relative; width: 100%; height: 186px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;} .page .paging button a {display:block;}
    
#page-1 .paging{padding-top:5%;}

/* .form-box {margin-top: 5%;} */
.sub-txt {margin-bottom: 2%; font-size: 200%; text-align: center; word-break: keep-all; font-weight: 600;}
#wrap .formContents {position: static;}
.form .formContents .description {width:90%;margin:0 auto;text-align:center;box-sizing:border-box; font-family: 'Pretendard';; font-weight: 300;}
.form .formContents .description * {font-family: 'Pretendard';; font-weight: 300;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding:4% 0;}
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;}
.form .question_box .q_select label{width:100%; padding: 2% 0 ; cursor:pointer; background: #ededed; border-radius: 1.93rem; font-size: 200%; font-weight: 600; font-family: 'Pretendard';;}
.form .question_box .q_select label.on{background: #aaa;}
.form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
.form .question_box .q_select label img{width:95%;}

.form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 개별 */
#wrap #page-2 {height: 87vh;}
#page-2 .form .question_box {margin-bottom: 55%;}

/* 이름, 전화번호 boz */
.formGroup {}
.form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
.form .table_box input, .form .table_box select {background: #ededed; border-radius: 0.8rem; font-size: 2.8rem; border: none; background: transparent; width: 100%; padding: 1.5rem 0 1.5rem 2rem; font-family: 'Pretendard';; font-weight: 500;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); text-align: left; font-family: 'Pretendard';; font-weight: 500;}

.form .table_box.top {width:100%;}
.form .table_box.middle {width: 100%;}
.form .table_box.bottom {width:95%; border-radius: 27px; border: none; font-size: 2.8rem; border: none; outline: none; width: 100%; padding: 1.5rem 0 1.5rem 2rem; font-family: 'Pretendard'; font-weight: 500; background: #f4f4f4 url('//static.savemkt.com/event/v_${eventSeq}/icon_select_down.png') no-repeat right 25px center / 10px auto;}
.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom option {font-size: 2rem;}

/* 개인정보 처리방침 */
.agBox {padding-bottom: 5%; font-family: 'Pretendard';; font-weight: 500; font-size: 1.4rem; line-height: 1; text-align: center;}
.btn-agreement {flex-shrink: 0; text-align: center; font-size: 1.4rem; color: #000; font-family: 'Pretendard';}
.btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'Pretendard';}

/* submit 버튼 */
.form .submit { width: 70% !important; margin: 0 auto;}
.form .submit input[type="image"] {margin: 0 auto; margin-left: auto; margin-right: 9%; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite; width: 100% !important; margin: 0;}

/* 거주자 팝업 */
.overlay { position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.7); }
[class^="popup-"] { position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 785px; height: max-content; margin: 0; padding: 30px 0; font-size: 150%; background-color: #fff; border-radius: 10px; flex-direction: column; justify-content: center; align-items: center; text-align: center; opacity: 1; visibility: visible; }
[class^="popup-"] p,
[class^="popup-"] span { width: 89.3%; margin: 0 auto; }
[class^="popup-"] strong { color: #ff0000; font-weight: 700; font-family: 'Pretendard';; }
[class^="popup-"] .btn-box { display: flex; align-items: center; justify-content: center; gap: 1rem; margin-top: 5%; font-size: 150%; }
[class^="popup-"] .btn-box button { width: 193px; height: 78px; color: #fff; padding-top: 1%; font-size: 125%; line-height: 1; font-weight: 400; border-radius: 0.5rem; font-family: 'Pretendard';; }

.btn-confirm {
    background: url('//static.savemkt.com/event/v_${eventSeq}/btn_confirm.png') no-repeat center center / 100% 100%;
}
.btn-out {
    background: url('//static.savemkt.com/event/v_${eventSeq}/btn_out.png') no-repeat center center / 100% 100%;
}

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

@media screen and (max-width: 786px) {
    #page-1 .paging {padding-top: 2.5%;}
    .agBox {padding-bottom: 2.5%;}
    .form .table_box {border-radius: 9px;}
    #page_landing_c .form .table_box input, #page_landing_c .form select.table_box {padding: 1.5rem 0 1rem 2rem; font-size: 1.4rem; border-radius: 9px;}
    #page_landing_c .form select.table_box  {padding: 1.45rem 0 1.45rem 2rem;}
    .count_box {top: 28%; left: 55.7%;}
    .count_box, .count {font-size: 2.2rem;}
    .page .paging button {height: 66px;}
    .form .submit {height: 53px;}
    .agBox, .btn-agreement {font-size: 1rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}
}
@media screen and (max-width: 500px){
    .poster_01 > .full-area {width: 100%; margin: 0 0 2.15%;}
    .count_box, .count {font-size: 1.35rem;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}
    .form .question_box .q_select label {font-size: 1.45rem; border-radius: 1rem;}
    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: unset;}
    .form-box .description {padding-bottom: 4%;}
    [class^="popup-"] .btn-box button {width: 105px; height: 43px;}
    .sub-txt {font-size: 75%;}
    .count-group {margin: 2rem 0;}
    .count-group > img {margin-right: 1rem;}
    .form .submit {width: 80% !important;}
    .form .table_box.bottom option {font-size: 1rem;}
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
                    <section class="page" id="page-1">
                        <div class="poster_01">
                            <div class="img-area top-img">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
                                <div class="img-area count-group">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.png">
                                    <div class="count_box">혜택 마감까지 <span class="count"></span> 남았습니다</div>
                                </div>
                            </div>
                            <div class="img-area full-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
                            <div class="img-area full-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.gif"></div>
                            <div class="img-area full-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
                        </div>
        
                        <p class="paging poster_02">
                            <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png"></button>
                        </p>
                        <div class="agBox">
                            혜택 제공을 위한
                            <a href="javascript:void(0);" class="btn-agreement"><b>개인정보처리방침</b></a>
                            에 동의해 주세요
                        </div>
                    </section>
        
                    <section class="page" id="page-2">
                        <div class="img-area count-group">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.png">
                            <div class="count_box">혜택 마감까지 <span class="count"></span> 남았습니다</div>
                        </div>
                        <div class="img-area poster_03"><img src="//static.savemkt.com/event/v_${eventSeq}/Q_01.png"></div>
                        <div class="img-area poster_04"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="예">예</label>
                                <label><input type="radio" name="tadd1" value="아니오">아니오</label>
                            </div>
                        </div>
                    </section>
        
                    <section class="page" id="page-3">
                        <div class="img-area count-group">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.png">
                            <div class="count_box">혜택 마감까지 <span class="count"></span> 남았습니다</div>
                        </div>
                        <div class="img-area poster_05"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                        <div class="img-area poster_06"><img src="//static.savemkt.com/event/v_${eventSeq}/Q_02.png"></div>
                        <div class="form-box poster_07">
                            <p class="sub-txt">타인의 정보를 무단으로 도용할 시, 관련 법령에 따라 제재를 받을 수 있습니다.</p>
                            <div class="formGroup">
                                <select name="tadd3" class="table_box bottom" id="add3" required>
                                    <option value="">진료과목 선택</option>
                                    <option value="고밀도 모발이식">고밀도 모발이식</option>
                                    <option value="디자인 헤어라인">디자인 헤어라인</option>
                                </select>

                                <select name="tadd4" class="table_box bottom" id="add4" required>
                                    <option value="">희망 상담시간</option>
                                    <option value="10시~12시">10시~12시</option>
                                    <option value="13시~15시">13시~15시</option>
                                    <option value="13시~15시">15시~16시</option>
                                </select>

                                <select name="tadd2" class="table_box bottom" id="add2" required>
                                    <option value="">성별 선택</option>
                                    <option value="남성">남성</option>
                                    <option value="여성">여성</option>
                                </select>

                                <div class="table_box top">
                                    <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                </div>
                                <div class="table_box middle">
                                    <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                                </div>

                                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb.png" /></div>
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
                        <p><img src="//static.savemkt.com/event/v_${eventSeq}/popup_txt.png" alt=""></p>
                        <div class="btn-box">
                            <button type="button" class="btn-confirm"></button>
                            <button type="button" class="btn-out"></button>
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
            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>	
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>	
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<script>
    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
        
        $('.overlay').hide();
        $('.popup-confirm').hide();
        
        moandblessAgreement();
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

    // function resetPage1() {
    //     document.getElementById('noticeImg').src = '//static.savemkt.com/event/v_${eventSeq}/notice.jpg';
    //     // page-1 자체
    //     gsap.set('#page-1', { display: 'block', opacity: 1 });

    //     // 내부 요소들 원위치
    //     gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .agBox', {
    //         x: 0,
    //         y: 0,
    //         opacity: 1,
    //         clearProps: 'transform'
    //     });
    // }


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
        animation02.to('#page-1 .agBox', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.set('.count_box', {
            top: isMobile ? '31%' : '33%'
        }, "<");
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }

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
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_05', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_06', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .sub-txt', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .description', {x: +200, opacity: 0, duration: 0.2});
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

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        let selectedRadio3 = procForm.querySelector(`select[name="tadd3"]`).value;
        if (!selectedRadio3) {
            alert("진료과목 항목을 입력해주세요.");
            return;
        } else {
            procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
        }

        let selectedRadio4 = procForm.querySelector(`select[name="tadd4"]`).value;
        if (!selectedRadio4) {
            alert("희망 상담시간 항목을 입력해주세요.");
            return;
        } else {
            procForm.querySelector("input[name='add4']").value = selectedRadio4.value;
        }
        

        if($('input[name="name"]').val() != "" && $('input[name="phone"]').val().length == 11){
        let selectedRadio2 = procForm.querySelector(`select[name="tadd2"]`).value;
            if (!selectedRadio2) {
                alert("성별 항목을 입력해주세요.");
                return;
            } else {
                procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
            }
        }
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		// 필수값 체크 항목
		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'add4': '설문4'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>