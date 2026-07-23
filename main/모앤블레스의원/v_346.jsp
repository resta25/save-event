<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
@import url('https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css');
* {font-family: 'Gmarket Sans';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {width: 85%; margin: 0 auto; padding: 5% 0;}
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

/* 룰렛 영역 */
.roulette {padding: 4.92% 5% 6.667%;}
.roulette image {width: 100%;}
.count_box {width: 70%; text-align: center; font-size: 2.8rem; color: #fff; position: absolute; top: 29%; left: 56.5%; transform: translateX(-50%);}
.count {color: #f0ff00; font-size: 4.5rem; font-family: 'Pretendard';; font-weight: 500;}

/* 시침, 초침 */
.container {position: relative;}
/* .clock{position: absolute; top: 51.5%; left: 13%; background-color: #f0ff00; transition : all 0.05s; transition-timing-function : cubic-bezier(0.1, 2.7, 0.58, 1); transform-origin : 100%;}
.hourHand{width: 1.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);}
.secondHand{left: 12.5%; width: 2.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);} */

.poster_01 > .img-area {width: 90%; margin: 0 auto 7.97%;}
.poster_01 > .full-area {width: 100%; margin: 0;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex; justify-content: space-between;}
.page .paging button {position: relative; width: 100%; height: 186px; margin: 0 auto; padding: 0% 0; width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button img {display: block; width: 100%; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;}
    .page .paging button a {display:block;}
    
    #page-1 .paging {padding-top: 3.334%; padding-bottom: 5%;}
    
    .form-box {margin-top: 2.5%;}
    .sub-txt {margin-bottom: 5%; font-size: 150%; text-align: center; word-break: keep-all; font-weight: 600; font-family: 'Pretendard'; letter-spacing: -0.2px;}
    #wrap .formContents {position: static;}
    .form .formContents .description {width:90%;margin:0 auto;text-align:center;box-sizing:border-box; font-family: 'Pretendard'; font-weight: 300;}
    .form .formContents .description * {font-family: 'Pretendard';}
    .form-box .form-box-top {padding:5% 5% 0;}
    .form-box .description {padding-bottom:2%;}
    .form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
    .form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;}
    .form .question_box .q_select label{width:100%; padding: 2.84% 0 2.84%; cursor:pointer; background: #ededed; border-radius: 1.93rem; font-size: 200%; font-weight: 600; font-family: 'Pretendard';;}
    .form .question_box .q_select label.on{background: #aaa;}
    .form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
    .form .question_box .q_select label img{width:95%;}
    
    .form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
    .form .next_btn_inQuestion img {width: 100%;}
    
    /* 이름, 전화번호 boz */
    .formGroup {}
    .form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
    .form .table_box input, .form .table_box select {background: #ededed; border-radius: 0.8rem; font-size: 2.8rem; border: none; background: transparent; width: 100%; padding: 1.5rem 0 1.5rem 2rem; font-family: 'Pretendard';; font-weight: 500;}
    .form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); text-align: left; font-family: 'Pretendard';; font-weight: 500;}
    
    .form .table_box.top {width:100%;}
    .form .table_box.middle {width: 100%;}
    .form .table_box.bottom {width:95%; 
    border-radius: 27px; border: none; font-size: 2.8rem;
    border: none; outline: none;
    width: 100%;
    padding: 1.5rem 0 1.5rem 2rem;
    font-family: 'Pretendard';
    font-weight: 500; background: #f4f4f4 url('//static.savemkt.com/event/v_${eventSeq}/icon_select_down.png') no-repeat right 25px center / 10px auto;}
    .form .table_box.txt_box {width:95%; height: 130px;}
    .form .table_box.bottom option {font-size: 2.8rem;}
    
    /* 개인정보 처리방침 */
    .agBox {padding: 5.649% 0 0; font-family: 'Gmarket Sans'; font-weight: 500; font-size: 1.4rem; line-height: 1; text-align: center;}
    .btn-agreement {flex-shrink: 0; text-align: center; font-size: 1.4rem; color: #000; font-family: 'Pretendard';}
    .btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'Gmarket Sans';}
    
    .form .submit {display: flex; align-items: center; justify-content: center; position: relative; width: 83.878%; height: 147px; margin: 3% auto; padding: 0% 0; cursor: pointer;}
    .form .submit input[type="image"] {width: 100% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

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
        position: fixed;
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
        width: 89.3%;
        margin: 0 auto;
    }
    [class^="popup-"] strong {
        color: #ff0000;
        font-weight: 700;
        font-family: 'Pretendard';;
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
        width: 193px;
        height: 78px;
        color: #fff;
        padding-top: 1%;
        font-size: 125%;
        line-height: 1;
        font-weight: 400;
        border-radius: 0.5rem;
        font-family: 'Pretendard';;
    }

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
        #page_landing_c .form .table_box input, #page_landing_c .form select.table_box {padding: 1.5rem 0 1rem 2rem; font-size: 1.4rem; border-radius: 9px;}
        #page_landing_c .form select.table_box option {font-size: 1.4rem;}
        #page_landing_c .form select.table_box  {padding: 1.45rem 0 1.45rem 2rem;}
        .count_box {top: 29%; left: 55.7%;}
        .count_box, .count {font-size: 2.2rem;}
        .page .paging button {height: 66px;}
        .form .submit {height: 66px; margin-bottom: 5%;}
        .agBox, .btn-agreement {font-size: 1rem;}

        [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}
    }
    @media screen and (max-width: 500px){
        .roulette {padding: 4% 9.5% 4.19%;}
        /* .poster_01 > .img-area {width: 67.03%; margin: 0 auto 4.15%;} */
        .poster_01 > .full-area {width: 100%; margin: 0 0 2.15%;}
        .count_box, .count {font-size: 1.4rem;}
        .form .description p,
        .form .description .ad_txt,
        .form .description span {font-size: 75%;}
        .form .question_box .q_select label {font-size: 1.45rem; border-radius: 1rem;}
        #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: unset;}
        .form-box .description {padding-bottom: 4%;}
        [class^="popup-"] .btn-box button {width: 105px; height: 43px;}

        .sub-txt {font-size: 80%;}
        /* #page_landing_c .form .table_box input, #page_landing_c .form select.table_box {padding: 1.5rem 0 1.5rem 2rem;} */
    }
    
</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/js/common.js"></script>
<body id="page_landing_c" class="loaded">
    <main>
        <div id="wrap"> 
            
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 
                    
                    <div class="formContents"> 
                        <section class="page" id="page-1">
                            <div class="container">
                                <div class="img-area roulette">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_00.png">
                                    <div class="count_box"><span class="count"></span></div>
                                </div>
                                <!-- 시침 -->
                                <div class="clock hourHand" style="transform: translate(-50%, -50%) rotate(106.5deg);"></div>
                                <!-- 초침 -->
                                <div class="clock secondHand" style="transform: translate(-50%, -50%) rotate(162deg);"></div>
                            </div>
                            <div class="poster_01">
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png"></div>
                                <div class="img-area full-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
                            </div>
            
                            <div class="agBox">
                                혜택 제공을 위한
                                <a href="javascript:void(0);" class="btn-agreement"><b>개인정보처리방침</b></a>에 동의해 주세요
                            </div>
                            <p class="paging poster_02">
                                <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png"></button>
                            </p>
                        </section>
        
                    <section class="page" id="page-2">
                        <div class="img-area poster_03"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                        <div class="img-area poster_04"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" onclick="pageSelFuc(1,$(this))" value="예">예</label>
                                <label><input type="radio" name="tadd1" value="아니오">아니오</label>
                            </div>
                        </div>
                        <div class="next_btn_inQuestion"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_03.png" onclick="pageSelFuc(1,$(this))"></div>
                    </section>

                    <section class="page" id="page-3">
                        <div class="img-area poster_09"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                        <div class="img-area poster_10" style="margin-top: 5%;"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png"></div>
                        <div class="form-box poster_11">
                            <p class="sub-txt">타인의 정보를 무단으로 도용할 시, 관련 법령에 따라 제재를 받을 수 있습니다.</p>
                            <div class="formGroup">
                                <div class="table_box top">
                                    <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                </div>
                                <div class="table_box middle">
                                    <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                                </div>
                                <select name="tadd2" class="table_box bottom" id="add2" required>
                                    <option value="">성별 선택</option>
                                    <option value="남성">남성</option>
                                    <option value="여성">여성</option>
                                </select>

                                <select name="tadd3" class="table_box bottom" id="add3" required>
                                    <option value="">진료과목 선택</option>
                                    <option value="고밀도 모발이식">고밀도 모발이식</option>
                                    <option value="디자인 헤어라인">디자인 헤어라인</option>
                                </select>

                                <select name="tadd4" class="table_box bottom" id="add4" required>
                                    <option value="">희망 상담시간</option>
                                    <option value="10시~12시">10시~12시</option>
                                    <option value="13시~15시">13시~15시</option>
                                    <option value="15~16시">15~16시</option>
                                </select>
                                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>
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
                            <img src="//static.savemkt.com/event/v_${eventSeq}/popup_txt.png" alt="">
                        </p>
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
                    <!-- <div class="img-area"><img id="noticeImg" src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>	 -->
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
    if (typeof window.thisAgreementWithText !== 'function') {
        window.thisAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();

        $('.overlay').hide();
        $('.popup-confirm').hide();

        history.scrollRestoration = 'manual';

        thisAgreementWithText(`개인정보처리방침

            모앤블레스의원 (이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

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
            모앤블레스의원에서 모발이식 등의 상담 활용 (전화, 문자)

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
            이름 : 염정호
            직위 : 마케팅책임자
            소속 : 네오먼스
            메일 : neomkt@neomance.co.kr

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

    let isAnimating = false; // 애니메이션 상태 플래그

    $('input[name="tadd1"]').on('change', function () {
        if ($(this).val() === "아니오") {
            if (isAnimating) return;
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
        document.getElementById('noticeImg').src = '//static.savemkt.com/event/v_${eventSeq}/notice.jpg';
        // page-1 자체
        gsap.set('#page-1', { display: 'block', opacity: 1 });

        // 내부 요소들 원위치
        gsap.set('#page-1 .poster_01, #page-1 .agBox, #page-1 .first', {
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

    // 첫번째 페이지
    function show1pg(){    
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .agBox', { y: +50, delay: 0.4, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .first', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
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
        animation02.to('#page-1 .agBox', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .first', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.set('.count_box', {
            top: isMobile ? '31%' : '33%'
        }, "<");
        animation02.to('.roulette', { paddingBottom: '5.19%', duration: 0 }, "<");
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
        animation02.from('#noticeImg', {opacity: 0, duration: 0.1});
        document.getElementById('noticeImg').src = '//static.savemkt.com/event/v_${eventSeq}/notice.jpg';
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
        animation03.from('#page-3 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_08', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
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
        if(!isAnimating){
            if($('input[name="tadd' + num + '"]').is(':checked')) {
                show3pg();
                // $('.section0' + num).fadeOut(function() {
                //     $('.section0' + (num + 1)).fadeIn();
                //     $(document).scrollTop(0);
                // });
            } else {
                alert('설문을 체크해 주세요.');
            }
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
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

        if($('input[name="name"]').val() != "" && $('input[name="phone"]').val().length == 11){
            let selectedRadio2 = procForm.querySelector(`select[name="tadd2"]`).value;
            if (!selectedRadio2) {
                alert("성별 항목을 입력해주세요.");
                return;
            } else {
                procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
            }
    
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