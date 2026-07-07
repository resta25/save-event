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
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    /* #page_landing_c .wrap_form {border: 0; padding: 4.3rem 4rem; box-sizing: border-box; background-color: #001133;} */
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
    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {flex-grow: 1; border: 2px solid #868686; border-radius: 0; font-size: 3.6rem; font-weight: 700; margin: 0; width: 100%;}
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


    #page_landing_c .wrap_curd .submit {margin: 0 auto; padding: 0;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 100%;
        margin: 0 auto 0;
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
    .wrap_form .description p, .wrap_form .description span, .wrap_form .description .ad_txt {font-size: 1.4rem !important;}

    .q_select {column-gap: 1rem; margin-top: 2.9rem;}
    .q_text.img-area {width: 78%;}
    #page_landing_c .wrap_curd {padding: 0.6rem 1.9rem;}
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
                                    <label><input type="checkbox" name="tadd1[]" value="고혈압">고혈압</label>
                                    <label><input type="checkbox" name="tadd1[]" value="혈관질환">혈관질환</label>
                                    <label><input type="checkbox" name="tadd1[]" value="관절 · 연골">관절 · 연골</label>
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

                    <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>	

                </div>

                <div class="description">
                    <p id="event-period"></p>
                    <span class="target">대상 : ${resVo.target}</span>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.gif"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_06.gif"></div>

        <div class="wrap_form wrap_form_2">
            <form class="wrap_curd" id="form-2" method="POST" accept-charset="utf-8">
                <div class="formGroup">
                    <div class="form_inner">
                        <div class="question_container">
                            <div class="q_text img-area">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png">
                            </div>
                            <div class="q_select">
                                <label><input type="checkbox" name="tadd1[]" value="고혈압">고혈압</label>
                                <label><input type="checkbox" name="tadd1[]" value="혈관질환">혈관질환</label>
                                <label><input type="checkbox" name="tadd1[]" value="관절 · 연골">관절 · 연골</label>
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
                    
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보 처리방침에 동의합니다. </span></label> <a href="#" class="btn-agreement">[보기]</a>
                    </div>

                    <div class="submit"><input type="image" value="" onclick="fnForm('form-2')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>	

                </div>

                <div class="description">
                    <p id="event-period"></p>
                    <span class="target">대상 : ${resVo.target}</span>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
        </div>
            
        <div class="subscribe_container">
            <div class="title">
                실시간 신청현황
            </div>
            <div class="subscribe_bg">
                <div class="subscribe" data-limit="10">
                </div>
            </div>
        </div>

        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                </p>
            </div>
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

        <div class="container">
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
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
    const targetForm = document.querySelectorAll('.wrap_form')[1]; // 두 번째 폼

    const observer = new IntersectionObserver(
        ([entry]) => {
            const $wrap = $('main');
            if (entry.isIntersecting) {
                fixedBar.style.display = 'none';

                $wrap.css('padding-bottom', 0);

            } else {
                fixedBar.style.display = 'block';
            }
        },
        {
            threshold: 0
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
            자사 제휴의 요청 개인정보 수집 및 이용 동의

            [개인정보 수집 및 이용 동의]

            - 수집 · 이용 주체 : 이벤트 신청
            - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리
            - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
            - 보유 및 이용 기간 : 관련 법령에서 정한 보존 기간

            * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.
            * 고객 동의 철회 시 지체없이 파기합니다.

            [개인정보 처리위탁 동의]

            - 수탁자 : 자사 제휴의 요청
            - 위탁 업무 내용
            └ 온라인, 모바일을 통한 고객 정보 수집 및 관리
            └ 고객정보 서버 운영 및 관리
            └ 서비스 신청 내역 관리를 위한 개인정보 전송
            └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리
            - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
            `);

        //신청현황 리스트
        getComment(`${eventSeq}`);

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
	    phoneInput02.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	    phoneInput02.addEventListener('input', function() {
	        if (!phoneInput02.value.startsWith('010')) {
	            phoneInput02.value = '010';
	        }
	    });
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
        const formOffset = $('.wrap_form_2').offset().top;

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