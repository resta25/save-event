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
.form .video-area::after {position: absolute; bottom: 12px; right: 12px; content: '실제 시술 영상을 생성형 AI로 변환한 콘텐츠입니다.'; color: #858585; font-size: 10px; }
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
    .form .question_box .q_select label{width:100%; padding: 3% 0 2.5%; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 200%; font-weight: 500; font-family: 'GmarketSans';}
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

    .sub-txt {text-align: center;}
    
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
        .roulette {padding: 4% 7.5% 4.19%;}
        .poster_01 > .img-area {width: 81.03%; margin: 0 auto 4.15%;}
        .count_box, .count {font-size: 1.25rem;}
        .sub-txt {font-size: 80%;}
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
        <div id="wrap" class="full-height"> 
            <div class="container">		
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
                <audio id="location" playsinline="" src="//static.resta.co.kr/event/v_${eventSeq}/radio_01.mp3" type="audio/mp3"></audio> 
            </div>

            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8">

                <div class="container">
                    <div class="icon_box">
                        <div class="img-area icon"><img src="//static.resta.co.kr/event/v_${eventSeq}/icon_01.gif"></div>
                        <!-- <div class="img-area shadow"><img src="//static.resta.co.kr/event/v_${eventSeq}/shadow_01.png"></div> -->
                    </div>
                </div>
                <div class="formContents"> 
                    <section class="page" id="page-1">
                        <div class="question_box">
                            <div class="question">
                                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="혜택 신청"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                                <label><input type="radio" name="tadd1" value="지원 받기"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                                <label><input type="radio" name="tadd1" value="비용 문의"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                            </div>
                        </div>
                        <div class="popup_box">
                            <!-- <div class="popup_bar"></div> -->
                            <div class="inner">
                                <div class="popup_title">
                                    안내를 위한 <span class="bold">개인정보 처리 방침</span>에<br>동의해 주세요.
                                </div>
                                <a href="javascript:void(0)" class="close_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/close.png"></a>
                                <div class="agBox">
                                    <input name="agBox" type="checkbox" checked>
                                    개인정보 처리 방침 <a href="#" class="agree_txt">[자세히 보기]</a>
                                </div>
                                <input type="hidden" name="agBox" value="Y">
                                <div class="btn_box">
                                    <a href="javascript:void(0)" class="btn_disagree"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></a>
                                    <a href="javascript:void(0)" class="btn_agree"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></a>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- <section class="page" id="page-2">
                        <div class="question_box">
                            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                            <div class="q_select">
                            <label><input type="radio" name="tadd2" value="서울"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                            <label><input type="radio" name="tadd2" value="경기"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                            <label><input type="radio" name="tadd2" value="인천"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                            </div>
                        </div>              
                    </section> -->

                    <!-- <section class="page" id="page-3">
                        <div class="question_box">
                            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                            <div class="q_select">
                            <label><input type="radio" name="add3" value="3개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                            <label><input type="radio" name="add3" value="4개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png"></label>
                            <label><input type="radio" name="add3" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_09.png"></label>
                            </div>
                        </div>              
                    </section> -->

                    <section class="page" id="page-2">
                        <div class="question_box">
                            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                        </div>
                        <div class="form-group">
                            <div class="item">
                                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                            </div>
                            <div class="item">
                                <input type="tel" name="phone" id="phone" value="" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                            </div>
                        </div>
                        
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png"></div>
                
                        <div class="description">
                            <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 : ${resVo.target}</span>
                        </div>
                    </section>
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
                <!-------- 푸터 없는 랜딩입니다. 복사시 주의 !!!! -------->
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
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
    var agree = document.querySelectorAll(".agBox .agree_txt");
    var modal2 = document.getElementById("modal2");
	var close2 = document.getElementById("close");

    if (typeof window.thisAgreementWithText !== 'function') {
        window.thisAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        
        thisAgreementWithText(`개인정보처리방침
            이심당치과의원 (이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

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
            이심당치과의원에서 임플란트, 라미네이트등의 상담 활용 (전화, 문자)

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

            - 위탁업체: ㈜세이브마케팅 / 010-4383-1224 / savemarketing1@gmail.com
            - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리
            - 개인정보의 처리 및 보유기간: 회원탈퇴 혹은 위탁계약 종료 시


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
            이름 : 서재현
            직위 : 대표원장
            소속 : 이심당치과의원 대구점
            메일 : isimdang@gmail.com

            ■ 개인정보 처리방침의 변경
            이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
            - 시행일자: 2011년 9월 30일

            ■ 권익침해 구제방법
            고객은 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
            - 개인정보침해신고센터 / privacy.kisa.or.kr / 국번없이 118
            - 대검찰청 사이버수사과 / www.spo.go.kr / 국번없이 1301
            - 경찰청 사이버안전국 / police.go.kr / 국번없이 182
            `);
    });

    agree.forEach(ag => ag.onclick = function () {
	    modal2.style.display = "block";
	})

    close2.onclick = function () {
	    modal2.style.display = "none";
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
			, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>