<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-4Regular.woff2') format('woff2');
    font-weight: 400;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-5Medium.woff2') format('woff2');
    font-weight: 500;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-6SemiBold.woff2') format('woff2');
    font-weight: 600;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-7Bold.woff2') format('woff2');
    font-weight: 700;
    font-display: swap;
}
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-3Light.woff2') format('woff2');
    font-weight: 300;
    font-style: normal;
}
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-5Medium.woff2') format('woff2');
    font-weight: 500;
    font-style: normal;
}
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-7Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
* {font-family: 'Presentation';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff;}
.form, .form .formContents{background-color:#ffffff;}
/* .page:not(#page-1) {width: 85%; margin: 0 auto;} */
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
/* .form .video-area {position: relative; padding-top: 75.27%; border: 8px solid #6ebfff; border-right: 0; border-left: 0;}
.form .video-area::after {position: absolute; bottom: 12px; right: 12px; content: ''; color: #858585; font-size: 10px; }
.form #location {position: absolute; top: 0; left: 0; width: 100%; height: 100%; max-height: 813px; object-fit: cover;}  */

/* 시침, 초침 */
.container {position: relative;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex;    justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button {position: relative; width: 100%; height: 186px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {width: 61.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}
.page .paging button a {display:block;}

.roulette {position: relative;}
.content {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-family: 'Presentation'; width: 70%; text-align: center;}
.content span {display: flex; color: #fff; font-size: 243%; justify-content: center;}
.content span .count {}
.content span.count {color: #fffc00; font-weight: 700;}
.content span.count2 {color: #ff0000; font-weight: 700;}

#page-1 {position: relative;}
#page-1 .paging {padding-top: 0%;}
.bg-area {padding-top: 3%; background: url('//static.savemkt.com/event/v_${eventSeq}/event_main_06.jpg') no-repeat center center / 100% 100%;}
/* #page-1 .poster_02 {position: absolute; bottom: 6%; width: 100%;} */

/* #timer {color: #ffff00;} */

#page-2 {position: relative; background: url('//static.savemkt.com/event/v_${eventSeq}/event_main_08.jpg') no-repeat center top / 100% 100%; padding-bottom: 5%;}
#page-2::after {content: ''; position: absolute; bottom: 0; left: 0; width: 100%; height: 8px; background: url('//static.savemkt.com/event/v_${eventSeq}/line.png') no-repeat center top / 100% 100%;}
#page-2 .count-area {position: relative; background-color: #222; padding-top: 20%;}
#page-2 .content span.count {text-shadow: 4px 5px 10px rgba(11, 11, 11, 0.8);}
#page-2 .content span.count2 {color: #00fff6; font-weight: 700;}
/* #page-2 .content {top: 21%;} */
/* #page-2 .img-area {width: 90.277778%; margin: 2% auto;} */

.form-box {margin-top: 10%;}
#wrap .formContents {position: static;}
.form .formContents .description {width: 90%; margin: 0 auto; text-align: center; box-sizing: border-box; font-family: 'Paperlogy'; font-weight: 300;}
.form .formContents .description * {font-family: 'Paperlogy'; font-weight: 300;}
.form-box .form-box-top {padding: 5% 5% 0;}
.form-box .description {padding-bottom: 2%;}
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;}
.form .question_box .q_select label {width:100%; padding: 4% 0 2.5%; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 200%; font-weight: 500; font-family: 'Presentation';}
.form .question_box .q_select label.on {background: #aaa;}
.form .question_box .q_select label:not(:last-child) {margin-bottom: 2%;}
.form .question_box .q_select label img {width:95%;}

.form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {background-color: #fff; width: 87.277778%; margin: 2% auto 0; padding: 5% 2%; border-radius: 25px;}
#page-2 .formGroup .img-area {width: 89.834254%; margin: 0 auto 5%;}
.form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
.form .table_box input {border: 7px solid #000; text-align: center; border-radius: 2rem; font-size: 4rem; background: transparent; width: 100%; padding: 1.5rem 2rem; font-family: 'Presentation'; font-weight: 500;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); font-family: 'Presentation'; font-weight: 500;}

.form .table_box.top {width:95%;}
.form .table_box.middle {width: 95%;}
.form .table_box.bottom {width:95%;}
.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom input {}

/* 개인정보 처리방침 */
.agBox {display: flex; align-items: center; justify-content: center; padding-bottom: 2.5%; font-family: 'Paperlogy'; font-weight: 500; font-size: 1.4rem; line-height: 1;}
.btn-agreement {flex-shrink: 0; text-align: center; font-size: 1.4rem;  display: block; color: #000; font-family: 'Paperlogy';}
.btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'Paperlogy';}

/* submit btn */
/* .form .submit {width: 85%; margin: 0 auto; padding: 5% 0;}
.form .submit input[type="image"] {width: 100%;} */

.form .submit {display: flex; align-items: center; justify-content: center; margin: 0 auto; padding: 0;}
.form .submit {position: relative; width: 95%; height: 179px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 3% auto; padding: 0% 0;}
.form .submit input[type="image"] {
    width: 61.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite;
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

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}


/* font */
@font-face {
    font-family: 'PresentationMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/PresentationMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@media screen and (max-width: 786px) {
    #page-1 .paging {padding-top: 2.5%; padding-bottom: 1.5%;}
    .agBox {padding-bottom: 0%;}
    .form .table_box {border-radius: 9px; margin-bottom: 9px;}
    #page_landing_c .form .table_box input {padding: 1rem 2rem; font-size: 1.4rem; border-width: 4px; border-radius: 1rem;}
    #page-2 .count-area {padding-top: 24%;}
    .page .paging button {height: 66px;}
    .form .submit {height: 73px;}
    .agBox, .btn-agreement {font-size: 1rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}

    .content span {font-size: 127%;}
}
@media screen and (max-width: 500px){
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

    .agree_box {width: 100%;}
    .agree_box li {font-size: 1.05rem;}
    .agree_box li input[type="checkbox"] {width: 14px; height: 14px; margin-right: 6px;}
    .agree_box li input[type="checkbox"]:checked::after {left: 4px; top: 0px; width: 4px; height: 8px;}
    .agree-popup .ag-header {padding: 26px 16px 8px;}
    .agree-popup .ag-header h2 {font-size: 16px;}
    .agree-popup .ag-body {height: 350px; font-size: 1.05rem; padding: 8px 16px 16px;}
    .agree-popup .ag-body .section-title {font-size: 1.15rem;}

    .agree_box li label {font-size: 80%;}
    .agree_box li .btn-detail {font-size: 80%;}

    #page-2::after {height: 4px;}
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
                            <div class="img-area roulette">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg">
                                <div class="content">
                                    <span>
                                        오늘 무료 체험 신청자 :&nbsp;<div class="count_box"><span class="count">53명</span></div>&nbsp;진행중
                                    </span>
                                    <span>현재 남은 수량 :&nbsp;<div class="count_box"><span class="count count2">13개</span> </div>&nbsp;남았습니다</span>
                                </div>
                            </div>
                        </div>
                        <div class="poster_02">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg"></div>
                            <div class="img-area bg-area">
                                <div class="agBox">
                                    혜택 제공을 위한&nbsp;
                                    <a href="javascript:void(0);" class="btn-agreement"><b>개인정보처리방침</b></a>
                                    에 동의해 주세요
                                </div>
                                <p class="paging ">
                                    <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                                </p>
                            </div>
                        </div>
                    </section>
        
                    <section class="page" id="page-2">
                        <div class="img-area roulette">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_07.gif">
                            <div class="content">
                                <span>
                                    오늘 무료 체험 신청자 :&nbsp;<div class="count_box"><span class="count">53명</span></div>&nbsp;진행중
                                </span>
                                <span>현재 남은 수량 :&nbsp;<div class="count_box"><span class="count count2">13개</span> </div>&nbsp;남았습니다</span>
                            </div>
                        </div>
                        <div class="formGroup">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_02.png"></div>
                            <div class="table_box top">
                                <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="성함"/>
                            </div>
                            <div class="table_box middle">
                                <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                            </div>
                            <div class="table_box bottom">
                                <input type="tel" name="phone" id="phone" value="" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                            </div>
                            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png" /></div>
                            <div class="description">
                                <div class="description-info">
                                    <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                    <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                </div>
                                <span id="target">대상 : ${resVo.target}</span>
                            </div>
                        </div>
                    </section>

                    <!-- 개인정보처리방침 전문 -->
                    <div id="modal2" class="modal modal2" style="display: none;">
                        <div class="modal-content">
                            <span class="close" id="close">×</span>
                            <p>
                                개인정보처리방침<br />
                                건강기능식품 판매 이벤트 개인정보 수집 및 이용 동의<br /><br />

                                [개인정보 수집 및 이용 동의]<br /><br />

                                - 수집 · 이용 주체 : 이벤트 및 상품 판매 운영자<br />
                                - 수집 · 이용 목적 : 신청한 이벤트 안내, 상품 안내 및 구매 관련 문의 응대, 주문 및 배송 관련 안내, 신청자 관리<br />
                                - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br />
                                - 보유 및 이용 기간 :<br />
                                └ 계약 또는 청약철회 등에 관한 기록 : 5년<br />
                                └ 대금결제 및 재화 등의 공급에 관한 기록 : 5년<br />
                                └ 소비자 불만 또는 분쟁처리에 관한 기록 : 3년<br /><br />

                                * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여 및 서비스 이용이 제한됩니다.<br />
                                * 고객 동의 철회 시 지체없이 파기합니다.<br />

                                [개인정보 처리위탁 동의]<br /><br />

                                - 수탁자 : 이벤트 및 마케팅 운영 대행사<br />
                                - 위탁 업무 내용<br />
                                └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                                └ 고객정보 서버 운영 및 관리<br />
                                └ 서비스 신청 및 주문/배송 관련 개인정보 처리<br />
                                └ 마케팅 및 광고 운영 관련 업무<br />
                                - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                            </p>
                        </div>
                    </div>

                    <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>	 -->
                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>	
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
	});

    var modal2 = document.getElementById("modal2");
    var agree = document.querySelector(".agBox .btn-agreement");
    var close2 = document.getElementById("close");
    if (modal2) {
        agree.onclick = function () { modal2.style.display = "block"; };
    }
    if (modal2) {
        close2.onclick = function () { modal2.style.display = "none"; };
    }
    
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
        // animation02.to('.roulette', { paddingBottom: '5.19%', duration: 0 }, "<");
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});

        startPage2Count();
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
    let remainingCount = 40; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // count
    $(document).ready(function() {
        let count = 53; // 초기 인원 수
        let count2 = 13; // 초기 인원 수
        const intervalTime = 1000; // 3초마다 업데이트

        // 인원 수 업데이트 함수
        function updateCount() {
            let countText = count;
            let countText2 = count2;
            $('#page-1 .count').text(countText + '명'); // 인원 수를 화면에 표시
            $('#page-1 .count2').text(countText2 + '개'); // 인원 수를 화면에 표시

            if (count >= 60) {
                return; 
                // count = 40; // 0이 되면 다시 45로 초기화
            }
            if (count2 <= 6) {
                return; 
                // count = 40; // 0이 되면 다시 45로 초기화
            }
            count++; // 증가
            count2--; // 감소
        }

        // 3초마다 updateCount 함수 실행
        setInterval(updateCount, intervalTime);

        // 페이지 로드 시 초기 인원 표시
        updateCount();
    });

    let page2Interval = null;

    function startPage2Count() {
        let count = 60;   // 시작값
        let count2 = 6;   // 시작값

        const $count1 = $('#page-2 .count');   // "명"
        const $count2 = $('#page-2 .count2');  // "개"

        if (page2Interval) {
            clearInterval(page2Interval);
        }

        function update() {
            $count1.text(count + '명');
            $count2.text(count2 + '개');

            // 종료 조건
            if (count >= 64 && count2 <= 2) {
                clearInterval(page2Interval);
                return;
            }

            if (count < 64) count++;   // 60 → 64
            if (count2 > 2) count2--;  // 6 → 2
        }

        update();
        page2Interval = setInterval(update, 1000);
    }

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
		
		// (필수) 개인정보 수집 및 이용 동의 검증
        // if($('input[name="name"]').val() !== "" && $('input[name="age"]').val() !== "" && $('input[name="phone"]').val() !== ""){
        //     if (!$('#agree1').is(':checked')) {
        //         alert('(필수) 개인정보 수집 및 이용에 동의해 주세요.');
        //         return;
        //     }
        // }

		// 필수값 체크 항목
		var required = {
			'name': '성함'
			,'age': '나이'
			,'phone': '연락처'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>