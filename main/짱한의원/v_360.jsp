<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-4Regular.woff2') format('woff2');
    font-weight: 400;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-5Medium.woff2') format('woff2');
    font-weight: 500;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-6SemiBold.woff2') format('woff2');
    font-weight: 600;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-7Bold.woff2') format('woff2');
    font-weight: 700;
    font-display: swap;
}

* {font-family: "Presentation", sans-serif; box-sizing: border-box;}
#wrap {background: #fff;}
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

#page_landing_c main {max-width: 860px; background-color:#fff; padding-bottom: 6rem;}
#page_landing_c {padding: 0; border: 0;}
#page_landing_c .btn_submit {background-color: transparent !important;}
input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

#wrap{font-family: 'noto sans kr'; overflow: hidden;}

.img-area {position: relative;}
.img-area .btm_box {position: absolute; bottom: 4%; left: 50%; transform: translateX(-50%); width: 70%; color: #fff;}
#page_landing_c .btm_box .agBox label span {color: #fff;}
#page_landing_c  .img-area .btm_box .agBox {margin: 0 auto 2%; color: #fff; transition: 0s;}
#page_landing_c  .img-area .btm_box .agBox .btn-agreement {font-weight: 700;}
#page_landing_c  .img-area .btm_box2 {bottom: 7%; left: 50%; transform: translateX(-50%); width: 67.592593%;}
#page_landing_c  .img-area .btm_box2 .agBox {margin: 2% auto 0; color: #000;}
#page_landing_c .btm_box2 .agBox label span {color: #000;}

.q_text {width: 85.581395%; margin: 0 auto;}

.select-box {width: 100%;}
.select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}

#page_landing_c .wrap_form {background-color: #fff; padding: 43px 34px 30px !important; border: none;}
#page_landing_c .wrap_curd {background-color: #fff;}
#page_landing_c .wrap_curd .question_container {padding-top: 0 !important;}

/* user db입력칸 (이름) */
#page_landing_c .wrap_curd .q_select {display: grid; grid-template-columns: repeat(3, 1fr); gap: 1%; font-size: 150%; flex-grow: 1;}
#page_landing_c .description p, #page_landing_c .description .ad_txt {text-align: center;}

#page_landing_c .description {width: 100%; padding: 3.37% 3.9% 1.37%; text-align: center;}
#page_landing_c .description p {color: #000; padding: 0; font-weight: 300; font-size: 150%; letter-spacing: -0.02em;}
#page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}
#page_landing_c .description .ad_txt,
#page_landing_c .description .target {color: #000; font-size: 150%; padding: 0; letter-spacing: -0.02em; font-weight: 300;}

#page_landing_c .question {position: relative;}
#page_landing_c .question_box {width: 100%; margin: 10% auto 4%;}
#page_landing_c .question_box  [class^="user_"] {display: flex; align-items: center; column-gap: 32px;}
#page_landing_c .question_box > div:not(.formContents),
#page_landing_c .question_box > .legend {width: 100%; font-size: 150%;}
#page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 8.1%;}
#page_landing_c .legend {flex-shrink: 0; position: relative; display: block; width: 25%; height: 35px; font-size: 167%; font-weight: 600; line-height: 1; letter-spacing: -1.78px; color: #000; text-align: justify;}
#page_landing_c .legend::after {content: ''; display: inline-block; width: 100%;}
#page_landing_c .agBox {text-align: center; display: flex; align-items: center; justify-content: center; color: #000; font-size: 180%; margin: 4% auto 1%; font-family: 'Presentation';}
#page_landing_c .agBox .legend {max-width: max-content;}

#page_landing_c input[type="checkbox"] + span {color: #000;}
#page_landing_c input[type="checkbox"]:checked + span:after {border-color: #000;}
#page_landing_c .agBox label {display: flex; align-items: center;} 
#page_landing_c .agBox label span {color: #000;} 
.wrap_form .agBox a {color: #000;}

.selected_area{background-color:#000; padding:3% 5%;}
#page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
/* #page_landing_c .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

/* 설문값, 동의, 미동의 버튼 공통 */

#page_landing_c .question_box .q_select label {background-color: #fff; width: 100%; height: 76px;}
#page_landing_c .question_box .q_select label, 
label.selected_label {display: inline-flex; align-items: center; justify-content: center; border-radius:0.5rem; font-size: 100%; text-align: center;  color: #0a151e; font-weight: 400; cursor: pointer; padding: 3% 2%; border:1px solid #bebebe;}
    #page_landing_c .question_box .q_select label + label {margin-left: 1%;}
    /* #page_landing_c .question_box .question:nth-of-type(2) .q_select label:last-child {padding: 0;} */
#page_landing_c .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000;}
#page_landing_c .question_box .q_select label.on, label.add3{background-color: #8ed3ff; color:#00385c;}

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

#page_landing_c .inp {font-size: 3rem; text-align: center; border: 2px solid #60002d; border-radius: 0.5rem; margin: 0.5rem 0; padding: 1rem 0;}
#page_landing_c .inp::placeholder {color: #929292;}
/* #page_landing_c input[type="checkbox"] + span:before {border-color:#fff;} */
/* #page_landing_c .submit input[type="image"] {animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;} */

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
    width: 90%;
    margin: 0 auto 0;
}

.db_btn, .submit input[type="image"] {
    animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;
}


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

/* 슬라이드 영역 */
.silde-wrap {max-width: 860px; position: relative;}
.swiper.mySwiper {position: absolute; top: 28%; left: 50%; transform: translateX(-50%); width: 80%;}
.swiper-slide {}
.swiper-slide img {width: 100%;}

/* 설문영역 */
.question-box {}
.question-box .question {width: 50%; margin: 0 auto;}
.question-box .question img {width: 100%;}
input:is([type="checkbox"]) {width: 0; height: 0;}

.question-box .q_select {padding: 2rem; display: flex; flex-wrap: wrap; column-gap: 1rem;}
.question-box .q_select label {width: 49%;}

/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 0%; cursor: pointer; max-width: 860px;}

/* submit 버튼 애니메이션 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}
    
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

    #page_landing_c .formGroup .user_info {font-size: 4vw; padding: 2.9% 3.95% 3%;}
    #page_landing_c .wrap_form .submit .submit-box {padding-top: 4%; font-size: 5.5vw;}

    #page_landing_c .question_box {width: 90%;}
    .wrap_form .agBox {width: 100%;}

    .wrap_form input[type="checkbox"] {width: 15px !important; height: 15px !important; border: 1px solid #000 !important;}
    #page_landing_c .wrap_curd label {font-size: 12px;}
    #page_landing_c .formGroup .user_info + .user_info {margin-top: 3%;}
    #page_landing_c .formGroup .user_info input {margin-left: 5px;}

    .wrap_form .description p, .wrap_form .description .ad_txt {font-size: 3.85vw;}
    #page_landing_c .question_box .q_select label, label.selected_label {font-size: 85%;}

}
@media screen and (max-width: 640px){
}
@media screen and (max-width: 480px){
    #page_landing_c .img-area .btm_box .agBox {font-size: 70%; font-weight: 400;}
    #page_landing_c .btm_box .agBox label span {font-size: 80%;}
    #page_landing_c .description {padding: 3.37% 0 1.37%;}
    #page_landing_c .description p {font-size: 90%;}
    #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 90%;}
    #page_landing_c .agBox label span {font-size: 90%;}
    /* #page_landing_c .wrap_form .agBox a {font-size: 50%;} */
    /* #page_landing_c .wrap_form {padding: 40px 20px 30px !important;} */
    #page_landing_c .legend {font-size: 90%; height: 25px;}
    #page_landing_c .inp {font-size: 90%;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 5.1%;}
    #page_landing_c .question_box .q_select label {height: 56px; font-size: 70%;}

    #page_landing_c .agBox {font-size: 90%;}

    .question-box .q_select label {width: 47%;}
    .question-box .q_select {padding: 1rem;}

    #page_landing_c .wrap_form {padding: 1rem 2rem !important;}

    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {font-size: 2rem; padding: 0.5rem 0;}

}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 85%;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css" type="text/css"/>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<!-- swiper -->
<script src="https://cdn.jsdelivr.net/npm/swiper@14.0.1/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@14.0.1/swiper-bundle.min.css" />

<body id="page_landing_c" class="loaded">
    <main>
        <div class="img-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
            <div class="btm_box">
                <div class="db_btn"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png"></div>
                <!-- <div class="agBox">
                    <label><span>개인정보처리방침에 동의합니다. </span></label>&nbsp;<a href="#" class="btn-agreement">[보기]</a>
                </div> -->
            </div>
        </div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="silde-wrap">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_01.png"></div>
                    <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_02.png"></div>
                    <div class="swiper-slide"><img src="//static.savemkt.com/event/v_${eventSeq}/slide_03.png"></div>
                </div>
            </div>
        </div>

        <div class="question-box">
            <div class="question"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png"></div>
            <div class="q_select">
                <label><input type="checkbox" name="tadd1[]" value="뱃살 팔뚝살 허벅지살"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_01.png"></label>
                <label><input type="checkbox" name="tadd1[]" value="식욕 조절"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_02.png"></label>
                <label><input type="checkbox" name="tadd1[]" value="반복되는 요요"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_03.png"></label>
                <label><input type="checkbox" name="tadd1[]" value="출산 후 체중"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_04.png"></label>
                <label><input type="checkbox" name="tadd1[]" value="갱년기 뱃살"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_05.png"></label>
                <label><input type="checkbox" name="tadd1[]" value="기타"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_06.png"></label>
            </div>
        </div>

        <!-- <div class="img-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg">

            <div class="btm_box btm_box2">
                <div class="db_btn"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png"></div>
                <div class="agBox">
                    <label><span>개인정보처리방침에 동의합니다. </span></label>&nbsp;<a href="#" class="btn-agreement">[보기]</a>
                </div>
            </div>
        </div> -->

            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <div class="formGroup">
                        <div class="form_inner">
                            <div class="db-box">
                                <input type="text" name="name" id="name" class="inp" required placeholder="이름을 입력해 주세요" autocomplete="off">
                                <input type="tel" name="age" id="age" class="inp" required=""  placeholder="나이를 입력해 주세요" autocomplete="off" maxlength="2" placeholder="">
                                <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                            </div>
                        </div>

                        <div class="agBox">
                            <label><input type="checkbox" name="agBox">
                                <span>개인정보 처리방침에 동의합니다.</span>
                            </label><a href="javascript:void(0);" class="btn-agreement">[보기]</a>
                        </div>

                        <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb.png" /></div>	

                    </div>

                    <div class="description">
                        <p id="event-period"></p>
                        <!-- <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div> -->
                        <span class="target">대상 : ${resVo.target}</span>
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
                </p>
            </div>
        </div>

        <div class="img-area fixed db_btn"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_02.png"></div>
    </main>
</body>
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        saleupAgreement3();

        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    //설문 on/off
    $('input[name="tadd1[]"]').on('change', function () {
        const $img = $(this).closest('label').find('img');

        if ($(this).is(':checked')) {
            $img.attr('src', $img.attr('src').replace('_off', '_on'));
        } else {
            $img.attr('src', $img.attr('src').replace('_on', '_off'));
        }
    });

    
    // $('input[name="tadd1[]"]').on('change', function () {
    //     const $tadd1Inputs = $('input[name="tadd1[]"]');
    // });

    // $('input[name="tadd1[]"]').on('change', function () {
    //     console.log($(this).val(), $(this).is(':checked'));
    // });

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
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        
        thisAgreementWithText(`
            개인정보 처리방침

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

            ■ 개인정보 처리의 위탁
            본원은 서비스 제공 및 상담 처리를 위하여 아래와 같이 개인정보 처리업무를 위탁하고 있습니다.

            - 수탁업체 :  ㈜세이브마케팅 / savemarketing1@gmail.com
            - 위탁업무 내용 : 광고를 통한 개인정보 처리 및 보관, 서버 관리

            본원은 위탁계약 체결 시 「개인정보 보호법」에 따라 위탁업무 수행 목적 외 개인정보 처리 금지, 기술적·관리적 보호조치, 재위탁 제한 등을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.

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

    // 슬라이드 영역
    var swiper = new Swiper('.mySwiper', {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 5000,
          disableOnInteraction: false,
        },
        slidesPerView: 1,
        loop:true,
      });

    var images = [
        'event_main_02_01.jpg',
        'event_main_02_02.jpg',
        'event_main_02_03.jpg'
    ];
    var $img = $('.on-off-img img');
    var currentIndex = 0;

    setInterval(function() {
        currentIndex = (currentIndex + 1) % images.length;
        $img.attr('src', '//static.savemkt.com/event/v_${eventSeq}' + '/' + images[currentIndex]);
    }, 1000); // 1초마다
	
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

    // wrap_form 영역에 있으면 버튼 숨김
    $(window).on('scroll', function () {

        const scrollTop = $(window).scrollTop();
        const windowHeight = $(window).height();

        const formTop = $('.wrap_form').offset().top;
        const formBottom = formTop + $('.wrap_form').outerHeight();

        // 화면이 wrap_form 영역과 겹치는 경우
        if (scrollTop + windowHeight > formTop && scrollTop < formBottom) {
            $('.db_btn').fadeOut(200);
        } else {
            $('.db_btn').fadeIn(200);
        }
    });

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

        // 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
        const checkedValues = $('input[name="tadd1[]"]:checked').map(function () {
            return this.value;
        }).get();

        if (checkedValues.length < 1) {
            alert("설문을 선택해주세요.");
            return false;
        }

        procForm.querySelector("input[name='add1']").value = checkedValues.join(',');

        // let selectedRadio1 = procForm.querySelector('input[name="tadd1"]').value;
        // procForm.querySelector("input[name='add1']").value = selectedRadio1;
        
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
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);

        return false;
	}
</script>