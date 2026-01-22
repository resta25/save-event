<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<style>
    .wrap_form {max-width: 1080px;}
    #page_landing_c .wrap_form {padding: 0 !important;}
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}

    #location {width: 100%;}

    #page_landing_c main {background-color: #fff !important;}

    .btn_submit {background: none; background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}
    /* cta 버튼 */
    .form .submit{width: 70%; margin: 0 auto; padding: 0 0 5%;}
    .form .submit input[type="image"]{width: 100%;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 5.5rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 7.5rem 0 0; font-size: 4.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem;}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 530px; overflow: hidden;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    .question_box .question img {max-width: 801px; margin: 0 auto 7%;}
    .select-box {display: flex; align-items: center; justify-content: center; column-gap: 22px; padding: 0 20px 74px;}
    .select-box .img-area {width: 47.11%;}
    .question_box .q_select {display: flex; flex-direction: column; row-gap: 16px; width: 44.32%; box-sizing: border-box;}
    /* .question_box .q_select label {height: 134px;} */
    #page_landing_c .wrap_curd input[type="radio"] {display: none; appearance: none; margin-left: 0; width: 0;}

    .user-box {background-color: #f5f8ff; padding: 75px 93px 48px 63px;}
    .user-box .user-info {display: flex; font-size: 150% !important; justify-content: flex-end;}
    .user-box .user-info + .user-info {margin-top: 3%;}
    .user-box .user-info input {width: 74.5% !important; border: 3px solid #dddede; font-size: 270% !important; height: auto; padding: 1.7% 0; text-align: center; line-height: 1; box-sizing: border-box; border-radius: 30px !important;}

    #page_landing_c .wrap_curd .user-info label {font-size: 275%; font-weight: 600; width: 38.1%; justify-content: center;}

    #page_landing_c .wrap_checkbox .agBox {justify-content: center;}
    .description {text-align: center;}
    .description #target {margin: 1% 0;}
    .description p {font-size: 175% !important; font-weight: 700;}

@media screen and (max-width: 820px){
    .question_box .question img {max-width: 90%;}
}
@media screen and (max-width: 768px){
    .select-box {padding-bottom: 24px;}
    .user-box {padding: 35px 33px 8px 23px;}

    #page_landing_c .wrap_curd .user-info label {font-size: 125%; width: 28.1%;}
    .user-box .user-info input {font-size: 125% !important; padding: 1.5% 0 !important; border-radius: 15px !important;}

    .description p {font-size: 95% !important;}

    .subscribe {padding: 3% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 2rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}
}

@media screen and (max-width: 500px){
    .form-group, .form .submit{width: 90%;}
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="wrap_form">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg" alt="landing_top" class="landing_top">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">

                <div class="form-inner">
                    <div class="question_box">
                        <div class="question">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png" />
                        </div>
                        <div class="select-box">
                            <div class="img-area">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/head_00.png">
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="이마/헤어라인"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_01.png"></label>
                                <label><input type="radio" name="tadd1" value="정수리/가르마"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_02.png"></label>
                                <label><input type="radio" name="tadd1" value="옆/뒷머리"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_03.png"></label>
                                <label><input type="radio" name="tadd1" value="여러 부위"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_04.png"></label>
                            </div>
                        </div>
                    </div>

                    <div class="user-box">
                        <div class="user-info">
                            <label for="">이름</label>
                            <input type="text" name="name" id="name" class="inp" required placeholder=""  autocomplete="off" >
                        </div>
                        <div class="user-info">
                            <label for="">나이</label>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="">
                        </div>
                        <div class="user-info">
                            <label for="">연락처</label>
                            <input type="tel" placeholder="" id="phone" name="phone" maxlength="11" value="010">
                        </div>
                        <div class="wrap_checkbox">
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                            </div>
                        </div>                        
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png"></div>
                        <div class="description">
                            <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span id="target">대상 :  ${resVo.target}</span>
                            <p id="event-period"></p>
                        </div>
                    </div>

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
                    개인정보처리방침<br>
                    <br>
                    예쁨주의상상의원(이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br>
                    <br>
                    ■ 수집하는 개인정보 항목<br>
                    1. “병원”은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
                    - 개인회원: 이름, 생년월일, 성별, 주소, 연령, 연락처, 휴대전화 정보, 이메일주소<br>
                    - 14세미만 개인회원: 법정 대리인 정보(주민등록번호 또는 아이핀 번호, 휴대전화 정보)<br>
                    - 기타정보: 내원정보, 처방정보, 진료정보, 카드사명, 카드번호 등 카드결제 승인정보<br>
                    - 이벤트 참여시 : 이름, 나이, 연락처, 신청항목<br>
                    <br>
                    2. 개인정보 수집 방법<br>
                    - 홈페이지, 서면양식, 팩스, 전화, 게시판, 이메일, 이벤트 참여<br>
                    <br>
                    3. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
                    - IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br>
                    <br>
                    ■ 개인정보의 수집 및 이용목적<br>
                    “병원”에서는 개인정보를 다음의 목적이외의 용도로는 이용하지 않으며 이용 목적이 변경될 경우에는 동의를 받아 처리하겠습니다.<br>
                    <br>
                    1. 서비스 제공<br>
                    - 진료정보: 진단 및 치료를 위한 진료서비스와 청구, 수납 및 환급 등의 원무 서비스 제공<br>
                    - 예약정보: 진료 예약 및 예약조회 등 기타 서비스 이용에 따른 본인 확인 절차에 이용<br>
                    - 기타: 문자 및 SNS를 통한 병원소식, 질병정보 등의 안내, 설문조사<br>
                    <br>
                    2. 회원관리<br>
                    서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용방지, 만 14세미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원 관리를 위한 각종 정보 제공, 소식 전달, 설문조사<br>
                    <br>
                    3. 신규 서비스 개발 및 마케팅, 광고에의 활용<br>
                    - 신규 서비스 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공<br>
                    - 이벤트 프로모션에 참여하거나 선택형 서비스를 이용하려는 경우 회원의 별도 동의 하에 아래의 정보를 수집할 수 있습니다.<br>
                    • 휴대전화번호, 전자우편 주소, 주소, 성별, 지역<br>
                    • 회원의 휴대전화기 주소록 내에 저장된 제3자의 휴대전화번호 (소셜 커뮤니티 기능이 탑재되어 있는 서비스에 한하며, 이 경우에도 제3자의 휴대전화번호를 저장하지 않음)<br>
                    • 신용카드 번호, 휴대전화번호, 상품권 결제 제휴사의 ID 및 비밀번호 (유료 결제 서비스를 사용하는 회원에 한함)<br>
                    4. 이벤트 참여시<br>
                    예쁨주의상상의원에서 다이어트 시술 등의 상담 활용 (전화, 문자)<br>
                    <br>
                    ■ 개인정보의 처리 및 보유기간<br>
                    서비스 이용자가 “병원”의 회원으로서 서비스를 계속 이용하는 동안 이용자의 개인정보를 계속 보유하며 서비스의 제공 등을 위해 이용합니다. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성 또는 이벤트 참여시 이벤트 페이지에 별도 명시한 수집동의 받은 날로부터 동의 받은 기간이 만료되거나 이용자가 직접 삭제, 수정 또는 회원 탈퇴한 경우에 재생할 수 없는 방법으로 파기합니다.<br>
                    단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br>
                    상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 병원은 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 “병원”은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br>
                    <br>
                    - 웹사이트 방문기록<br>
                    • 보존 이유 : 통신비밀보호법<br>
                    • 보존 기간 : 3개월<br>
                    - 본인확인에 관한 기록<br>
                    • 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률<br>
                    • 보존 기간 : 6개월<br>
                    - 소비자의 불만 또는 분쟁처리에 관한 기록<br>
                    • 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br>
                    • 보존 기간 : 3년<br>
                    - 신용정보의 수집/처리 및 이용 등에 관한 기록<br>
                    • 보존 이유 : 신용정보의 이용 및 보호에 관한 법률<br>
                    • 보존 기간 : 3년<br>
                    <br>
                    <br>
                    ■ 개인정보처리의 제3자 제공 및 위탁에 관한 사항<br>
                    “병원”은 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. “병원”의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다<br>
                    <br>
                    - 위탁업체: ㈜ 진이어스<br>
                    - 위탁업무 내용: 홈페이지 운영 및 관리, 이벤트 등 광고성 정보 전달, 전산관리 위탁 서비스<br>
                    - 개인정보의 처리 및 보유기간: 회원탈퇴 혹은 위탁계약 종료 시<br>
                    <br>
                    - 위탁업체: ㈜세이브마케팅 / 010-4383-1224 / savemarketing1@gmail.com <br>
                    - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리<br>
                    <br>
                    ■ 정보주체의 권리의무 및 그 행사방법<br>
                    1. 개인정보 열람 요구: “병원”에서 보유하고 있는 개인정보파일은 개인정보보호법 제35조(개인정보의 열람)에 따라 열람을 요구할 수 있습니다. 다만 개인정보 열람 요구는 개인정보보호법 제35조 제5항에 의하여 다음과 같이 제한될 수 있습니다.<br>
                    - 법률에 따라 열람이 금지되거나 제한되는 경우<br>
                    - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우<br>
                    <br>
                    2. 개인정보 정정•삭제 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제36조(개인정보의 정정, 삭제)에 따라 “병원”에 개인정보의 정정, 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br>
                    <br>
                    3. 개인정보 처리정지 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제37조(개인정보의 처리정지 등)에 따라 병원에 개인정보의 처리정지를 요구할 수 있습니다. 또한 만 14세 미만 아동의 법정대리인은 병원에 그 아동의 개인정보의 열람, 정정, 삭제, 처리정지 요구를 할 수 있습니다. 다만, 개인정보 처리정지 요구시 「개인정보보호법」 제37조 제2항에 의하여 처리정지 요구가 거절될 수 있습니다.<br>
                    - 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우<br>
                    - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우<br>
                    - 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우<br>
                    <br>
                    ■ 개인정보의 파기절차 및 파기방법<br>
                    “병원”은 원칙적으로 개인정보의 보유기간이 경과했거나 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br>
                    <br>
                    1. 파기절차<br>
                    이용자가 입력한 정보는 보유기간이 경과했거나 처리목적이 달성 후 내부 방침 및 관련 법령에 따라 파기합니다. (개인정보처리 및 보유기간 참조)<br>
                    <br>
                    2. 파기기한<br>
                    이용자의 개인정보는 개인정보의 보유기간이 경과된 경우 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br>
                    <br>
                    3. 파기방법<br>
                    “병원”에서 처리하는 개인정보를 파기할 때에는 다음의 방법으로 파기 합니다.<br>
                    - 전자적 파일 형태인 경우: 복원이 불가능한 방법으로 영구삭제<br>
                    - 전자적 파일의 형태 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우: 파쇄 또는 소각<br>
                    <br>
                    ■ 개인정보의 안전성 확보 조치<br>
                    “병원”은 (개인정보보호법) 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.<br>
                    <br>
                    1. 내부관리계획의 수립 및 시행<br>
                    “병원”은 (개인정보보호법) 제29조에 따라 내부관리 계획을 수립 및 시행합니다.<br>
                    <br>
                    2. 개인정보취급자 지정의 최소화 및 교육<br>
                    개인정보취급자의 지정을 최소화하고 내부관리 계획에 따라 정기적인 교육을 시행하고 있습니다.<br>
                    <br>
                    3. 관리적 대책<br>
                    - 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보보호정책에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.<br>
                    - 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.<br>
                    <br>
                    4. 개인정보에 대한 접근 제한<br>
                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근을 통제하고, 침입차단시스템과 탐지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며 권한 부여, 변경 또는 말소에 대한 내역을 기록하고, 그 기록을 최소 3년간 보관하고 있습니다.<br>
                    <br>
                    5. 접속기록의 보관 및 위변조 방지<br>
                    개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 관리하고 있습니다.<br>
                    <br>
                    6. 개인정보의 암호화<br>
                    이용자의 개인정보는 암호화 되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.<br>
                    <br>
                    7. 해킹 등에 대비한 기술적 대책<br>
                    병원은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.<br>
                    <br>
                    8. 비인가자에 대한 출입 통제<br>
                    개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br>
                    <br>
                    ■ 개인정보 보호책임자<br>
                    “병원”은 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br>
                    이름 : 문경환<br>
                    직위 : 본부장<br>
                    소속 : ㈜ 진이어스<br>
                    전화 : 1666-1177<br>
                    메일 : hjhwpa@geni-us.co.kr<br>
                    <br>
                    ■ 개인정보 처리방침의 변경<br>
                    이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.<br>
                    - 시행일자: 2011년 9월 30일<br>
                    <br>
                    ■ 권익침해 구제방법<br>
                    고객은 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.<br>
                    - 개인정보침해신고센터 / privacy.kisa.or.kr / 국번없이 118<br>
                    - 대검찰청 사이버수사과 / www.spo.go.kr / 국번없이 1301<br>
                    - 경찰청 사이버안전국 / police.go.kr / 국번없이 182
                </p>
            </div>
        </div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        
        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    //설문 클릭시 이미지 on/off
    $('input[name*="tadd"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    $('input[name="tadd1"]').on('change', function () {
        const $label = $(this).closest('label');
        const index = $label.index() + 1; // 1부터 시작

        
        const imgNum = String(index).padStart(2, '0'); // 01, 02, 03...
        console.log(imgNum)
        const imgSrc = '//static.savemkt.com/event/v_${eventSeq}' + '/head_'+ imgNum +'.png';

        $('.select-box .img-area img').attr('src', imgSrc);
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
	
	var modal2 = document.getElementById("modal2");
	// var agree = document.getElementById("agree");
	var agree = document.querySelectorAll(".agree");
	var close2 = document.getElementById("close");

	// agree.onclick = function () {
	//     modal2.style.display = "block";
	// }

    agree.forEach(ag => ag.addEventListener('click', function(){
        modal2.style.display = "block";
    }))

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
    document.addEventListener('DOMContentLoaded', function () {
        const phoneInputs = document.getElementsByName('phone');

        // 페이지 로드 시 기본값 설정
        phoneInputs.forEach(phone => {
            phone.value = '010';
        });

        // 입력값이 사라지거나 010이 아니면 다시 '010' 넣기
        phoneInputs.forEach(phone => {
            phone.addEventListener('input', function () {
                if (!this.value.startsWith('010')) {
                    this.value = '010';
                }
            });
        });
    });

    //submit
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

		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
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