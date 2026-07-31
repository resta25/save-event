<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Galmuri11/Galmuri11.css');
    html, body {font-size: 62.5%;}
    * {font-family: "Pretendard", sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd {padding: 4.6rem 4.9rem; border-radius: 2.5rem;}
    #page_landing_c .wrap_curd * {font-size: 110%; font-family: inherit;}
    /* #page_landing_c .wrap_form {border: 0; padding: 4.3rem 4rem; box-sizing: border-box; background-color: #001133;} */
    #page_landing_c .wrap_form {background-color: #001133;}
    html{height: 100%;}
    main {position: relative;}
	.content {padding: 2rem 1rem;}
	.content + .content {border-top: 0.1rem solid #ddd;}
	.content * {padding: 0.8rem 1rem;}
    .wrap_form .agBox {margin: 0.7rem auto;}
    .container {display: block; width: 100%; height: 100%;}

    .gif-area {background-color: #fff; width: 100%; padding-top: 6rem; padding-bottom: 3rem;}
    .gif-area .img-area {width: 90.648148%; margin: 0 auto;}
    .gif-area .img-area:nth-child(2) {width: 75.740741%; margin: 0 auto;}

    /* 설문 영역 */
    .question_box {margin-top: 6.8rem;}
    .q_text.img-area {width: 66.759259%; margin: 0 auto;}
    #page_landing_c .question_box [class^="user_"] {display: flex; align-items: center; column-gap: 5.5rem;}
    #page_landing_c .question_box [class^="user_"] + [class^="user_"] {margin-top: 2.2rem;}
    #page_landing_c .question_box [class^="user_"] .legend {flex-shrink: 0; width: 12.5rem; font-size: 3.6rem; font-weight: 400;}
    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {flex-grow: 1; border: 1px solid #868686; border-radius: 0; font-size: 3.6rem; font-weight: 700; margin: 0; width: 100%;}
    .wrap_form div:not(.agBox) input[type="radio"] + span {font-size: 3.2rem !important; font-weight: 500; color: #000; padding-left: 5.6rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:before {width: 4rem; height: 4rem; border-width: 0.4rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:after {left: 1.1rem; width: 3rem; height: 1.5rem; margin-top: -0.5rem; border-width: 0 0 0.4rem 0.4rem;}

    .count-area {position: relative;}
    .count-area .count {position: absolute; top: 25%; font-size: 5.4rem; color: #fff000; font-family: 'noto sans kr'; font-weight: 700; right: 36%; letter-spacing: -0.04em; width: 10.5rem; text-align: center; line-height: 1;}

    /* .modal2 .modal-content p, .modal3 .modal-content p, .modal4 .modal-content p {height: auto;} */
    .q_select {display: flex; align-items: center; column-gap: 1.8rem; margin-top: 4.9rem;}
    #page_landing_c .wrap_curd .q_select label {display: block; width: calc((100% - 5.4rem) / 4); padding: 2rem 0; text-align: center; font-size: 4.1rem; font-family: 'Pretendard'; color: #000; letter-spacing: -0.2px; font-weight: 500; background-color: #ddd; border-radius: 1rem;}
    #page_landing_c .wrap_curd .q_select label.active {background-color: #ffe400;}
    
    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 4.5rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'GangwonEducationTteontteon';}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 530px; overflow: hidden; background-color: #f8f8f8;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 2.1rem; width: calc(100% / 4);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    #page_landing_c main {display: block; max-width: 1080px; background-color: #fff;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}


    #page_landing_c .wrap_curd .submit {margin: 0 auto;     background: url(//static.savemkt.com/event/v_361/btn_newsb.png) no-repeat center center / auto 100%;
    padding: 6% 5%;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 70%;
        margin: 0 auto 0;
        padding: 0;
        border-radius: 0;
    }

    .db_btn, .submit input[type="image"] {animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;}
        
    @keyframes pulsating {
        50% {
            transform: scale(0.95);
        }
    }
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        display: none;
    }

    .fixed {
        position: fixed;
        z-index: 9;
        bottom: 0%;
        width: 100%;
        max-width: 1081px;
        cursor: pointer;
    }
    .fixed .inner {position: absolute; bottom: 5%; width: 87.314815%; left: 50%; transform: translateX(-50%);}
    .fixed .timer-box {position: absolute; top: 5%; position: absolute; top: 3%; left: 46%; color: #fff; font-size: 340%; font-family: 'Galmuri11';}
    .fixed .timer-box span {color: #eb342c; font-size: 100%; font-family: 'Galmuri11';}
    .fixed .gauge-box {position: absolute; width: 91.111111%; top: 28%; left: 50%; transform: translateX(-50%); height: 10px;}
    .fixed .gauge-box .gauge-bar {width: 100%; height: 100%; background: linear-gradient(90deg, #ff0000 0%, #ffd800 100%);}

@media screen and (max-width: 768px){
    .subscribe {padding: 3% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 1.5rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {font-size: 3rem;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 2rem 0 0; font-size: 3rem; margin-bottom: 0.6875rem;}
}
@media screen and (max-width: 640px){
}
@media screen and (max-width: 480px){
    html, body {font-size: 1.7vw;}

    #page_landing_c .wrap_curd * {font-size: 100%;}

    #page_landing_c .wrap_curd .agBox {font-size: 90%;}

    .count-area .count {font-size: 3rem; right: 34.5%; width: 7rem;}
    .question_box {margin-top: 4rem;}
    #page_landing_c .question_box [class^="user_"] {column-gap: 2rem;}
    #page_landing_c .question_box [class^="user_"] input {font-size: 3rem;}
    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {font-size: 2.4rem;}
    #page_landing_c .question_box [class^="user_"] .legend {width: 5.5rem; font-size: 2.4rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span {font-size: 3rem !important; padding-left: 5rem;} 
    .wrap_form div:not(.agBox) input[type="radio"] + span:after {left: 0.6rem; width: 2.5rem; height: 1.3rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:before {width: 3rem; height: 3rem;}
    .wrap_form .description {margin-top: 5%;}
    .wrap_form .description p, .wrap_form .description span, .wrap_form .description .ad_txt {display: block; padding: 0; font-size: 1.4rem !important;}
    .q_select {column-gap: 1rem; margin-top: 2.9rem;}
    .q_text.img-area {width: 78%;}
    #page_landing_c .wrap_curd {padding: 2.6rem 1.9rem;}
    #page_landing_c .wrap_curd .q_select label {width: calc((100% - 3rem) / 4); font-size: 2rem; padding: 1rem 0;}

    .fixed .timer-box {left: 45%; font-size: 125%;}
}
@media screen and (max-width: 395px){

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css" type="text/css"/>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                <div class="formGroup">
                    <div class="form_inner">
                        <div class="question_container">
                            <div class="question_container">
                                <div class="q_text img-area">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png">
                                </div>
                                <div class="q_select">
                                    <label><input type="checkbox" name="tadd1[]" value="기침 · 가래">기침 · 가래</label>
                                    <label><input type="checkbox" name="tadd1[]" value="기관지 건강">기관지 건강</label>
                                    <label><input type="checkbox" name="tadd1[]" value="혈관질환">혈관질환</label>
                                    <label><input type="checkbox" name="tadd1[]" value="기타">기타</label>
                                </div>
                                <div class="question_box">
                                    <div class="user_name">
                                        <span class="legend">이름</span>
                                        <input type="text" name="name" id="name" class="inp" required placeholder="이름을 입력해주세요" autocomplete="off">
                                    </div>
                                    <div class="user_age">
                                        <span class="legend">나이</span>
                                        <input type="tel" name="age" id="age" class="inp" required=""  placeholder="나이를 입력해주세요" autocomplete="off" maxlength="2" placeholder="">
                                    </div>
                                    <div class="user_phone">
                                        <span class="legend">연락처</span>
                                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                    </div>
                                    <div class="user_text">
                                        <span class="legend">문의</span>
                                        <input type="text" name="tadd2" id="tadd2" class="inp" required placeholder="문의사항을 입력해 주세요.(선택사항)">
                                    </div>
                                </div>   
                            </div>

                        </div>

                    </div>
                    
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보 처리방침에 동의합니다. </span></label> <a href="#" class="btn-agreement">[보기]</a>
                    </div>

                    <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png" /></div>	

                </div>

                <div class="description">
                    <p id="event-period"></p>
                    <span class="target">대상 : ${resVo.target}</span>
                    <div class="ad_txt">안심하세요! 본사에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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

        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        
        <!-- <div class="subscribe_container">
            <div class="title">
                실시간 신청현황
            </div>
            <div class="subscribe_bg">
                <div class="subscribe" data-limit="10">
                </div>
            </div>
        </div> -->

        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                </p>
            </div>
        </div>

        <!-- <div class="img-area fixed">
            <div class="img-area fixed-area"><img src="//static.savemkt.com/event/v_${eventSeq}/fixed.png"></div>
            <div class="timer-box" id="countdown">
                <span class="hours"></span> : 
                <span class="minutes"></span> : 
                <span class="second"></span>
            </div>
            <div class="gauge-box">
                <div class="gauge-bar"></div>
            </div>
            <div class="inner">
                <span class="db_btn">
                    <img src="//static.savemkt.com/event/v_${eventSeq}/db_btn.png">
                </span>
            </div>
        </div> -->

        <div class="container">
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.png"></div>
        </div>

        <div class="img-area fixed">
            <div class="img-area fixed-area"><img src="//static.savemkt.com/event/v_${eventSeq}/fixed.png"></div>
            <div class="timer-box" id="countdown">
                <span class="hours"></span> : 
                <span class="minutes"></span> : 
                <span class="second"></span>
            </div>
            <div class="gauge-box">
                <div class="gauge-bar"></div>
            </div>
            <div class="inner">
                <span class="db_btn">
                    <img src="//static.savemkt.com/event/v_${eventSeq}/db_btn.png">
                </span>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    if (typeof window.thisAgreementWithText !== 'function') {
        window.thisAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    const fixedBar = document.querySelector('.fixed');
    const targetForm = document.querySelector('.wrap_form');
    const main = document.querySelector('main');

    const observer = new IntersectionObserver(
        ([entry]) => {
            const isVisible = !entry.isIntersecting;

            fixedBar.style.display = isVisible ? 'block' : 'none';

            if (isVisible) {
                main.style.paddingBottom =
                    document.querySelector('.fixed-area').offsetHeight + 'px';
            } else {
                main.style.paddingBottom = '0';
            }
        },
        {
            threshold: 0,
            rootMargin: '0px 0px -300px 0px'
        }
    );

    observer.observe(targetForm);

    const countdown = document.getElementById('countdown');
    const hoursEl = countdown.querySelector('.hours');
    const minutesEl = countdown.querySelector('.minutes');
    const secondsEl = countdown.querySelector('.second');

    const maxSeconds = 3 * 3600 + 59 * 60; // 시작 시간(초)
    const maxMilliseconds = maxSeconds * 1000;
    const startTime = Date.now();
    let timerAnimationId = null;

    function updateTimer() {
        const elapsedMs = Date.now() - startTime;
        const remainingMs = Math.max(0, maxMilliseconds - elapsedMs);
        const remainingSeconds = Math.floor(remainingMs / 1000);

        const hours = String(Math.floor(remainingSeconds / 3600)).padStart(2, '0');
        const minutes = String(Math.floor((remainingSeconds % 3600) / 60)).padStart(2, '0');
        const seconds = String(remainingSeconds % 60).padStart(2, '0');

        hoursEl.textContent = hours;
        minutesEl.textContent = minutes;
        secondsEl.textContent = seconds;

        // 구간 분기 없이 이징 곡선으로 부드럽게 감소
        const progress = 1 - (remainingMs / maxMilliseconds); // 0 ~ 1
        const minGaugeWidth = 15;
        const easingStrength = 250; // 값이 클수록 초반 감소가 더 빠름
        const easedProgress = (1 - Math.exp(-easingStrength * progress)) / (1 - Math.exp(-easingStrength));
        const gaugeWidth = 100 - ((100 - minGaugeWidth) * easedProgress);

        document.querySelector('.gauge-bar').style.width = Math.max(gaugeWidth, minGaugeWidth) + '%';

        if (remainingMs <= 0) {
            if (timerAnimationId) {
                cancelAnimationFrame(timerAnimationId);
            }
            return;
        }

        timerAnimationId = requestAnimationFrame(updateTimer);
    }

    updateTimer(); // 최초 표시


    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        
        thisAgreementWithText(`개인정보처리방침

            루미너스아이즈(이하 “회사”)은 개인정보보호법 등 관련 법령을 준수하며, 정보주체의 권익 보호를 위해 개인정보를 적법하고 안전하게 처리합니다. 회사는 본 개인정보처리방침을 통해 개인정보의 수집·이용 목적, 처리 및 보유기간, 제3자 제공 및 위탁, 정보주체의 권리 등을 안내드립니다.

            ■ 수집하는 개인정보 항목 및 방법

            1. 수집 항목

            -회원가입 및 고객관리
            필수: 이름, 아이디, 비밀번호, 휴대전화번호, 이메일주소
            선택: 생년월일, 성별

            - 상품 주문 및 배송
            수령인 이름, 배송지 주소, 연락처

            - 결제 및 환불
            결제수단 종류, 결제 승인 정보

            - 마케팅 및 이벤트 참여 시(선택 동의)
            이름, 휴대전화번호, 이메일주소, 구매이력

            - 서비스 이용 과정에서 자동 수집
            IP 주소, 쿠키, 접속 로그, 방문 일시, 이용 기록

            ※ 회사는 질병 정보 등 민감한 건강정보는 수집하지 않습니다.

            2. 수집 방법
            - 홈페이지(회원가입, 주문, 문의), 이벤트 참여, 고객 상담(전화, 문자, 이메일)

            ■ 개인정보의 수집 및 이용 목적

            회사는 수집한 개인정보를 다음의 목적을 위해 이용합니다.

            1. 회원 관리
            - 회원 식별 및 본인 확인
            - 고객 문의 응대 및 공지사항 전달

            2. 상품 주문 및 배송 서비스 제공
            - 주문 처리, 결제, 배송, 환불

            3. 마케팅 및 광고 활용(선택 동의)
            - 이벤트 안내, 할인 정보, 신제품 소식 제공
            - 문자(SMS), 카카오 알림톡, 이메일 발송

            ■ 개인정보의 처리 및 보유기간

            서비스 이용자가 “회사”의 회원으로서 서비스를 계속 이용하는 동안 이용자의 개인정보를 계속 보유하며 서비스의 제공 등을 위해 이용합니다. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성 또는 이벤트 참여시 이벤트 페이지에 별도 명시한 수집동의 받은 날로부터 동의 받은 기간이 만료되거나 이용자가 직접 삭제, 수정 또는 회원 탈퇴한 경우에 재생할 수 없는 방법으로 파기합니다.
            단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
            상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 “회사”는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

            - 웹사이트 방문기록
            • 보존 이유 : 통신비밀보호법
            • 보존 기간 : 3개월
            - 본인확인에 관한 기록
            • 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률
            • 보존 기간 : 6개월 (*해당 서비스 이용 시에 한함)
            - 소비자의 불만 또는 분쟁처리에 관한 기록
            • 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
            • 보존 기간 : 3년
            - 신용정보의 수집/처리 및 이용 등에 관한 기록
            • 보존 이유 : 신용정보의 이용 및 보호에 관한 법률
            • 보존 기간 : 3년

            ■ 개인정보의 제3자 제공 및 위탁에 관한 사항
            - "회사"는 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. “회사”의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다. 다만, 법령에 따라 제공이 필요한 경우에는 사전 동의를 받거나 관련 법령에 따라 제공합니다.

            - 수탁업체: ㈜비올린 / 진기남 / 010-3143-3437 / jinginam12@beolin.co.kr
            - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리

            ■ 정보주체의 권리의무 및 그 행사방법

            1. 개인정보 열람 요구: “회사”에서 보유하고 있는 개인정보파일은 개인정보보호법 제35조(개인정보의 열람)에 따라 열람을 요구할 수 있습니다. 다만 개인정보 열람 요구는 개인정보보호법 제35조 제5항에 의하여 다음과 같이 제한될 수 있습니다.
            - 법률에 따라 열람이 금지되거나 제한되는 경우
            - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우

            2. 개인정보 정정•삭제 요구: “회사”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제36조(개인정보의 정정, 삭제)에 따라 “회사”에 개인정보의 정정, 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.

            3. 개인정보 처리정지 요구: “회사”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제37조(개인정보의 처리정지 등)에 따라 회사에 개인정보의 처리정지를 요구할 수 있습니다. 또한 만 14세 미만 아동의 법정대리인은 회사에 그 아동의 개인정보의 열람, 정정, 삭제, 처리정지 요구를 할 수 있습니다. 다만, 개인정보 처리정지 요구시 「개인정보보호법」 제37조 제2항에 의하여 처리정지 요구가 거절될 수 있습니다.
            - 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우
            - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우
            - 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우
            정보주체는 회사에 대해 언제든지 다음과 같은 권리를 행사할 수 있습니다.


            ■ 개인정보의 파기절차 및 파기방법
            “회사”는 원칙적으로 개인정보의 보유기간이 경과했거나 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

            1. 파기절차
            이용자가 입력한 정보는 보유기간이 경과했거나 처리목적이 달성 후 내부 방침 및 관련 법령에 따라 파기합니다. (개인정보처리 및 보유기간 참조)

            2. 파기기한
            이용자의 개인정보는 개인정보의 보유기간이 경과된 경우 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.

            3. 파기방법
            “회사”에서 처리하는 개인정보를 파기할 때에는 다음의 방법으로 파기 합니다.
            - 전자적 파일 형태인 경우: 복원이 불가능한 방법으로 영구삭제
            - 전자적 파일의 형태 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우: 파쇄 또는 소각

            ■ 개인정보의 안전성 확보 조치
            “회사”는 (개인정보보호법) 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.

            1. 내부관리계획의 수립 및 시행
            “회사”은 (개인정보보호법) 제29조에 따라 내부관리 계획을 수립 및 시행합니다.

            2. 개인정보취급자 지정의 최소화 및 교육
            개인정보취급자의 지정을 최소화하고 내부관리 계획에 따라 정기적인 교육을 시행하고 있습니다.

            3. 관리적 대책
            - 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보보호정책에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.
            - 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.

            4. 개인정보에 대한 접근 제한
            개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근을 통제하고, 침입차단시스템과 탐지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며 권한 부여, 변경 또는 말소에 대한 내역을 기록하고, 그 기록을 최소 3년간 보관하고 있습니다.

            5. 접속기록의 보관 및 위변조 방지
            개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 관리하고 있습니다.

            6. 개인정보의 암호화
            이용자의 개인정보는 암호화 되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.

            7. 해킹 등에 대비한 기술적 대책
            회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.

            8. 비인가자에 대한 출입 통제
            개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.

            ■ 개인정보 보호책임자
            “회사”는 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
            이름 : 백현우
            직위 : 대표이사
            소속 : 루미너스아이즈
            이메일 : gyawook@lumieyes.com

            ■ 개인정보 처리방침의 변경
            이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
            - 시행일자: 2011년 9월 30일
            `);

        //신청현황 리스트
        // getComment(`${eventSeq}`);

        setBottomPadding();
    });

    function setBottomPadding() {
        const $fixedBtn = $('.fixed-area');
        const $wrap = $('main');

        if (!$fixedBtn.length || !$wrap.length) return;

        const btnHeight = $fixedBtn.outerHeight();
        $wrap.css('padding-bottom', (btnHeight) + 'px');
    }

    $(window).on('load resize', function () {
        setBottomPadding();
    });

    let dataNum;

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
            
            for(v in resultData) {
                var data = resultData;
                var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
                var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
                var md = parts[0] || "";                        // "08-21"
                var tm = parts[1] || "";   
				var statusText = Math.random() < 0.5 ? '접수중' : '신청완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '신청완료' ? 'color-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="phone">'+ data[v].phone +'</div>';
					html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '  <div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				$(obj).append(html);
			}
            
		});

        if(resultData.length >= 10){
            $('.subscribe_container').show();
            return;
        } else {
            $('.subscribe_container').hide();
            return;
        }
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);

    
    $('input[name="tadd1[]"]').on('change', function () {
        const $tadd1Inputs = $('input[name="tadd1[]"]');

        $tadd1Inputs.closest('label').removeClass('active');
        $tadd1Inputs.filter(':checked').closest('label').addClass('active');
    });

    // 상단 슬라이드
    // var swiper = new Swiper(".mySwiper", {
    //     spaceBetween: 30,
    //     // centeredSlides: true,
    //     speed: 700,
    //     autoplay: {
    //         delay: 5000,
    //         disableOnInteraction: false,
    //     },
    //     loop:true,
    // });

    // 하단 슬라이드
    // var swiper = new Swiper(".mySwiper2", {
    //     spaceBetween: 30,
    //     // centeredSlides: true,
    //     autoplay: {
    //         delay: 2500,
    //         disableOnInteraction: false,
    //     },
    //     loop:true,
    // });
	
	var modal2 = document.getElementById("modal2");
	var agree = document.querySelectorAll(".agBox .btn-agreement");
	var close2 = document.getElementById("close");

    agree.forEach(ag => ag.onclick = function () {
	    modal2.style.display = "block";
	})

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
	document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.querySelector('#form-1 #phone');
	    const phoneInput02 = document.querySelector('#form-2 #phone');

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';
	    // phoneInput02.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	    // phoneInput02.addEventListener('input', function() {
	    //     if (!phoneInput02.value.startsWith('010')) {
	    //         phoneInput02.value = '010';
	    //     }
	    // });
	});

    // $('.overlay').hide();
    // $('.popup-valid').hide();
    // $('.pop-up').hide();

    // let isConfirm = false;

    // $('.submit .btn_submit').on('click', function(e) {
    //     e.preventDefault();

    //     const tadd1 = $('input[name="tadd1"]:checked').val();
    //     const tadd2 = $('input[name="tadd2"]:checked').val();
    //     const tadd3 = $('input[name="tadd3"]:checked').val();
    //     const agBox = $('input[name="agBox"]:checked').val();
    //     const nameVal = $('input[name="name"]').val();
    //     const phoneVal = $('input[name="phone"]').val();

    //     // ✅ 필수값 유효성 검사
    //     if (!tadd1 || !tadd2 || !tadd3 || !agBox || !nameVal || !phoneVal || phoneVal.length < 11) {
    //         $('.overlay').show();
    //         $('.popup-valid').show();
    //         return;
    //     }

    //     // ✅ 모든 항목이 입력된 경우 → 확인 팝업 표시
    //     $('.overlay, .pop-up').show();
    //     isConfirm = false;
    // });

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.wrap_form').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동

        const $wrap = $('main');

        $wrap.css('padding-bottom', 0);
    })

    // $('.btn-valid').on('click', function() {
    //     $('.overlay, .popup-valid').hide();
    // });

    // $('.btn-confirm').on('click', function() {
    //     isConfirm = true;
    //     $('.overlay, .pop-up').hide();

    //     if (isConfirm) {
    //         fnForm('form-1'); // ✅ 폼 전송 함수 실행
    //     }
    // });

    // $('.btn-out').on('click', function() {
    //     isConfirm = false;
    //     $('.overlay, .pop-up').hide();
    // });


    // $('li.btn_submit').bind('click',function() {
	// 	$('#form-1').submit();
	// })

	// $('input[name*="tadd"]').bind('click', function() {
	// 	$(this).closest('.q_select').find('label').removeClass('on');			
	// 	$(this.parentNode).addClass('on');	
	// });

	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
		var phoneNum = $('input[name="phone"]').val();
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        // let selectedRadio1 = procForm.querySelector('input[name="tadd1"]').value;
        // procForm.querySelector("input[name='add1']").value = selectedRadio1;
        
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
        let checkedValues;
        checkedValues = $('#' + formId + ' input[name="tadd1[]"]:checked').map(function() {
            return $(this).val();
        }).get();
        
        if (!checkedValues.length >= 1) {
            alert("설문을 선택해주세요.");
            return;
        } else {
            procForm.querySelector("input[name='add1']").value = checkedValues;
        }
		 let selectedRadio2 = procForm.querySelector('input[name="tadd2"]').value;
        procForm.querySelector("input[name='add2']").value = selectedRadio2;

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		// procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		// procForm.querySelector("input[name='add3']").value = selectedRadio3;
		
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>