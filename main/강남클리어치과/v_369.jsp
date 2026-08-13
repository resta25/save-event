<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css" type="text/css"/>
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css');

    html, body {font-size: clamp(8px, calc(100vw / 108), 10px);}
    * {box-sizing: border-box; font-family: 'Pretendard', sans-serif;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c main {display: block; max-width: 1080px; margin: 0 auto; padding: 0; background: #323232;}
    #page_landing_c .wrap_form {border: none; padding: 0; background-color: transparent;}
    #page_landing_c .wrap_curd {}
    #page_landing_c .wrap_curd * {font-family: inherit;}

    .formContents {padding: 6.8rem 3rem; background-color: #323232;}
    .form_inner {padding: 8.3rem 5rem; background-color: #fff; border-radius: 2rem;}
    .img-area {display: block; position: relative;}
    .img-area img {display: block; width: 100%;}
    .title {width: 83.695652%; margin: 0 auto 5.9rem;}
    .title .img-area {width: 100%; margin: 0 auto;}
    .table .img-area {}
    .formGroup {margin-top: 11.5rem;}
    .formGroup > .q_text {width: 78.152174%; margin: 0 auto 6.4rem;}
    .question_box {padding: 0;}
    .q_select {display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem 1.5rem; padding: 4.2rem 8.8rem;}
    .q_select:last-child {display: flex; justify-content: space-between; padding: 4.2rem 6.3rem;}
    #page_landing_c .wrap_curd .q_select label {display: flex; align-items: center; cursor: pointer;}
    #page_landing_c .wrap_curd .q_select label span {padding-left: 4.5rem; color: #000; font-size: 4.2rem; font-weight: 700; line-height: 1.2; font-family: 'Pretendard';}
    #page_landing_c .wrap_curd .q_select input[type="checkbox"] + span:before,
    #page_landing_c .wrap_curd .q_select input[type="radio"] + span:before {width: 2.7rem; height: 2.7rem; border-color: #000; border-width: 2px; border-radius: 0.5rem;}
    #page_landing_c .wrap_curd .q_select input[type="checkbox"]:checked + span:after,
    #page_landing_c .wrap_curd .q_select input[type="radio"]:checked + span:after {border-color: #000; width: 3rem; height: 1.5rem; border-width: 0 0 0.4rem 0.4rem;}
    #page_landing_c .wrap_curd .q_select label.active {color: #111; font-weight: 700;}
    .q_text + .q_select {margin-bottom: 2rem;}
    .user-box {margin-top: 2rem;}
    #page_landing_c .wrap_curd .user-box input.inp {width: 100%; margin: 0; padding: 3.2rem 1.6rem 1.2rem; font-size: 5.3rem !important; border: 3px solid #f19a68; border-radius: 2.7rem; color: #222; font-size: 1.8rem; text-align: center; background: #fff; font-family: 'Gmarket Sans' !important;}
    .user-box input.inp + input.inp {margin-top: 1.6rem !important;}
    .user-box input.inp:focus {border-color: #ed561b; box-shadow: 0 0 0 .3rem rgba(237,86,27,.16); outline: 0;}
    #page_landing_c .wrap_curd .agBox {width: 100%; margin: 1.3rem 0; color: #111; text-align: center;}
    #page_landing_c .wrap_curd .agBox label {display: inline; font-size: inherit; font-size: 2.5rem; cursor: pointer;}
    #page_landing_c .wrap_curd .agBox label span {padding-left: 3.2rem; font-size: 2.5rem;}
    .wrap_form input[type="checkbox"] + span:before, .wrap_form input[type="radio"] + span:before {width: 2rem; height: 2rem; border-color: #333;}
    #page_landing_c .wrap_curd .agBox a {color: #333; text-decoration: underline; font-size: 2.5rem;}
    #page_landing_c .wrap_curd .submit {display: flex; align-items: center; justify-content: center; width: 100%; height: 17rem; margin: 0; padding: 0; text-align: center; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%;}
    #page_landing_c .wrap_curd .submit input[type="image"] {width: 66.413043%; height: auto; border-radius: 0; margin: 0; padding: 0; border: none; outline: none; background-color: transparent; animation: pulsating 1.25s ease-in-out infinite; background-color: transparent;}
    @keyframes pulsating {50% {transform: scale(.96);}}
    #page_landing_c .description {width: 100%; margin-top: 2.2rem; color: #777; font-size: 1.2rem; line-height: 1.6; text-align: center;}
    #page_landing_c .description p, #page_landing_c .description span, #page_landing_c .description .ad_txt {padding: 0; color: inherit; font-size: inherit; font-weight: 400;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 0rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 4.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'GangwonEducationTteontteon';}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 53rem; overflow: hidden; background-color: #f8f8f8; padding: 0;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 2.1rem; width: calc(100% / 4);}
    .subscribe .content > div.name {width: 15%;}
    .subscribe .content > div.phone {width: 33%;;}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    .notice-area {background-color: #181818; text-align: center; padding: 1.6rem;}
    .notice-area * {font-size: 1.6rem; font-family: 'Pretendard'; color: #5a5a5a;}
    /* .footer {padding: 2.5rem 2rem; color: #777; font-size: .9rem; line-height: 1.55; text-align: center; background: #171717;} */

    .overlay {position: fixed; z-index: 900; top: 0; left: 0; display: none; width: 100%; height: 100%; background: rgba(0,0,0,.65);}
    .popup-valid {position: fixed; z-index: 999; top: 50%; left: 50%; display: none; width: calc(100% - 4rem); max-width: 42rem; transform: translate(-50%, -50%); border-radius: 1.2rem; background: #fff;}
    /* .popup-valid .inner .modal-content {position: relative; padding: 4.8rem 2.4rem 2.4rem; text-align: center;} */
    .popup-valid p {margin: 0 0 2.2rem; font-size: 1.9rem; font-weight: 700;}
    .popup-valid button {width: 100%; min-height: 5rem; border: 0; border-radius: .8rem; color: #fff; font-size: 1.7rem; font-weight: 700; background: #ed561b; cursor: pointer;}
    /* #modal2 .close {position: absolute; top: 1rem; right: 1.2rem; font-size: 2.8rem; cursor: pointer;}
    #modal2 .modal-content p {max-height: 55vh; overflow-y: auto; margin: 0; color: #555; font-size: 1.4rem; line-height: 1.65; text-align: left; white-space: pre-line;} */

    @media screen and (max-width: 720px) {
        .formGroup {margin-top: 7.5rem;}
        .q_select {
            gap: 1rem 0.5rem;
            padding: 2.2rem 2.8rem;
        }
        #page_landing_c .wrap_curd .q_select label span {font-size: 2.7rem; padding-left: 3.5rem;}
        #page_landing_c .wrap_curd .q_select input[type="checkbox"] + span:before, #page_landing_c .wrap_curd .q_select input[type="radio"] + span:before {width: 2.1rem; height: 2.1rem;}
        .q_select:last-child {
            padding: 2.2rem 4.3rem;
        }
        #page_landing_c .wrap_curd .user-box input.inp {padding: 2.2rem 1.6rem 1.2rem; font-size: 4.3rem !important;}
        #page_landing_c .wrap_curd .submit {height: 13rem;}
        .notice-area * {font-size: 1.4rem;}
    }
    @media screen and (max-width: 480px) {
        html, body {font-size: clamp(6px, calc(100vw / 108), 10px);}
        .q_select {
            padding: 2.2rem 1.5rem;
        }
        .q_select:last-child {
            padding: 2.2rem 2.3rem;
        }
         #page_landing_c .wrap_curd .submit {height: 10rem;}

         .notice-area * {font-size: 1rem;}

         #page_landing_c .wrap_curd .agBox label span,#page_landing_c .wrap_curd .agBox a {font-size: 2rem;}
    }
</style>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg" alt="강남역 11번 출구 바로 앞"></div>
        <div class="formContents">
            <div class="form_inner">
                <div class="title">
                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png" alt="10주년 기념 설문 참여 이벤트"></div>
                </div>
                <div class="table"><div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.png" alt="이벤트 혜택 안내"></div></div>
        
                <div class="wrap_form">
                    <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                        <div class="formGroup">
                            <div class="q_text img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_02.png" alt="설문에 참여 해주세요"></div>
                            <div class="question_box">
                                <div class="q_text img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png" alt="왜 아직도 빠진 치아를 방치 하시나요"></div>
                                <div class="q_select">
                                    <label><input type="checkbox" name="tadd1[]" value="비싼 가격"><span>비싼 가격</span></label>
                                    <label><input type="checkbox" name="tadd1[]" value="수술에 대한 공포"><span>수술에 대한 공포</span></label>
                                    <label><input type="checkbox" name="tadd1[]" value="불확실한 사후 관리"><span>불확실한 사후 관리</span></label>
                                    <label><input type="checkbox" name="tadd1[]" value="기타"><span>기타</span></label>
                                </div>
                                <div class="q_text img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png" alt="필요하신 임플란트 개수는"></div>
                                <div class="q_select">
                                    <label><input type="radio" name="tadd2" value="1개"><span>1개</span></label>
                                    <label><input type="radio" name="tadd2" value="2개"><span>2개</span></label>
                                    <label><input type="radio" name="tadd2" value="3개"><span>3개</span></label>
                                    <label><input type="radio" name="tadd2" value="4개 이상"><span>4개 이상</span></label>
                                </div>
                            </div>
                            <div class="user-box">
                                <input type="text" name="name" id="name" class="inp" required placeholder="이름" autocomplete="off">
                                <input type="tel" name="age" id="age" class="inp" required placeholder="나이" autocomplete="off" maxlength="2">
                                <input type="tel" name="phone" id="phone" class="inp" required placeholder="전화번호" autocomplete="off" maxlength="11">
                            </div>
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox"><span>(필수) 개인정보 수집 및 이용 동의</span></label>
                                <a href="#" class="btn-policy">[자세히 보기]</a>
                            </div>
                            <div class="submit"><input type="image" value="" alt="체험가 신청하기" onclick="fnForm('form-1'); return false;" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></div>
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
    
                <div class="subscribe_container">
                    <div class="title">
                        현재까지 신청자
                    </div>
                    <div class="subscribe_bg">
                        <div class="subscribe" data-limit="10">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="notice-area">
                <p id="event-period"></p>
                <span class="target">대상 : ${resVo.target}</span>
                <p>임플란트의 경우 시술 후 개인에 따라 감각 이상, 부종/통증/고름 형성, 턱뼈 약화, 턱관절 통증, 저작 기능 이상 등 부작용이 발생할 수 있습니다. <br />
                    임플란트 진행 시 케이스에 따라 상악동 거상술 또는 뼈이식이 필요한 경우 추가 비용이 발생할 수 있습니다.<br />
                    오스템 임플란트 (개당) 정상가: 50만원 → 이벤트 적용가: 27만원</p>
            </div>
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
        </div>

        <div class="overlay"></div>
        <div class="popup-valid"><div class="inner"><p></p><button type="button" class="btn-valid">확인</button></div></div>
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


    $(document).ready(function(){
        blockSourceView();
        initDate();
        getComment(`${eventSeq}`);

        $('.btn-policy').on('click', function(e) {
            e.preventDefault();
            $('.overlay, #modal2').show();
        });
        $('#close, .overlay').on('click', function() {
            $('.overlay, #modal2').hide();
        });
        $('.btn-valid').on('click', function() {
            $('.overlay, .popup-valid').hide();
        });
        $('input[name="tadd1[]"], input[name="tadd2"]').on('change', function() {
            $(this).closest('.q_select').find('label').removeClass('active');
            $(this).closest('.q_select').find('input:checked').closest('label').addClass('active');
        });

        thisAgreementWithText(`개인정보처리방침

            강남클리어치과의원(이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

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
            강남클리어치과의원에서 임플란트, 라미네이트등의 상담 활용 (전화, 문자)

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

            “병원”은 서비스 향상을 위하여 아래와 같이 개인정보 처리업무를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.

            “병원”의 개인정보 처리업무 수탁업체 및 위탁업무 내용은 아래와 같습니다.

            - 수탁업체: (주)비올린 / 진기남 / 010-3143-3437 / jinginam12@beolin.co.kr
            - 위탁업무 내용: 광고를 통한 개인정보 처리 및 보관, 서버 관리
            - 개인정보의 처리 및 보유기간: 회원탈퇴 또는 위탁계약 종료 시까지

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
            이름 : 주홍하
            직위 : 실장
            소속 : 강남클리어치과의원
            전화 : 1661-7502

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

    function showValidation(message) {
        $('.popup-valid p').text(message);
        $('.overlay, .popup-valid').show();
    }

    	document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.querySelector('#form-1 #phone');

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

    	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);

        let checkedValues;
        checkedValues = $('#' + formId + ' input[name="tadd1[]"]:checked').map(function() {
            return $(this).val();
        }).get();
        
        if (!checkedValues.length >= 1) {
            alert("설문 1번 항목을 선택해주세요.");
            return;
        } else {
            procForm.querySelector("input[name='add1']").value = checkedValues;
        }
        let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문 2번 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

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
