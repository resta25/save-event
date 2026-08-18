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
    html {
        font-size: clamp(6px, calc(100vw / 108), 10px);
    }
    * {box-sizing: border-box; font-family: 'Pretendard', sans-serif;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c main {display: block; max-width: 1080px; margin: 0 auto; padding: 0; background: #fff;}
    #page_landing_c .wrap_form {padding: 0; border: 0; background: #fff;}
    #page_landing_c .wrap_curd {padding: 0 2.8rem 3rem; background: #fff;}
    #page_landing_c .wrap_curd * {font-family: inherit;}
    .img-area {display: block; position: relative;}
    .img-area img {display: block; width: 100%;}
    .hide {display: none !important;}

    /* .hero {} */
    .station {display: inline-block; padding: .7rem 1.8rem; border-radius: 999rem; color: #fff; font-size: 1.75rem; font-weight: 800; background: #ed561b;}
    .hero h1 {margin: 1.8rem 0 2.8rem; color: #111; font-size: 4.15rem; font-weight: 900; letter-spacing: -.32rem; line-height: 1;}

    .survey-page {padding-top: 12rem;}
    .survey-page .img-area.title {width: 89.0625%; margin: 0 auto;}
    .schedule-box {margin-top: 6.2rem; padding: 4.4rem 8.1rem 5.1rem; border-radius: 2.5rem; color: #fff; background: #212121;}
    .schedule-box .img-area.title {width: 100%; margin-bottom: 5.4rem;}
    .date-select {display: flex; align-items: center; justify-content: center; column-gap: 4.2rem;}
    .date-select select {width: 100%; height: 11.2rem; line-height: 11.2rem; margin-left: 0; padding: .6rem; border: 0; border-radius: 2.5rem; color: #222; font-size: 5.3rem !important; font-weight: 700; text-align: center; background: #fff; font-family: 'Gmarket Sans' !important;}
    .date-select span {font-size: 5.3rem !important; padding-top: 1rem; font-weight: 800; color: #fff; font-family: 'Gmarket Sans' !important;}
    .date-select select option:disabled {color: #c7c7c7;}
    .time-select {display: grid; grid-template-columns: repeat(5, 1fr); gap: 2.3rem 1rem; margin-top: 4.4rem;}
    #page_landing_c .wrap_curd .time-select label {display: grid; min-height: 3.8rem; place-items: center; padding: 2.8rem 0.4rem 2rem; border-radius: 2.5rem; color: #fff; font-size: 3.4rem !important; font-weight: 800; cursor: pointer; background: #b7b7b7; font-family: 'Gmarket Sans' !important;}
    .time-select input {position: absolute; opacity: 0;}
    #page_landing_c .wrap_curd .time-select label.active {background: #ed561b; box-shadow: inset 0 0 0 .2rem #fff;}
    #page_landing_c .wrap_curd .next {width: 100%; margin-top: 8.3rem;}
    #page_landing_c .wrap_curd .next button {width: 100%;}

    .page-two .survey-title {font-size: 2.55rem; line-height: 1.22;}
    .page-two .survey-title strong {display: block; margin-top: .4rem;}
    .user-box {margin-top: 6.7rem;}
    .user-box input.inp {width: 100%; margin: 0; padding: 3rem 1.6rem 2rem !important; border: 3px solid #5f5f5f; border-radius: 2.7rem; color: #222; font-size: 5.4rem !important; text-align: center; background: #fff; font-family: 'Gmarket Sans' !important;}
    .user-box input.inp + input.inp {margin-top: 1.7rem;}
    .user-box input.inp:focus {border-color: #ed561b; box-shadow: 0 0 0 .3rem rgba(237,86,27,.16); outline: 0;}
    .wrap_form .submit {padding: 0 !important; border: none !important;}
    .wrap_form .btn_submit {width: 100% !important; background-color: transparent !important; width: 100%; height: 100%; margin: 3rem 0 6.3rem !important; padding: 0 !important; border: none !important;}
    #page_landing_c .wrap_curd .agBox {width: 100%; margin: 1.3rem 0 0; color: #000; font-size: 2.8rem; text-align: center;}
    #page_landing_c .wrap_curd .agBox label {display: inline; font-size: inherit; cursor: pointer;}
    #page_landing_c .wrap_curd .agBox a {color: #000; text-decoration: underline;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 0 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem !important; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'GangwonEducationTteontteon';}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 53rem; overflow: hidden; background-color: #f8f8f8;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
    .subscribe .content > div.name {width: 15%; white-space: nowrap; overflow: hidden;}
    .subscribe .content > div.phone {width: 35%; text-align: center;}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    .notice p {color: #afafaf; font-size: 2.2rem !important; text-align: center; font-family: 'Pretendard' !important;}

    .overlay {position: fixed; z-index: 900; top: 0; left: 0; display: none; width: 100%; height: 100%; background: rgba(0,0,0,.65);}
    .popup-valid {position: fixed; z-index: 999; top: 50%; left: 50%; display: none; width: calc(100% - 4rem); max-width: 47rem; transform: translate(-50%, -50%); border-radius: 1.2rem; background: #fff;}
    .popup-valid .inner {position: relative; padding: 4.8rem 2.4rem 2.4rem; text-align: center;}
    .popup-valid p {margin: 0 0 2.2rem; font-size: 2.4rem; font-weight: 700; font-family: 'Gmarket Sans' !important;}
    .popup-valid button {width: 100%; min-height: 5rem; border: 0; border-radius: .8rem; color: #fff; font-size: 2.4rem; font-weight: 700; background: #ed561b; cursor: pointer;}
    .modal {background-color: transparent !important;}
    /* #modal2 .close {position: absolute; top: 1rem; right: 1.2rem; font-size: 2.8rem; cursor: pointer;}
    #modal2 .modal-content p {max-height: 55vh; overflow-y: auto; margin: 0; color: #555; font-size: 1.4rem; line-height: 1.65; text-align: left; white-space: pre-line;} */

    @media screen and (max-width: 768px) {}
    @media screen and (max-width: 480px) {
        .schedule-box {
            margin-top: 4.2rem;
            padding: 4.4rem 4.1rem 5.1rem;
            border-radius: 1.5rem;
        }
        .date-select {column-gap: 2.2rem;}
        /* .date-select select {
            height: 9.2rem;
            line-height: 9.2rem;
            border-radius: 1.5rem;
        } */
        .date-select select {
            height: 7.2rem;
            line-height: 7.2rem;
            font-size: 3.8rem !important;
            border-radius: 1.5rem;
        }
        .date-select span {font-size: 4.3rem !important;}
         .wrap_form .btn_submit {margin: 3rem 0 4.3rem !important}
        .schedule-box .img-area.title {margin-bottom: 4.4rem;}
        .user-box input.inp {font-size: 4rem !important;}
        .notice p {font-size: 1.5rem !important;}
        .survey-page {
            padding-top: 9rem;
        }
        #page_landing_c .wrap_curd .time-select label {
            padding: 2.2rem 0.4rem 2rem;
            border-radius: 1rem;
            font-size: 2.4rem !important;
        }
        #page_landing_c .wrap_curd .next {margin-top: 4.3rem;}
    }
    @media screen and (max-width: 360px) {

    }
</style>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="hero">
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg" alt=""></div>
            <div class="benefits">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif" alt=""></div>
            </div>
        </div>
        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                <section class="survey-page page-one">
                    <div class="img-area title"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png" alt=""></div>
                    <div class="schedule-box">
                        <div class="img-area title"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_02.png" alt=""></div>
                        <div class="date-select">
                            <select id="month"><option value="">월</option></select><span>월</span>
                            <select id="day"><option value="">일</option></select><span>일</span>
                        </div>
                    </div>
                    <div class="time-select">
                        <label><input type="radio" name="tadd2" value="09:00">09:00</label>
                        <label><input type="radio" name="tadd2" value="10:00">10:00</label>
                        <label><input type="radio" name="tadd2" value="11:00">11:00</label>
                        <label><input type="radio" name="tadd2" value="12:00">12:00</label>
                        <label><input type="radio" name="tadd2" value="13:00">13:00</label>
                        <label><input type="radio" name="tadd2" value="14:00">14:00</label>
                        <label><input type="radio" name="tadd2" value="15:00">15:00</label>
                        <label><input type="radio" name="tadd2" value="16:00">16:00</label>
                        <label><input type="radio" name="tadd2" value="17:00">17:00</label>
                        <label><input type="radio" name="tadd2" value="야간진료">야간진료</label>
                    </div>
                    <div class="next"><button type="button" onclick="showNextPage()"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_next.png" alt=""></button></div>
                </section>

                <section class="survey-page page-two hide">
                    <div class="img-area title"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_03.png" alt=""></div>
                    <div class="user-box">
                        <input type="text" name="name" id="name" class="inp" required placeholder="이름" autocomplete="off">
                        <input type="tel" name="age" id="age" class="inp" required placeholder="나이" autocomplete="off" maxlength="2">
                        <input type="tel" name="phone" id="phone" class="inp" required placeholder="전화번호" autocomplete="off" maxlength="11">
                    </div>
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>(필수) 개인정보 수집 및 이용 동의</span></label>
                        <a href="#" class="btn-policy">[자세히 보기]</a>
                    </div>
                    <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>	

                    <div class="subscribe_container">
                        <div class="title">현재까지 신청자</div>
                        <div class="subscribe" data-limit="10"></div>
                    </div>

                    <div class="notice">
                        <p>
                            ※ 개인 건강 상태에 따라 시술 및 결과는 상이할 수  있으며, 통증 및 저작기능 이상이 있을 수 있습니다. <br />
                            이상 발생 시 꼭 내원해 주세요<br />
                            ※ 수술 방법이나 임플란트 종류에 따라 혜택 금액은 상이할 수 있습니다.<br />
                            ※ 정품 오스템  : 52만원 -> 27만원 (개당) 
                        </p>
                    </div>
                </section>
                <input type="hidden" id="branch" name="branch" value="${resVo.branch}">
                <input type="hidden" id="eventSeq" name="eventSeq" value="${resVo.eventSeq}">
                <input type="hidden" id="site" name="site" value="${site}">
                <input type="hidden" id="media" name="media" value="${media}">
                <input type="hidden" id="interlock" name="interlock" value="${resVo.interlock}">
                <input type="hidden" id="checkAgeMin" name="checkAgeMin" value="${resVo.checkAgeMin}">
                <input type="hidden" id="checkAgeMax" name="checkAgeMax" value="${resVo.checkAgeMax}">
                <input type="hidden" id="checkGender" name="checkGender" value="${resVo.checkGender}">
                <input type="hidden" id="add1" name="add1" value="">
                <input type="hidden" id="add2" name="add2" value="">
                <input type="hidden" id="add3" name="add3" value="">
                <input type="hidden" id="add4" name="add4" value="">
                <input type="hidden" id="add5" name="add5" value="">
                <input type="hidden" id="add6" name="add6" value="">


                <input type="hidden" id="tadd1" name="tadd1" value="">
            </form>
        </div>
        <div class="container">
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
        </div>

        <div class="overlay"></div>
        <div class="popup-valid"><div class="inner"><p></p><button type="button" class="btn-valid">확인</button></div></div>
        <div id="modal2" class="modal modal2">
            <div class="modal-content"><span class="close" id="close">×</span>
                <p></p>
            </div>
        </div>
    </main>
</body>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    //개인정보처리방침
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
        initMonthOptions();
        resetDays();
        $('#month').on('change', resetDays);
        $('input[name="tadd2"]').on('change', function() {
            $('input[name="tadd2"]').closest('label').removeClass('active');
            $('input[name="tadd2"]:checked').closest('label').addClass('active');
        });
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

        //신청현황 리스트
        getComment(`${eventSeq}`);

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

    function initMonthOptions() {
        var now = new Date();
        var currentMonth = now.getMonth() + 1;

        $('#month').empty().append('<option value="">월</option>');

        for (var m = 1; m <= 12; m++) {
            var mm = ('0' + m).slice(-2);
            var option = $('<option>', { value: mm, text: mm });

            // 지난달은 선택 불가 (옵션은 보임)
            if (m < currentMonth) {
                option.prop('disabled', true);
            }

            $('#month').append(option);
        }
    }
    function resetDays() {
        var now = new Date();
        var year = now.getFullYear();
        var currentMonth = now.getMonth() + 1;
        var currentDay = now.getDate();
        var selectedMonth = Number($('#month').val());
        $('#day').empty().append('<option value="">일</option>');
        if (!selectedMonth) return;
        var lastDay = new Date(year, selectedMonth, 0).getDate();
        for (var d = 1; d <= lastDay; d++) {
            var dd = ('0' + d).slice(-2);
            var option = $('<option>', { value: dd, text: dd });
            // 오늘 이전 날짜는 선택 비활성화(옵션은 유지)
            if (
            selectedMonth < currentMonth ||
            (selectedMonth === currentMonth && d < currentDay)
            ) {
            option.prop('disabled', true);
            }
            $('#day').append(option);
        }
        // 혹시 기존 선택값이 과거 날짜면 초기화
        var chosenDay = Number($('#day').val());
        if (
            selectedMonth < currentMonth ||
            (selectedMonth === currentMonth && chosenDay < currentDay)
        ) {
            $('#day').val('');
        }
    }

    function showValidation(message) {
        $('.popup-valid p').text(message);
        $('.overlay, .popup-valid').show();
    }

    function showNextPage() {
        var month = $('#month').val();
        var day = $('#day').val();
        var time = $('input[name="tadd2"]:checked').val();

        if (!month || !day) {
            showValidation('상담을 원하시는 날짜를 선택해 주세요.');
            return false;
        }

        if (isPastDate(month, day)) {
            showValidation('오늘 이전 날짜는 선택할 수 없습니다.');
            return false;
        }

        if (!time) {
            showValidation('상담을 원하시는 시간을 선택해 주세요.');
            return false;
        }

        $('#tadd1').val(month + '월 ' + day + '일');
        $('#add1').val(month + '월 ' + day + '일');
        $('#add2').val(time);

        $('.page-one').addClass('hide');
        $('.page-two').removeClass('hide');
    }

    function isPastDate(month, day) {
        var now = new Date();
        var y = now.getFullYear();
        var today = new Date(y, now.getMonth(), now.getDate());
        var selected = new Date(y, Number(month) - 1, Number(day));
        return selected < today;
    }
        
    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        let selectedDate = procForm.querySelector('input[name="tadd1"]').value;
        if (!selectedDate) {
            alert("상담 날짜를 선택해주세요.");
            return;
        }
        procForm.querySelector("input[name='add1']").value = selectedDate;

        let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
        if (!selectedRadio2) {
            alert("상담 시간을 선택해주세요.");
            return;
        }
        procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
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
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>
