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
    /* #page_landing_c .wrap_form {border: 0; padding: 4.3rem 4rem; box-sizing: border-box; background-color: #4a0017;} */
    html{height: 100%;}
    main {position: relative;}
	.content {padding: 2rem 1rem;}
	.content + .content {border-top: 0.1rem solid #ddd;}
	.content * {padding: 0.8rem 1rem;}
    .wrap_form .agBox {margin: 1.7rem auto 0.7rem;}
    .container {display: block; width: 100%; height: 100%;}
    #page_landing_c .wrap_curd label {display: block; font-size: 2.2rem;}

    .video-area {position: relative;}
    .video-area video {display: block; width: 100%; height: 100%;}
    .video-area .img-box {position: absolute; width: 75.0925926%; left: 5%; bottom: 5%;}

    /* 설문 영역 */
    .question_box {margin-top: 6.8rem;}
    .q_text.img-area {width: 66.759259%; margin: 0 auto;}
    #page_landing_c .question_box [class^="user_"] {display: flex; align-items: center; column-gap: 5.5rem;}
    #page_landing_c .question_box [class^="user_"] + [class^="user_"] {margin-top: 2.2rem;}
    #page_landing_c .question_box [class^="user_"] .legend {flex-shrink: 0; width: 12.5rem; font-size: 3.6rem; font-weight: 400;}
    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {flex-grow: 1; border: 2px solid #001e7e;font-size: 4rem; font-weight: 700; margin: 0; padding: 3.5rem; width: 100%; text-align: center; line-height: 1; border-radius: 0.5rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span {font-size: 3.2rem !important; font-weight: 500; color: #000; padding-left: 5.6rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:before {width: 4rem; height: 4rem; border-width: 0.4rem;}
    .wrap_form div:not(.agBox) input[type="radio"] + span:after {left: 1.1rem; width: 3rem; height: 1.5rem; margin-top: -0.5rem; border-width: 0 0 0.4rem 0.4rem;}

    .count-area {position: relative;}
    .count-area .count {position: absolute; top: 25%; font-size: 5.4rem; color: #fff000; font-family: 'noto sans kr'; font-weight: 700; right: 36%; letter-spacing: -0.04em; width: 10.5rem; text-align: center; line-height: 1;}

    /* .modal2 .modal-content p, .modal3 .modal-content p, .modal4 .modal-content p {height: auto;} */
    .q_select {display: flex; align-items: center; flex-wrap: wrap; gap: 1.8rem; margin-top: 4.9rem;}
    #page_landing_c .wrap_curd .q_select label {display: block; width: calc((100% - 6rem) / 4); padding: 2rem 0; text-align: center; font-size: 4.1rem; font-family: 'Pretendard'; color: #000; letter-spacing: -0.2px; font-weight: 500; background-color: #b8b8b8; border-radius: 1rem;}
    #page_landing_c .wrap_curd .q_select label.active {background-color: #ffe400;}
    
    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #1b0008; padding: 0 4.5rem 4rem;}
    .subscribe_bg {background: #f8f8f8; padding: 2.75% 3.5%; border-radius: 20px}
    .subscribe_container .title {display: flex; align-items: center; justify-content: center; padding: 3.5rem 0 0; column-gap: 1.2rem; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'Gmarket Sans';}
    .subscribe {height: 185px; overflow: hidden; background-color: #f8f8f8; padding: 0;}
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

    #page_landing_c .question_box [class^="user_"]:not(.user_gender) input {font-size: 3rem;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
     .subscribe_container .title {width: 70%; margin: 0 auto 1.5rem; padding: 2rem 0 0; font-size: 1.8rem;}
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
        <div class="video-area">
            <video id="location" playsinline muted loop autoplay src="//static.savemkt.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
            <div class="img-box">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png"></div>
            </div>
        </div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
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
                                    <label><input type="radio" name="tadd1" value="뱃살">뱃살</label>
                                    <label><input type="radio" name="tadd1" value="팔뚝살">팔뚝살</label>
                                    <label><input type="radio" name="tadd1" value="허벅지살">허벅지살</label>
                                    <label><input type="radio" name="tadd1" value="기타">기타</label>
                                </div>
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
                        <label><input name="agBox" type="checkbox">혜택 제공을 위한 <a href="#" class="btn-agreement">개인정보처리방침</a>에 동의해 주세요</label>
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
        
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg"></div>
        <div class="container">
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
        </div>
            
        <div class="subscribe_container">
            <div class="title img-area">
                <div class="img-area icon-img"><img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.gif"></div>
                <div class="img-area text-img"><img src="//static.savemkt.com/event/v_${eventSeq}/sub_title.png"></div>
            </div>
            <div class="subscribe_bg">
                <div class="subscribe" data-limit="10"></div>
            </div>
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
        
        thisAgreementWithText(`개인정보처리방침

            예쁨주의상상의원(이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

            ■ 수집하는 개인정보 항목
            1. “병원”은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.
            - 개인회원: 이름, 생년월일, 성별, 주소, 연령, 연락처, 휴대전화 정보, 이메일주소
            - 14세미만 개인회원: 법정 대리인 정보(주민등록번호 또는 아이핀 번호, 휴대전화 정보)
            - 기타정보: 내원정보, 처방정보, 진료정보, 카드사명, 카드번호 등 카드결제 승인정보
            - 이벤트 참여시 : 이름, 나이, 연락처, 신청항목

            2. 개인정보 수집 방법
            - 홈페이지, 서면양식, 팩스, 전화, 게시판, 이메일, 이벤트 참여

            3. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
            - IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록

            ■ 개인정보의 수집 및 이용목적
            “병원”에서는 개인정보를 다음의 목적이외의 용도로는 이용하지 않으며 이용 목적이 변경될 경우에는 동의를 받아 처리하겠습니다.

            1. 서비스 제공
            - 진료정보: 진단 및 치료를 위한 진료서비스와 청구, 수납 및 환급 등의 원무 서비스 제공
            - 예약정보: 진료 예약 및 예약조회 등 기타 서비스 이용에 따른 본인 확인 절차에 이용
            - 기타: 문자 및 SNS를 통한 병원소식, 질병정보 등의 안내, 설문조사

            2. 회원관리
            서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용방지, 만 14세미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원 관리를 위한 각종 정보 제공, 소식 전달, 설문조사

            3. 신규 서비스 개발 및 마케팅, 광고에의 활용
            - 신규 서비스 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공
            - 이벤트 프로모션에 참여하거나 선택형 서비스를 이용하려는 경우 회원의 별도 동의 하에 아래의 정보를 수집할 수 있습니다.
            • 휴대전화번호, 전자우편 주소, 주소, 성별, 지역
            • 회원의 휴대전화기 주소록 내에 저장된 제3자의 휴대전화번호 (소셜 커뮤니티 기능이 탑재되어 있는 서비스에 한하며, 이 경우에도 제3자의 휴대전화번호를 저장하지 않음)
            • 신용카드 번호, 휴대전화번호, 상품권 결제 제휴사의 ID 및 비밀번호 (유료 결제 서비스를 사용하는 회원에 한함)

            4. 이벤트 참여시
            예쁨주의상상의원에서 다이어트 시술 등의 상담 활용 (전화, 문자)

            ■ 개인정보의 처리 및 보유기간
            서비스 이용자가 “병원”의 회원으로서 서비스를 계속 이용하는 동안 이용자의 개인정보를 계속 보유하며 서비스의 제공 등을 위해 이용합니다. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성 또는 이벤트 참여시 이벤트 페이지에 별도 명시한 수집동의 받은 날로부터 동의 받은 기간이 만료되거나 이용자가 직접 삭제, 수정 또는 회원 탈퇴한 경우에 재생할 수 없는 방법으로 파기합니다.
            단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
            상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 병원은 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 “병원”은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

            - 웹사이트 방문기록
            • 보존 이유 : 통신비밀보호법
            • 보존 기간 : 3개월
            - 본인확인에 관한 기록
            • 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률
            • 보존 기간 : 6개월
            - 소비자의 불만 또는 분쟁처리에 관한 기록
            • 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
            • 보존 기간 : 3년
            - 신용정보의 수집/처리 및 이용 등에 관한 기록
            • 보존 이유 : 신용정보의 이용 및 보호에 관한 법률
            • 보존 기간 : 3년


            ■ 개인정보처리의 제3자 제공 및 위탁에 관한 사항
            “병원”은 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. “병원”의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다

            - 위탁업체: ㈜ 진이어스
            - 위탁업무 내용: 홈페이지 운영 및 관리, 이벤트 등 광고성 정보 전달, 전산관리 위탁 서비스
            - 개인정보의 처리 및 보유기간: 회원탈퇴 혹은 위탁계약 종료 시

            - 위탁업체: ㈜세이브마케팅 / 010-4383-1224 / savemarketing1@gmail.com
            - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리

            ■ 정보주체의 권리의무 및 그 행사방법
            1. 개인정보 열람 요구: “병원”에서 보유하고 있는 개인정보파일은 개인정보보호법 제35조(개인정보의 열람)에 따라 열람을 요구할 수 있습니다. 다만 개인정보 열람 요구는 개인정보보호법 제35조 제5항에 의하여 다음과 같이 제한될 수 있습니다.
            - 법률에 따라 열람이 금지되거나 제한되는 경우
            - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우

            2. 개인정보 정정•삭제 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제36조(개인정보의 정정, 삭제)에 따라 “병원”에 개인정보의 정정, 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.

            3. 개인정보 처리정지 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제37조(개인정보의 처리정지 등)에 따라 병원에 개인정보의 처리정지를 요구할 수 있습니다. 또한 만 14세 미만 아동의 법정대리인은 병원에 그 아동의 개인정보의 열람, 정정, 삭제, 처리정지 요구를 할 수 있습니다. 다만, 개인정보 처리정지 요구시 「개인정보보호법」 제37조 제2항에 의하여 처리정지 요구가 거절될 수 있습니다.
            - 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우
            - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우
            - 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우

            ■ 개인정보의 파기절차 및 파기방법
            “병원”은 원칙적으로 개인정보의 보유기간이 경과했거나 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

            1. 파기절차
            이용자가 입력한 정보는 보유기간이 경과했거나 처리목적이 달성 후 내부 방침 및 관련 법령에 따라 파기합니다. (개인정보처리 및 보유기간 참조)

            2. 파기기한
            이용자의 개인정보는 개인정보의 보유기간이 경과된 경우 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.

            3. 파기방법
            “병원”에서 처리하는 개인정보를 파기할 때에는 다음의 방법으로 파기 합니다.
            - 전자적 파일 형태인 경우: 복원이 불가능한 방법으로 영구삭제
            - 전자적 파일의 형태 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우: 파쇄 또는 소각

            ■ 개인정보의 안전성 확보 조치
            “병원”은 (개인정보보호법) 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.

            1. 내부관리계획의 수립 및 시행
            “병원”은 (개인정보보호법) 제29조에 따라 내부관리 계획을 수립 및 시행합니다.

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
            병원은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.

            8. 비인가자에 대한 출입 통제
            개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.

            ■ 개인정보 보호책임자
            “병원”은 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
            이름 : 문경환
            직위 : 본부장
            소속 : ㈜ 진이어스
            전화 : 1666-1177
            메일 : hjhwpa@geni-us.co.kr

            ■ 개인정보 처리방침의 변경
            이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
            - 시행일자: 2011년 9월 30일

            ■ 권익침해 구제방법
            고객은 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
            - 개인정보침해신고센터 / privacy.kisa.or.kr / 국번없이 118
            - 대검찰청 사이버수사과 / www.spo.go.kr / 국번없이 1301
            - 경찰청 사이버안전국 / police.go.kr / 국번없이 182
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
        let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

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
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>