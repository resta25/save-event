<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    html{
        height: 100%;
    }
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 4.5rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem;}
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

    #page_landing_c main {max-width: 820px;}
    #page_landing_c .wrap_form {padding: 0; border: 0;}
    .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}
    .wrap_form .submit {width: 70%; margin: 0 auto;}

    #wrap{font-family: 'noto sans kr'; overflow: hidden;}
    .top-img {width: 100%; margin: 0 auto;}

    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
    #page_landing_c .wrap_curd .q_select {font-size: 150%; flex-grow: 1;}
    #page_landing_c .wrap_form .description {width: 100%;}
    #page_landing_c .wrap_form .description.orage-box{display: flex; justify-content: flex-start; padding-top:3%; padding-bottom: 3%; padding-left: 1.5%; gap: 4px;}
    #page_landing_c .wrap_form .description.orage-box > * {background-color: #0a151e; color:#fff; font-size:110%; border-radius:999px; color:#fff; padding:2% 3%; line-height: 1.06; font-weight: 500; letter-spacing: -0.9px; margin: 0;}
    #page_landing_c .wrap_form .description.orage-box > span{background-color: #0a151e;}

    #page_landing_c .wrap_form .question {position: relative;}
    #page_landing_c .wrap_form .question_box > div:not(.formContents),
    #page_landing_c .wrap_form .question_box > label {display: flex; align-items: center; gap: 6%; border-radius: 10px; border: solid 1px #bebebe; background-color: #efefef; padding: 1em 2em; box-sizing: border-box; width: 90%; margin: 0 auto; margin-bottom: 2%;}
    #page_landing_c .wrap_form .question_box > label input {background: url("//static.savemkt.com/event/v_${eventSeq}/check.png") no-repeat right 1.5rem center; background-color: #fff;}
    #page_landing_c .wrap_form .legend {max-width: 130px; width: 100%; font-size: 185%; font-weight: 800; line-height: 1; letter-spacing: -1.78px; color: #0a151e;}
    #page_landing_c .wrap_form .agBox .legend {max-width: max-content;}
    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .wrap_form .question_box .agBox .question {display: flex; align-items: center; width: 100%; gap: 6%;}
    /* #page_landing_c .wrap_form .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

    /* 설문값, 동의, 미동의 버튼 공통 */
    #page_landing_c .wrap_form .question_box .q_select label, label.selected_label, #page_landing_c .wrap_form .agBox .disagree{display: inline-block; border-radius:0.5rem; font-size: 100%; margin-right:1%; text-align: center;  color: #0a151e; font-weight: 800; cursor: pointer; width: 27%; padding: 3% 2%; border:1px solid #bebebe;}
    #page_landing_c .wrap_form .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000; color:#fff;}
    #page_landing_c .wrap_form .question_box .q_select:nth-of-type(4) label.on, label.add2{background-color: #000;}
    #page_landing_c .wrap_form .question_box .q_select label {background-color: #fff;}
    #page_landing_c .wrap_form .question_box .q_select label.on, label.add3{background-color: #8ed3ff; color:#00385c;}

    /* user db입력칸 (이름) */
    #page_landing_c .wrap_form .user_info {width: 90%; margin: 0 auto;}
    #page_landing_c .wrap_form .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .wrap_form .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    #page_landing_c .wrap_form .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
    position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

    #page_landing_c .wrap_form .inp{font-size: 120%; border-radius: 10px; border: solid 1px #bebebe; background-color: #fff; min-height: 34px; padding: 3%; box-sizing: border-box;}
    #page_landing_c .wrap_form input[type="checkbox"] + span:before{border-color:#fff;}
    #page_landing_c .wrap_form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

    #page_landing_c .wrap_form .agBox{width: auto; font-size: 100%; text-align: left;}
    #page_landing_c .wrap_form .agBox .ag_btn {left: 55%; flex-grow: 1;}
    #page_landing_c .wrap_form .agBox label{background-color: #127ee3;}
    #page_landing_c .wrap_form .agBox .disagree{background-color: #fff; font-weight: 800; color: #0a151e;}

    #page_landing_c .wrap_form .agBox.on label{background-color:#8ed3ff; color: #00385c;}

    #page_landing_c .wrap_form ul.table_box{width:90%;}
    #page_landing_c .wrap_form ul.table_box li{display: flex; margin-bottom:2%;   }
    #page_landing_c .wrap_form ul.table_box li  >*{background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
    #page_landing_c .wrap_form ul.table_box li .th{width:20%;}
    #page_landing_c .wrap_form ul.table_box li .td{width: 78%; display:none; position: relative;}
    #page_landing_c .wrap_form ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
    #page_landing_c .wrap_form ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}


    #page_landing_c .wrap_form ul.table_box li:nth-child(2) .th,
    #page_landing_c .wrap_form ul.table_box li:nth-child(3) .th{margin-right:1%;}
    #page_landing_c .wrap_form ul.table_box li.on .th{border-radius: 25px 0 0 25px; border-right:none;}
    #page_landing_c .wrap_form ul.table_box li.on .td{border-radius:0 25px 25px 0; border-left:none;}
    .question_container {padding: 3% 0;}

    /* 비용 결과 */
    #page_landing_c .wrap_form .result {margin: 0 auto; width: 90%; position: relative;}
    #page_landing_c .wrap_form .result .value {display: flex; position: absolute; left: 4%; top: 42%; transform: translateY(-50%); width: 37.5%;}
    #page_landing_c .wrap_form .result .value .add_value {font-size: 120%; background-color: #8ed3ff; border-radius: 0.5em; width: 49%; padding:0.5em 1em; margin: 0; font-weight: 800;
    text-align: center; color: #00385c; cursor: pointer; display: none; }
    #page_landing_c .wrap_form .result .value .add1_value {margin-right: 2%;}
    #page_landing_c .wrap_form .result .value .add2_value {}

    /* submit 버튼 애니메이션 */
    @keyframes pulsating {
        0% {transform: scale(1);}
        50% {transform: scale(0.95);}
        100% {transform: scale(1);}
    }
    @keyframes blink-effect {
        50% {opacity: 0;}
    }

@media screen and (max-width: 768px){
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

@media screen and (max-width: 480px){
    #page_landing_c .wrap_form .question_box .q_select label, label.selected_label, #page_landing_c .wrap_form .agBox .disagree {width: 30%; font-size: 65%;}
    #page_landing_c .wrap_form .result .value .add_value {font-size: 90%; padding: 0.5em;}
    #page_landing_c .wrap_form .legend {font-size: 100%; max-width: 50px;}
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 95%;}
    #page_landing_c .wrap_form .inp {font-size: 13px;}
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 85%;}

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
        <!-- <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png" alt="landing_top" class="landing_top"> -->
            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <div class="description orage-box">
                                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <span id="target">대상 : ${resVo.target}</span>
                            </div>	
                            <div class="img-area top-img"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png"></div>
                            <div class="question_container">
                                <div class="question_box">
                                    <div class="question">
                                        <span class="legend">연령대</span>
                                        <div class="q_select">
                                            <label>40대<input type="radio" name="tadd1" value="40대"></label>
                                            <label>50대<input type="radio" name="tadd1" value="50대"></label>
                                            <label>60대 이상<input type="radio" name="tadd1" value="60대 이상"></label>
                                        </div>
                                    </div>
                                    <div class="question">
                                        <span class="legend">필요한 개수</span>
                                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.png"></div> -->
                                        <div class="q_select">
                                            <label>1개<input type="radio" name="tadd2" value="1개"></label>
                                            <label>2개<input type="radio" name="tadd2" value="2개"></label>
                                            <label>3개 이상<input type="radio" name="tadd2" value="3개 이상"></label>
                                        </div>
                                    </div>        

                                    <div class="user_name">
                                        <span class="legend">이름</span>
                                        <input type="text" name="name" id="name" class="inp" required autocomplete="off">
                                    </div>
                                    <div class="user_phone">
                                        <span class="legend">연락처</span>
                                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                    </div>
                                    
                                    <div class="agBox">
                                        <div class="question">
                                            <a href="#" class="btn-agreement">
                                                <span class="legend">개인정보 수집 · 이용</span>
                                                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_09.png"></div> -->
                                            </a>
                                            <div class="q_select ag_btn">
                                                <label><input name="agBox" type="checkbox">동의</label>
                                                <a href="javascript:void(0);" class="disagree">미동의</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>   
                            </div>

                        <div class="img-area result">
                            <div class="value">
                                <p class="add_value add1_value"></p>
                                <p class="add_value add2_value"></p>
                            </div>
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_07.png">
                            <span id="cursor"></span>
                        </div>

                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png" /></div>	

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
                    실시간 신청현황
                </div>
                <div class="subscribe_bg">
                    <div class="subscribe" data-limit="10">
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
            </div>
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    개인정보처리방침<br/>
                    <br/>
                    이심당치과의원 (이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br/>
                    <br/>
                    ■ 수집하는 개인정보 항목<br/>
                    1. “병원”은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br/>
                    - 개인회원: 이름, 생년월일, 성별, 주소, 연령, 연락처, 휴대전화 정보, 이메일주소<br/>
                    - 14세미만 개인회원: 법정 대리인 정보(주민등록번호 또는 아이핀 번호, 휴대전화 정보)<br/>
                    - 기타정보: 내원정보, 처방정보, 진료정보, 카드사명, 카드번호 등 카드결제 승인정보<br/>
                    - 이벤트 참여시 : 이름, 나이, 연락처, 신청항목<br/>
                    <br/>
                    2. 개인정보 수집 방법<br/>
                    - 홈페이지, 서면양식, 팩스, 전화, 게시판, 이메일, 이벤트 참여<br/>
                    <br/>
                    3. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br/>
                    - IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br/>
                    <br/>
                    ■ 개인정보의 수집 및 이용목적<br/>
                    “병원”에서는 개인정보를 다음의 목적이외의 용도로는 이용하지 않으며 이용 목적이 변경될 경우에는 동의를 받아 처리하겠습니다.<br/>
                    <br/>
                    1. 서비스 제공<br/>
                    - 진료정보: 진단 및 치료를 위한 진료서비스와 청구, 수납 및 환급 등의 원무 서비스 제공<br/>
                    - 예약정보: 진료 예약 및 예약조회 등 기타 서비스 이용에 따른 본인 확인 절차에 이용<br/>
                    - 기타: 문자 및 SNS를 통한 병원소식, 질병정보 등의 안내, 설문조사<br/>
                    <br/>
                    2. 회원관리<br/>
                    서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용방지, 만 14세미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원 관리를 위한 각종 정보 제공, 소식 전달, 설문조사<br/>
                    <br/>
                    3. 신규 서비스 개발 및 마케팅, 광고에의 활용<br/>
                    - 신규 서비스 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공<br/>
                    - 이벤트 프로모션에 참여하거나 선택형 서비스를 이용하려는 경우 회원의 별도 동의 하에 아래의 정보를 수집할 수 있습니다.<br/>
                    • 휴대전화번호, 전자우편 주소, 주소, 성별, 지역<br/>
                    • 회원의 휴대전화기 주소록 내에 저장된 제3자의 휴대전화번호 (소셜 커뮤니티 기능이 탑재되어 있는 서비스에 한하며, 이 경우에도 제3자의 휴대전화번호를 저장하지 않음)<br/>
                    • 신용카드 번호, 휴대전화번호, 상품권 결제 제휴사의 ID 및 비밀번호 (유료 결제 서비스를 사용하는 회원에 한함)<br/>
                    4. 이벤트 참여시<br/>
                    이심당치과의원에서 임플란트, 라미네이트등의 상담 활용 (전화, 문자)<br/>
                    <br/>
                    ■ 개인정보의 처리 및 보유기간<br/>
                    서비스 이용자가 “병원”의 회원으로서 서비스를 계속 이용하는 동안 이용자의 개인정보를 계속 보유하며 서비스의 제공 등을 위해 이용합니다. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성 또는 이벤트 참여시 이벤트 페이지에 별도 명시한 수집동의 받은 날로부터 동의 받은 기간이 만료되거나 이용자가 직접 삭제, 수정 또는 회원 탈퇴한 경우에 재생할 수 없는 방법으로 파기합니다.<br/>
                    단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br/>
                    상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 병원은 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 “병원”은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br/>
                    <br/>
                    - 웹사이트 방문기록<br/>
                    • 보존 이유 : 통신비밀보호법<br/>
                    • 보존 기간 : 3개월<br/>
                    - 본인확인에 관한 기록<br/>
                    • 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률<br/>
                    • 보존 기간 : 6개월<br/>
                    - 소비자의 불만 또는 분쟁처리에 관한 기록<br/>
                    • 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br/>
                    • 보존 기간 : 3년<br/>
                    - 신용정보의 수집/처리 및 이용 등에 관한 기록<br/>
                    • 보존 이유 : 신용정보의 이용 및 보호에 관한 법률<br/>
                    • 보존 기간 : 3년<br/>
                    <br/>
                    <br/>
                    ■ 개인정보처리의 제3자 제공 및 위탁에 관한 사항<br/>
                    “병원”은 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. “병원”의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다<br/>
                    <br/>
                    - 위탁업체: ㈜세이브마케팅 / 010-4383-1224 / savemarketing1@gmail.com<br/>
                    - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리<br/>
                    - 개인정보의 처리 및 보유기간: 회원탈퇴 혹은 위탁계약 종료 시<br/>
                    <br/>
                    <br/>
                    ■ 정보주체의 권리의무 및 그 행사방법<br/>
                    1. 개인정보 열람 요구: “병원”에서 보유하고 있는 개인정보파일은 개인정보보호법 제35조(개인정보의 열람)에 따라 열람을 요구할 수 있습니다. 다만 개인정보 열람 요구는 개인정보보호법 제35조 제5항에 의하여 다음과 같이 제한될 수 있습니다.<br/>
                    - 법률에 따라 열람이 금지되거나 제한되는 경우<br/>
                    - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우<br/>
                    <br/>
                    2. 개인정보 정정•삭제 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제36조(개인정보의 정정, 삭제)에 따라 “병원”에 개인정보의 정정, 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br/>
                    <br/>
                    3. 개인정보 처리정지 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제37조(개인정보의 처리정지 등)에 따라 병원에 개인정보의 처리정지를 요구할 수 있습니다. 또한 만 14세 미만 아동의 법정대리인은 병원에 그 아동의 개인정보의 열람, 정정, 삭제, 처리정지 요구를 할 수 있습니다. 다만, 개인정보 처리정지 요구시 「개인정보보호법」 제37조 제2항에 의하여 처리정지 요구가 거절될 수 있습니다.<br/>
                    - 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우<br/>
                    - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우<br/>
                    - 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우<br/>
                    <br/>
                    ■ 개인정보의 파기절차 및 파기방법<br/>
                    “병원”은 원칙적으로 개인정보의 보유기간이 경과했거나 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br/>
                    <br/>
                    1. 파기절차<br/>
                    이용자가 입력한 정보는 보유기간이 경과했거나 처리목적이 달성 후 내부 방침 및 관련 법령에 따라 파기합니다. (개인정보처리 및 보유기간 참조)<br/>
                    <br/>
                    2. 파기기한<br/>
                    이용자의 개인정보는 개인정보의 보유기간이 경과된 경우 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br/>
                    <br/>
                    3. 파기방법<br/>
                    “병원”에서 처리하는 개인정보를 파기할 때에는 다음의 방법으로 파기 합니다.<br/>
                    - 전자적 파일 형태인 경우: 복원이 불가능한 방법으로 영구삭제<br/>
                    - 전자적 파일의 형태 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우: 파쇄 또는 소각<br/>
                    <br/>
                    ■ 개인정보의 안전성 확보 조치<br/>
                    “병원”은 (개인정보보호법) 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.<br/>
                    <br/>
                    1. 내부관리계획의 수립 및 시행<br/>
                    “병원”은 (개인정보보호법) 제29조에 따라 내부관리 계획을 수립 및 시행합니다.<br/>
                    <br/>
                    2. 개인정보취급자 지정의 최소화 및 교육<br/>
                    개인정보취급자의 지정을 최소화하고 내부관리 계획에 따라 정기적인 교육을 시행하고 있습니다.<br/>
                    <br/>
                    3. 관리적 대책<br/>
                    - 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보보호정책에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.<br/>
                    - 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.<br/>
                    <br/>
                    4. 개인정보에 대한 접근 제한<br/>
                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근을 통제하고, 침입차단시스템과 탐지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며 권한 부여, 변경 또는 말소에 대한 내역을 기록하고, 그 기록을 최소 3년간 보관하고 있습니다.<br/>
                    <br/>
                    5. 접속기록의 보관 및 위변조 방지<br/>
                    개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 관리하고 있습니다.<br/>
                    <br/>
                    6. 개인정보의 암호화<br/>
                    이용자의 개인정보는 암호화 되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.<br/>
                    <br/>
                    7. 해킹 등에 대비한 기술적 대책<br/>
                    병원은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.<br/>
                    <br/>
                    8. 비인가자에 대한 출입 통제<br/>
                    개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br/>
                    <br/>
                    ■ 개인정보 보호책임자<br/>
                    “병원”은 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br/>
                    이름 : 문홍열<br/>
                    직위 : 팀장<br/>
                    소속 : 트루스마일테크놀러지<br/>
                    전화 : 010-4358-3310<br/>
                    메일 : truesmiletech.official@gmail.com<br/>
                    <br/>
                    ■ 개인정보 처리방침의 변경<br/>
                    이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.<br/>
                    - 시행일자: 2011년 9월 30일<br/>
                    <br/>
                    ■ 권익침해 구제방법<br/>
                    고객은 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.<br/>
                    - 개인정보침해신고센터 / privacy.kisa.or.kr / 국번없이 118<br/>
                    - 대검찰청 사이버수사과 / www.spo.go.kr / 국번없이 1301<br/>
                    - 경찰청 사이버안전국 / police.go.kr / 국번없이 182
                </p>
            </div>
        </div>
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
	var agree = document.querySelector(".agBox .legend");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
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


    $('li.btn_submit').bind('click',function() {
		$('#form-1').submit();
	})

	$('input[name*="tadd"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

	$('.agBox label').bind('click',function(){
		$('input[name="agBox"]').closest('.agBox').addClass('on');
	});

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

	$('a.disagree').bind('click',function(){
        const $agBox = $('input[name="agBox"]').closest('.agBox');

        // 상태 초기화
        $agBox.removeClass('on');

        const $checkbox = $agBox.find('input[name="agBox"]');
        $checkbox.prop('checked', false);
        $checkbox.val('n');

		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	});


	// radio value값 츨략
	$('input:radio[name="tadd1"]').click(function(){
		var checked = $(this).val();
		$('.add1_value').show();
		$('.add1_value').html(checked);
	})

	$('input:radio[name="tadd2"]').click(function(){
		var checked = $(this).val();
		let labelText = $(this).closest('label').text().trim();
		$('.add2_value').show();
		$('.add2_value').html(labelText)
	})

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
				// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("연령대를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("필요한 개수를 선택해주세요.");
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
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '연령대'
			,'add2': '필요한 개수'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>