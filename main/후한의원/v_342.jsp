<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css');

    * {font-family: "Pretendard", sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    html{
        height: 100%;
    }
    main {position: relative;}
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}
    .wrap_form .agBox {margin: 7px auto;}

    /* .modal2 .modal-content p, .modal3 .modal-content p, .modal4 .modal-content p {height: auto;} */

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 4.5rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'GangwonEducationTteontteon';}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 530px; overflow: hidden; background-color: #f8f8f8;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    #page_landing_c main {max-width: 1080px; background-color: #000;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

    #wrap{font-family: 'noto sans kr'; overflow: hidden;}
    .top-img {width: 100%; margin: 0 auto;}

    .img-area {position: relative; display: block; width: 100%; height: 100%;}
    .img-area .btm_box {position: absolute; bottom: 4%; left: 5%; width: 45.37037%; color: #fff;}
    #page_landing_c .btm_box .agBox label span {color: #fff;}
    #page_landing_c  .img-area .btm_box .agBox {margin: 0 auto 2%; color: #fff; transition: 0s;}
    #page_landing_c  .img-area .btm_box .agBox .btn-agreement {font-weight: 700;}
    #page_landing_c  .img-area .btm_box2 {bottom: 7%; left: 50%; transform: translateX(-50%); width: 67.592593%;}
    #page_landing_c  .img-area .btm_box2 .agBox {margin: 2% auto 0; color: #000;}
    #page_landing_c .btm_box2 .agBox label span {color: #000;}

    .q_text {width: 85.581395%; margin: 0 auto;}
    
    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
   
    #page_landing_c .wrap_curd .q_group {font-family: 'Gmarket Sans'; padding: 56px 0; text-align: center; border: 3px solid #ff7800; border-radius: 5px;}
    #page_landing_c .wrap_curd .q_group .q_txt {font-family: 'Gmarket Sans'; font-size: 215%; font-weight: 500;}
    .q_select + .q_txt {margin-top: 5%;} 
    .wrap_form input[type="radio"] + span:before {border-radius: 0;}
    .wrap_form input[type="checkbox"] + span, .wrap_form input[type="radio"] + span {padding: 0 4px 0 32px;}

    #page_landing_c .wrap_form {}
    #page_landing_c .wrap_curd {background-color: #fff; border-radius: 9px;}
    #page_landing_c .wrap_curd .question_container {padding: 7% 0 0;}
    /* #page_landing_c .wrap_curd .question_container .q_text {width: 62.575%; padding-top: 5.645%; border-top: 3px solid #333364;} */

    /* user db입력칸 (이름) */
    #page_landing_c .wrap_curd .q_select {display: flex; align-items: center; justify-content: center; font-size: 35px; font-weight: 500;}
    #page_landing_c .description p, #page_landing_c .description .ad_txt {text-align: center; font-family: 'Pretendard';}
    #page_landing_c .wrap_curd label + label {margin-left: 3%;}
    
    #page_landing_c .description {width: 100%; padding: 2.37% 3.9% 1.37%; text-align: center; font-family: 'Pretendard';}
    #page_landing_c .description p {color: #000; padding: 0; font-size: 150%; letter-spacing: -0.02em;}
    #page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}
    #page_landing_c .description .ad_txt,
    #page_landing_c .description .target {color: #000; font-size: 150%; padding: 0; letter-spacing: -0.02em;}

    #page_landing_c .question {position: relative;}
    #page_landing_c .question_box {width: 100%; margin: 6.635% auto 4%;}
    #page_landing_c .question_box  [class^="user_"] {display: flex; align-items: center; justify-content: center; column-gap: 32px;}
    #page_landing_c .question_box > div:not(.formContents),
    #page_landing_c .question_box > .legend {width: 100%; font-size: 150%;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 2.655%;}
    #page_landing_c .legend {flex-shrink: 0; position: relative; display: block; width: 25%; height: 35px; font-size: 167%; font-weight: 600; line-height: 1; letter-spacing: -1.78px; color: #000;}
    #page_landing_c .legend::after {content: ''; display: inline-block; width: 100%;}
    #page_landing_c .agBox {text-align: center; color: #000; font-size: 180%; margin: 0% auto 1%; font-family: 'Pretendard';}
    #page_landing_c .agBox .legend {max-width: max-content;}
    #page_landing_c .agBox .btn-agreement {line-height: 1;}

    #page_landing_c input[type="checkbox"] + span {color: #000;}
    #page_landing_c input[type="checkbox"]:checked + span:after {border-color: #000;}
    #page_landing_c .agBox label {display: flex; align-items: center;} 
    #page_landing_c .agBox label span {color: #000;} 
    .wrap_form .agBox a {color: #000;}

    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* #page_landing_c .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

    /* user db입력칸 (이름) */
    #page_landing_c .user_info {width: 90%; margin: 0 auto;}
    #page_landing_c .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    #page_landing_c .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
    position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

    .wrap_form .table_box, #page_landing_c .inp {width: 100%;
    margin-left: 0; font-size: 215%; border-radius: 5px; text-align: center;
    border: 3px solid #ff7800; font-family: 'Gmarket Sans';
    border-radius: 5px; min-height: 34px; padding: 2.488% 8.335%; box-sizing: border-box; transition: 0s;}
    #page_landing_c .inp::placeholder {color: #929292;}
    .wrap_form .table_box {margin-top: 4.655%; margin-bottom: 2.655%;  color: #000; font-family: 'Gmarket Sans' !important; font-size: 323% !important; display: block; height: 100%; width: 100%; appearance: none; background: url("//static.savemkt.com/event/v_${eventSeq}/arrow.png") no-repeat right 10% center / 34px 17px; text-align: center; text-align-last: center; /* 핵심 */}

    #page_landing_c ul.table_box{width:90%;}
    #page_landing_c ul.table_box li{display: flex; margin-bottom:2%;   }
    #page_landing_c ul.table_box li  > * {background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
    #page_landing_c ul.table_box li .th{width:20%;}
    #page_landing_c ul.table_box li .td{width: 78%; display:none; position: relative;}
    #page_landing_c ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
    #page_landing_c ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}

    .question_container {padding: 3% 0 0;}

    .btn-area {position: relative;}
    .btn-area .db_btn {position: absolute; bottom: 3.07%; padding: 0 3.7%;}

    .gif-area {overflow: hidden;}
    .gif-area img {width: calc(100% + 1px); margin: -1px;}

    .mr-1 {width: calc(100% + 1px);}

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
        cursor: pointer;
    }

    /* 상단 슬라이드 */
/* .swiper-area .swiper-container {position: absolute; bottom: 0; left: 4.825%; width: 90.353%; border: 2px solid rgba(56, 38, 92, 0.35); box-shadow: 7px 0 7px rgba(0, 0, 0, 0.15); background-color: #fafafa; border-radius: 25px; padding: 2.408% 3.797% 6.575%;} */
/* .swiper-area .swiper-pagination {bottom: 5% !important;}
.swiper-pagination-bullet {width: 21px !important; height: 17px !important; background-color: #cbb5dd !important; border-radius: 8px !important; opacity: 1 !important;}
.swiper-pagination-bullet-active {background-color: #38265c !important; width: 52px !important;}
.swiper-slide img {width: 100%;} */
.swiper-container {position: absolute; left: 50%; bottom: 11%; transform: translateX(-50%); width: 83.796297%;}
.bottom-area .swiper-container {bottom: 6%;}
    
@media screen and (max-width: 820px){
    .timer-box #timer {font-size: 2.5rem;}
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
@media screen and (max-width: 640px){
}
@media screen and (max-width: 480px){
    #page_landing_c .wrap_curd .q_group {padding: 36px 0 26px;}
    #page_landing_c .wrap_curd .q_group .q_txt {font-size: 95%;}
    .swiper-area .swiper-container {border-radius: 10px;}
    .swiper-area .swiper-pagination {bottom: 1% !important;}
    .swiper-pagination-bullet {width: 11px !important; height: 8px !important; border-radius: 4px !important;}
    .swiper-pagination-bullet-active {width: 32px !important;}
    #page_landing_c .img-area .btm_box .agBox {font-size: 70%; font-weight: 400;}
    #page_landing_c .btm_box .agBox label span {font-size: 80%;}
    #page_landing_c .description {padding: 3.37% 0 2.37%;}
    #page_landing_c .description p {font-size: 90%;}
    #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 90%; word-break: keep-all;}
    #page_landing_c .agBox label span {font-size: 90%;}
    /* #page_landing_c .wrap_form .agBox a {font-size: 50%;} */
    /* #page_landing_c .wrap_form {padding: 0px 9.45% 30px !important;} */
    #page_landing_c .legend {font-size: 90%; height: 25px;}
    #page_landing_c .inp {font-size: 135%; border-radius: 1rem; border-width: 4px;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 5.1%;}
    #page_landing_c .question_box .q_select label {height: 56px; font-size: 50%;}

    .wrap_form input[type="checkbox"] + span, .wrap_form input[type="radio"] + span {
    padding: 0 4px 0 22px;}
    .wrap_form .table_box.bottom {text-align: center; font-size: 202% !important; border-radius: 1rem; border-width: 4px; width: 98%; background-size: 14px 7px; background-position: right 5% center; margin: 4.655% auto;}

    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: 7px 5px;}
    #page_landing_c .agBox {font-size: 90%;}

}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}
    /* #page_landing_c .wrap_form .description.orage-box > * {font-size: 85%;} */

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
        <div class="img-area swiper-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
            <div class="swiper-container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_04.png"></div>
                        <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_05.png"></div>
                        <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_06.png"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="img-area count-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>


        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                <div class="formGroup">
                    <div class="form_inner">
                        <div class="question_container">
                            <div class="q_text img-area">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/txt.png">
                            </div>
                            <div class="question_box">
                                <div class="q_group">
                                    <div class="q_txt">Q1. 현재 연령이 어떻게 되시나요?</div>
                                    <div class="q_select">
                                        <label><input type="radio" name="tage" value="20"><span>20대</span></label>
                                        <label><input type="radio" name="tage" value="30"><span>30대</span></label>
                                        <label><input type="radio" name="tage" value="40"><span>40대</span></label>
                                        <label><input type="radio" name="tage" value="50"><span>50대</span></label>
                                    </div>
                                    <div class="q_txt">Q2. 성별은 어떻게 되시나요?</div>
                                    <div class="q_select">
                                        <label><input type="radio" name="tadd1" value="남성"><span>남성</span></label>
                                        <label><input type="radio" name="tadd1" value="여성"><span>여성</span></label>
                                    </div>
                                </div>
                                <select name="tadd2" class="table_box bottom" id="add2" required>
                                    <option value="">지점 선택</option>
                                    <option value="강남점">강남점</option>
                                    <option value="신림점">신림점</option>
                                    <option value="노원점">노원점</option>
                                    <option value="대전점">대전점</option>
                                    <option value="천안점">천안점</option>
                                    <option value="청주점">청주점</option>
                                    <option value="창원점">창원점</option>
                                    <option value="춘천점">춘천점</option>
                                    <option value="원주점">원주점</option>
                                    <option value="부산점">부산점</option>
                                    <option value="구미점">구미점</option>
                                    <option value="부천점">부천점</option>
                                    <option value="인천점">인천점</option>
                                    <option value="수원점">수원점</option>
                                    <option value="분당점">분당점</option>
                                    <option value="일산점">일산점</option>
                                    <option value="안양점">안양점</option>
                                    <option value="대구점">대구점</option>
                                    <option value="울산점">울산점</option>
                                    <option value="광주점">광주점</option>
                                    <option value="전주점">전주점</option>
                                    <option value="제주점">제주점</option>
                                </select>
                                <div class="user_name">
                                    <!-- <span class="legend">이 름</span> -->
                                    <input type="text" name="name" id="name" class="inp" required placeholder="이름" autocomplete="off">
                                </div>
                                <div class="user_phone">
                                    <!-- <span class="legend">연 락 처</span> -->
                                    <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                </div>
                                <!-- <div class="user_text">
                                    <span class="legend">문 의</span>
                                    <input type="text" name="tadd1" id="tadd1" class="inp" required placeholder="(선택 사항)">
                                </div> -->
                            </div>   
                        </div>

                    </div>
                    
                    <div class="agBox">
                        혜택 제공을 위한 <a href="javascript:void(0);" class="btn-agreement"> 개인정보 처리방침</a>에 동의해주세요
                    </div>

                    <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>	

                    <!-- <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집 및 이용동의</span></label> <a href="#" class="btn-agreement">[내용 보기]</a>
                    </div> -->
                </div>

                <div class="description">
                    <p id="event-period"></p>
                    <span class="target">대상 : ${resVo.target}</span>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br />상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>

                <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
                <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
                <input type="hidden" id="site" 			name="site" value="${site}"/>
                <input type="hidden" id="media" 		name="media" value="${media}"/>
                <input type="hidden" id="interlock" 	name="interlock" value="${resVo.interlock}"/>
                <input type="hidden" id="checkAgeMin" 	name="checkAgeMin" value="${resVo.checkAgeMin}"/>
                <input type="hidden" id="checkAgeMax" 	name="checkAgeMax" value="${resVo.checkAgeMax}"/>
                <input type="hidden" id="checkGender" 	name="checkGender" value="${resVo.checkGender}"/>
                <input type="hidden" id="age" 			name="age" value=""/>
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
        
        <div class="img-area swiper-area bottom-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg">
            <div class="swiper-container">
                <div class="swiper mySwiper2">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_01.png"></div>
                        <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_02.png"></div>
                        <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_03.png"></div>
                    </div>
                </div>
            </div>
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
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
        </div>
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    개인정보처리방침<br />
                    병원 제휴의 요청 개인정보 수집 및 이용 동의<br /><br />

                    [개인정보 수집 및 이용 동의]<br /><br />

                    - 수집 · 이용 주체 : 이벤트 신청<br />
                    - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br />
                    - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br />
                    - 보유 및 이용 기간 : 의료법 등 관련 병령에서 정한 보존 기간<br /><br />

                    * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.<br />
                    * 고객 동의 철회 시 지체없이 파기합니다.<br /><br />


                    [개인정보 처리위탁 동의]<br /><br />

                    - 수탁자 : 병원 제휴의 요청<br />
                    - 위탁 업무 내용<br />
                    └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                    └ 고객정보 서버 운영 및 관리<br />
                    └ 서비스 신청 내역 관리를 위한 개인정보 전송<br />
                    └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br />
                    - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                </p>
            </div>
        </div>
    </main>
</body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();

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

    // 상단 슬라이드
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        // centeredSlides: true,
        speed: 700,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        loop:true,
        // pagination: {
        //     el: ".swiper-pagination",
        // },
    });

    // 하단 슬라이드
    var swiper2 = new Swiper(".mySwiper2", {
        spaceBetween: 30,
        // centeredSlides: true,
        speed: 700,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        loop:true,
        // pagination: {
        //     el: ".swiper-pagination",
        // },
    });
	
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

        let tage = procForm.querySelector(`input[name="tage"]:checked`);
		if (!tage) {
			alert("연령을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
		}

        let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("성별을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

        let selectedRadio2 = procForm.querySelector(`select[name="tadd2"]`).value;
        if (!selectedRadio2) {
            alert("지점 항목을 선택해주세요.");
            return;
        } else {
            procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
        }
        
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("연령대를 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

		// let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		// if (!selectedRadio2) {
		// 	alert("고민사항을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		// }

		// let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		// if (!selectedRadio3) {
		// 	alert("전화상담 가능시간을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		// }

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
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>