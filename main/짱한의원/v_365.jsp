<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli.css" type="text/css"/>
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Galmuri11/Galmuri11.css');
    html, body {font-size: 62.5%;}
    * {font-family: "Pretendard", sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd {padding: 4.6rem 4.9rem; border-radius: 2.5rem; background-color: transparent;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    #page_landing_c .wrap_form {background-color: #041f4c;}
    html{height: 100%;}
    main {position: relative;}
	.content {padding: 2rem 1rem;}
	.content + .content {border-top: 0.1rem solid #ddd;}
	.content * {padding: 0.8rem 1rem;}
    .wrap_form .agBox {margin: 1.7rem auto 0.7rem;}
    #page_landing_c .wrap_curd span {color: #fff; font-family: 'Elice DX Neolli';}
    .container {display: block; width: 100%; height: 100%;}
    #page_landing_c .wrap_curd label {display: block; font-size: 2.2rem;}

    .video-area {position: relative;}
    .video-area::after {content: '* 생성형 AI 모델 영상 사용'; font-size: 16px; color: #fff; position: absolute; bottom: 1%; right: 2%;}
    .video-area video {display: block; width: 100%; height: 100%;}
    .video-area .img-box {position: absolute; width: 75.0925926%; left: 5%; bottom: 5%;}

    /* 설문 영역 */
    .question_box {margin-top: 6.8rem;}
    .q_text.img-area {width: 66.759259%; margin: 0 auto;}
    #page_landing_c .question_box [class^="user_"] {display: flex; align-items: center; column-gap: 5.5rem;}
    #page_landing_c .question_box [class^="user_"] + [class^="user_"] {margin-top: 2.2rem;}
    #page_landing_c .question_box [class^="user_"] .legend {flex-shrink: 0; width: 12.5rem; font-size: 3.6rem; font-weight: 400;}
    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {flex-grow: 1; font-size: 4rem; font-weight: 700; margin: 0; padding: 3.5rem; width: 100%; text-align: center; line-height: 1; background-color: #fff; border-radius: 0; font-family: 'Elice DX Neolli';}
    .wrap_form div:not(.agBox) input[type="radio"] + span {font-size: 3.2rem !important; font-weight: 500; color: #000; padding-left: 5.6rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:before {width: 4rem; height: 4rem; border-width: 0.4rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:after {left: 1.1rem; width: 3rem; height: 1.5rem; margin-top: -0.5rem; border-width: 0 0 0.4rem 0.4rem;}

    .count-area {position: relative;}
    .count-area .count {position: absolute; top: 25%; font-size: 5.4rem; color: #fff000; font-family: 'noto sans kr'; font-weight: 700; right: 36%; letter-spacing: -0.04em; width: 10.5rem; text-align: center; line-height: 1;}

    /* .modal2 .modal-content p, .modal3 .modal-content p, .modal4 .modal-content p {height: auto;} */
    .q_select {display: flex; align-items: center; flex-wrap: wrap; gap: 1.8rem; margin-top: 4.9rem;}
    #page_landing_c .wrap_curd .q_select label {display: block; width: calc((100% - 6rem) / 4); padding: 2rem 0; text-align: center; font-size: 4.1rem; font-family: 'Pretendard'; color: #000; letter-spacing: -0.2px; font-weight: 500; background-color: #b8b8b8; border-radius: 1rem;}
    #page_landing_c .wrap_curd .q_select label.active {background-color: #ffe400;}
    
    .wrap_form input[type="checkbox"]:checked + span:after, .wrap_form input[type="radio"]:checked + span:after {border-color: #fff;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #1b0008; padding: 0 4.5rem 4rem;}
    .subscribe_bg {background: #fff; padding: 2.75% 3.5%; border-radius: 20px}
    .subscribe_container .title {display: flex; align-items: center; justify-content: center; padding: 3.5rem 0 0; column-gap: 1.2rem; font-size: 5.5rem; text-align: center; color: #fff; font-weight: 700; margin-bottom: 2.8rem; font-family: 'Gmarket Sans';}
    .subscribe {height: 185px; overflow: hidden; background-color: #fff; padding: 0;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 0;}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 3); text-align: center; font-weight: 600;}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }

    #page_landing_c main {display: block; max-width: 1080px; background-color: #fff;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}


    #page_landing_c .wrap_curd .submit {margin: 3% auto; padding: 4rem; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center top / 100% 100%;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 70%;
        margin: 0 auto 0;
        border-radius: 0;
    }

    .wrap_form .description p, .wrap_form .description .ad_txt {color: #fff;}
    .description + .img-area {width: 90%; margin: 3rem auto 0;}

    .db_btn, .submit input[type="image"] {width: 50%; animation: pulsating 0.8s linear infinite;
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
    .subscribe {padding: 3% 2%; height: 80px;}
    .subscribe .content {padding: 0.25rem 0.7rem;}
    /* .subscribe .content > div {margin-right: 0; font-size: 0.8rem;} */
    .subscribe_container {padding: 0 1.5rem 3rem 1.5rem;}
    .subscribe .content .name {width: 10%;}
    .video-area::after {font-size: 10px;}

    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {font-size: 3rem;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
     .subscribe_container .title {width: 70%; margin: 0 auto 1.5rem; padding: 2rem 0 0; font-size: 2.8rem;}
}
@media screen and (max-width: 640px){
}
@media screen and (max-width: 480px){
    html, body {font-size: 1.7vw;}

    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {padding: 2rem;}
    #page_landing_c .wrap_curd label {font-size: 1.5rem;}

    #page_landing_c .wrap_curd {padding: 2.6rem 2.9rem;}
    #page_landing_c .wrap_curd .submit input[type="image"] {width: 70%;}

    .q_text.img-area {width: 78%;}

    .count-area .count {font-size: 3rem; right: 34.5%; width: 7rem;}
    .question_box {margin-top: 4rem;}
    #page_landing_c .question_box [class^="user_"] {column-gap: 2rem;}
    #page_landing_c .question_box [class^="user_"] input {font-size: 3rem;}
    #page_landing_c .question_box [class^="user_"] .legend {width: 7.5rem; font-size: 2.7rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span {font-size: 3rem !important; padding-left: 5rem;} 
    .wrap_form div:not(.agBox) input[type="radio"] + span:after {left: 0.6rem; width: 2.5rem; height: 1.3rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:before {width: 3rem; height: 3rem;}
    .wrap_form .description p, .wrap_form .description span, .wrap_form .description .ad_txt {font-size: 1.4rem !important;}

    .q_select {column-gap: 1rem; margin-top: 2.9rem;}
    #page_landing_c .wrap_curd .q_select label {font-size: 2rem; padding: 1rem 0;}

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
                                <!-- <div class="q_select">
                                    <label><input type="radio" name="tadd1" value="뱃살">뱃살</label>
                                    <label><input type="radio" name="tadd1" value="팔뚝살">팔뚝살</label>
                                    <label><input type="radio" name="tadd1" value="허벅지살">허벅지살</label>
                                    <label><input type="radio" name="tadd1" value="기타">기타</label>
                                </div> -->
                                <div class="question_box">
                                    <div class="user_name">
                                        <input type="text" name="name" id="name" class="inp" required placeholder="이름" autocomplete="off">
                                    </div>
                                    <div class="user_age">
                                        <input type="tel" name="age" id="age" class="inp" required=""  placeholder="나이" autocomplete="off" maxlength="2" placeholder="">
                                    </div>
                                    <div class="user_phone">
                                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                    </div>
                                    <!-- <div class="user_text">
                                        <span class="legend">문의</span>
                                        <input type="text" name="tadd2" id="tadd2" class="inp" required placeholder="문의사항을 입력해 주세요.(선택사항)">
                                    </div> -->
                                </div>   
                            </div>

                        </div>

                    </div>
                    
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>혜택 제공을 위한 <a href="#" class="btn-agreement">개인정보처리방침</a>에 동의해 주세요</span></label>
                    </div>

                    <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png" /></div>	
                    <div class="description">
                        <p id="event-period"></p>
                        <span class="target">대상 : ${resVo.target}</span>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
        
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="container">
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
        </div>
            
        <div class="subscribe_container">
            <div class="title img-area">
                <!-- <div class="img-area icon-img"><img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.gif"></div>
                <div class="img-area text-img"><img src="//static.savemkt.com/event/v_${eventSeq}/sub_title.png"></div> -->
                실시간 신청현황
            </div>
            <div class="subscribe_bg">
                <div class="subscribe" data-limit="10"></div>
            </div>
        </div>

        <div class="img-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg">
        </div>

        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                </p>
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

    // const fixedBar = document.querySelector('.fixed');
    // const targetForm = document.querySelectorAll('.wrap_form'); // 두 번째 폼

    // const observer = new IntersectionObserver(
    //     ([entry]) => {
    //         const $wrap = $('main');
    //         if (entry.isIntersecting) {
    //             fixedBar.style.display = 'none';

    //             $wrap.css('padding-bottom', 0);

    //         } else {
    //             fixedBar.style.display = 'block';
    //         }
    //     },
    //     {
    //         threshold: 0
    //     }
    // );

    // observer.observe(targetForm);

    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();

        //신청현황 리스트
        getComment(`${eventSeq}`);
        
        thisAgreementWithText(`개인정보 처리방침

            짱한의원(이하 '본원'은) 귀하의 개인정보보호를 매우 중요시하며, 「개인정보 보호법」을 준수하고 있습니다. 본원은 개인정보 처리방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드립니다.

            1. 수집하는 개인정보의 항목
            2. 개인정보의 수집·이용 목적
            3. 개인정보의 보유 및 이용기간
            4. 개인정보의 파기절차 및 방법
            5. 개인정보 처리의 위탁
            6. 이용자 및 법정대리인의 권리와 그 행사방법
            7. 개인정보 자동수집장치의 설치, 운영 및 그 거부에 관한 사항
            8. 동의철회
            9. 만 14세 미만 아동의 개인정보 관리
            10. 개인정보 관리책임자
            11. 개인정보침해 관련 상담 및 신고
            12. 부칙

            ■ 수집하는 개인정보의 항목
            본원은 홈페이지 이용, 상담, 이벤트(상담 신청) 참여 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.

            ▶ 홈페이지 이용 시 ◀
            이름, 전화번호, 이메일주소, 접속로그, 접속IP, 쿠키

            ▶ 이벤트(상담 신청) 참여 시 ◀
            이름, 연령대, 전화번호

            ▶ 개인정보 수집 방법 ◀
            홈페이지, 광고 랜딩페이지(이벤트 참여, 상담 신청)

            ■ 개인정보의 수집·이용 목적
            본원은 수집한 개인정보를 다음의 목적을 위해 활용합니다.
            ① 서비스 제공에 관한 계약 이행 및 서비스 제공
            ② 이용자 관리
            본인확인, 개인 식별, 부정 이용 방지와 비인가 사용 방지, 불만 처리 등 민원처리, 고지사항 전달
            ③ 마케팅 및 광고에 활용
            신규서비스 개발 및 특화, 이벤트 등 광고성 정보 전달, 접속 빈도 파악 또는 서비스 이용에 대한 통계
            ④ 이벤트(상담 신청) 참여 시
            본원에서 상담활용(전화, 문자)

            ■ 개인정보의 보유 및 이용기간
            원칙적으로, 개인정보 수집 및 이용목적이 달성되거나 이벤트 참여 시 이벤트 페이지에 별도 명시한 수집 동의를 받은 날로부터 동의받은 기간(수집일로부터 3년)이 만료된 후에는 해당 정보를 지체 없이 파기합니다. 고객이 동의를 철회하는 경우에도 지체 없이 파기합니다. 단, 관계 법령에 따라 보존할 필요가 있는 경우에는 해당 법령에서 정한 기간 동안 보존합니다.

            ■ 개인정보의 파기 절차 및 방법
            본원은 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.

            ① 파기절차
            이용자가 상담 신청 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져 (종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라 (보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.

            ② 파기방법
            전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
            종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.

            ■ 개인정보처리의 제3자 제공 및 위탁에 관한 사항
            본원은 서비스 향상을 위하여 아래와 같이 개인정보 처리업무를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.

            본원의 개인정보 처리업무 수탁업체 및 위탁업무 내용은 아래와 같습니다.

            - 수탁업체: (주)비올린 / 진기남 / 010-3143-3437 / jinginam12@beolin.co.kr
            - 위탁업무 내용: 광고를 통한 개인정보 처리 및 보관, 서버 관리
            - 개인정보의 처리 및 보유기간: 회원탈퇴 또는 위탁계약 종료 시까지

            ■ 이용자 및 법정대리인의 권리와 그 행사방법
            이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며, 수집·이용 동의 철회(삭제)를 요청할 수 있습니다. 개인정보의 열람, 정정, 삭제, 처리정지 요구는 개인정보 관리책임자에게 서면, 전화 또는 이메일로 연락 주시면 지체 없이 조치하겠습니다.

            귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.

            ■ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항
            본원은 이용자의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)' 등을 운용합니다.

            쿠키란 본원의 웹사이트를 운영하는 데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 본원은 다음과 같은 목적을 위해 쿠키를 사용합니다.

            ① 쿠키 등 사용목적
            접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야 파악, 각종 이벤트 참여 정도 및 방문 횟수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공

            ② 쿠키 설정 거부 방법
            이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 이용자가 사용하시는 웹브라우저의 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.

            설정방법 예시(Chrome의 경우): 웹브라우저 우측 상단 설정 > 개인 정보 보호 및 보안 > 쿠키 및 기타 사이트 데이터
            단, 이용자가 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.

            ■ 동의철회
            이용자는 개인정보의 수집·이용에 대해 동의하신 내용을 언제든지 철회할 수 있습니다. 동의철회는 개인정보 관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 이용자의 개인정보를 파기하는 등 필요한 조치를 취하겠습니다.

            ■ 만 14세 미만 아동의 개인정보 관리
            본원은 만 14세 미만 아동의 개인정보를 수집하지 않는 것을 원칙으로 합니다. 부득이하게 만 14세 미만의 아동으로부터 개인정보를 수집하는 경우에는 법정대리인으로부터 동의를 얻습니다. 이를 위해 본원은 그 아동에게 법정대리인의 동의를 얻기 위하여 필요한 법정대리인의 성명 등 최소한의 정보를 요구할 수 있습니다. 법정대리인은 그 아동이 제공한 개인정보에 대한 열람 또는 오류의 정정을 요구할 수 있으며, 동의를 철회할 수 있습니다.

            ■ 개인정보 관리책임자
            고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 본원은 개인정보 관리책임자를 두고 있습니다. 고객의 개인정보와 관련한 문의사항이 있으시면 아래의 개인정보 관리책임자에게 연락 주시기 바랍니다.

            ① 개인정보 관리책임자
            성명 : 손승화
            소속 : 짱한의원
            연락처 : 02-515-1079

            ■ 개인정보침해 관련 상담 및 신고
            개인정보침해에 관한 상담이나 신고가 필요한 경우에는 아래 기관에 문의하실 수 있습니다.

            개인정보침해 신고센터 : (국번없이) 118 / privacy.kisa.or.kr
            개인정보 분쟁조정위원회 : 1833-6972 / www.kopico.go.kr
            대검찰청 사이버수사과 : (국번없이) 1301 / www.spo.go.kr
            경찰청 사이버수사국 : (국번없이) 182 / ecrm.police.go.kr

            ■ 부칙
            법령, 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 변경사항 시행일의 7일 전부터 웹사이트의 공지사항을 통하여 고지합니다.

            - 시행일자 : 2025년 11월 13일
            `);

        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

	function returnComment(resultData){
		$('.subscribe').each(function(idx,obj) {
            resultData.forEach(function(item) {
				var html  = '<div class="content" data-id="'+ item.seq +'">';
					html += '   <div class="date">'+ item.regDate +'</div>';
					html += '   <div class="name">'+ item.name +'</div>';
					html += '   <div class="phone">'+ item.phone +'</div>';
					html += '</div>';
				$(obj).append(html);
			});
            
		});

        $('.subscribe_container').toggle(resultData.length >= 10);
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);
    
    // $(document).on("change", "input[name^='tadd']", function() {
    //     const name = $(this).attr("name");

    //     // 같은 그룹의 모든 label에서 active 제거
    //     $("input[name='" + name + "']").each(function() {
    //         $(this).closest("label").removeClass("active");
    //     });

    //     // 현재 선택된 라벨의 label에 active 추가
    //     $(this).closest("label").addClass("active");

    // });

    $('input[name="tadd1"]').on('change', function () {
        const $tadd1Inputs = $('input[name="tadd1"]');

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

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
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
        // let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

		//  let selectedRadio2 = procForm.querySelector('input[name="tadd2"]').value;
        // procForm.querySelector("input[name='add2']").value = selectedRadio2;

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		// procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		// procForm.querySelector("input[name='add3']").value = selectedRadio3;
		
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>