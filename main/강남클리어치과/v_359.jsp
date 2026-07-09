<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/S-CoreDream/S-CoreDream.css');

    #page_landing_c .wrap_curd label {gap: 0; display: block;}
    * {font-family: 'Gmarket Sans', 'Pretendard', sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    html{
        height: 100%;
    }
    main {position: relative;}
	.content {padding: 20px 10px;}
	.content * {padding: 8px 10px;}
    .wrap_form .agBox {margin: 7px auto;}
    .page:not(#page-1){display:none;}
    .paging button {width: 100%; cursor: pointer; background-color: #fff; border-radius: 999px;}
    .gage {margin: 4.295% 0 8%;}
    .page:not(#page-1) .paging {width: 65.937%; margin: 0 auto;}

    #page_landing_c .wrap_curd .count-area {position: relative;}
    #page_landing_c .wrap_curd .count-area .count-box {position: absolute; left: 55.5%; transform: translateX(-50%); width: 150px; color: #00e4ff; top: 30%; font-size: 62px; font-style: italic; text-align: center;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #23000c; padding: 0 4.5rem 4rem;}
    .subscribe_bg {background: #f8f8f8; padding: 2.75% 3.5%; border-radius: 20px}
    .subscribe_container .title {display: flex; align-items: center; justify-content: center; padding: 3.5rem 0 0; column-gap: 1.2rem; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'Gmarket Sans';}
    .subscribe {height: 185px; overflow: hidden; background-color: #f8f8f8; padding: 0;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 0;}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 3);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }

    #page_landing_c main {max-width: 1080px; background-color: #8e8e8e;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

    #wrap{font-family: 'Gmarket Sans'; overflow: hidden;}

    .video-wrap {position: relative;}
    .video-wrap::before {content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: linear-gradient(
    90deg,
    rgba(0, 0, 0, 0.85) 0%,
    rgba(0, 0, 0, 0.5) 40%,
    rgba(0, 0, 0, 0.15) 75%,
    rgba(0, 0, 0, 0) 100%
);}
    .video-wrap::after {content: ''; position: absolute; bottom: 8.74%; left: 3.65%; width: 72.962963%; height: 62.883%; background: url('//static.savemkt.com/event/v_${eventSeq}/main_txt_01.png') no-repeat center center / 100% 100%;}
    .video-box video {display: block; width: 100%; height: 100%;}
    .video-box::after {content: '* 생성형 AI 모델 영상 사용'; position: absolute; bottom: 1%; right: 1%; color: rgba(255, 255, 255, 0.15); font-size: 15px;}

    #page-1 .video-wrap + .img-area {position: relative;}
    #page-1 .video-wrap + .img-area .inner {position: absolute; left: 50%; bottom: 31%; width: 70%; transform: translateX(-50%);}

    .img-area {position: relative;}
    .img-area .btm_box {position: absolute; bottom: 4%; left: 5%; width: 45.37037%; color: #fff;}

    #page_landing_c .wrap_form {padding: 0; border: none;}
    #page_landing_c .wrap_curd {background: transparent;}
    /* #page_landing_c .wrap_curd .question_container {padding: 10% 4.951% 0;} */
    /* user db입력칸 (이름) */
    /* #page_landing_c .wrap_curd .q_select {display: grid; grid-template-columns: repeat(3, 1fr); gap: 1%; font-size: 150%; flex-grow: 1;} */
    #page_landing_c .description p, #page_landing_c .description .ad_txt {text-align: center; font-family: 'Elice DX Neolli'; font-weight: 200;}
    
    #page-1 .top-img {z-index: 10; position: fixed; top: 0; left: 50%; transform: translateX(-50%); max-width: 1080px; width: 100%;}
    #page-1 .poster_01 {position: relative;}
    #page-1 .paging {position: absolute; bottom: 5%; left: 50%; transform: translateX(-50%); width: 90%; text-align: center;}

    #page-2, #page-3 {position: relative;}
    #page-2 .inner, #page-3 .inner {position: absolute; width: 80%; left: 50%; top: 15%; transform: translateX(-50%);}
    #page-3 .inner {top: 12%;}

    #page_landing_c #page-3 .question_box {margin-bottom: 3%;}
    

    #page_landing_c .description {width: 100%; padding: 1.37% 3.9% 3.37%; text-align: center; font-family: 'Pretendard';}
    #page_landing_c .description p {color: #000; padding: 0; font-size: 150%; letter-spacing: -0.02em;}
    #page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}
    #page_landing_c .description .ad_txt,
    #page_landing_c .description .target {color: #000; font-size: 150%; padding: 0; letter-spacing: -0.02em;}

    #page_landing_c .question {position: relative;}
    #page_landing_c .question_box {width: 100%; margin: 6.635% auto 9%;}
    #page_landing_c .question_box  [class^="user_"] {display: flex; align-items: center; justify-content: center; column-gap: 32px;}
    #page_landing_c .question_box > div:not(.formContents),
    #page_landing_c .question_box > .legend {width: 100%; font-size: 150%;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 4.655%;}
    #page_landing_c .legend {flex-shrink: 0; position: relative; display: block; width: 25%; height: 35px; font-size: 167%; font-weight: 600; line-height: 1; letter-spacing: -1.78px; color: #000; text-align: justify;}
    #page_landing_c .legend::after {content: ''; display: inline-block; width: 100%;}
    #page_landing_c .agBox {text-align: center; color: #000; font-size: 180%; margin: 2% auto 1%; font-family: 'Pretendard';}
    #page_landing_c .agBox .legend {max-width: max-content;}
    #page_landing_c .agBox .btn-agreement {line-height: 1;}

    #page_landing_c input[type="checkbox"] + span {color: #000;}
    #page_landing_c input[type="checkbox"]:checked + span:after {border-color: #000;}
    #page_landing_c .agBox label {font-family: 'Paperlogy'; font-weight: 200;} 
    .wrap_form .agBox a {color: #000; font-weight: 800}

    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* 설문값, 동의, 미동의 버튼 공통 */
    
    #page_landing_c .question_box .q_select label {display: inline-flex; width: 100%; align-items: center; justify-content: center; border-radius:0.5rem; font-size: 275%; text-align: center;  color: #0a151e; font-weight: 400; cursor: pointer; padding: 3% 2%; background-color: #f3f3f3; border-radius: 27px; font-family: 'Elice DX Neolli';}
    #page_landing_c .question_box .q_select label.on {background-color: #cbcbcb;}
    #page_landing_c .question_box .q_select label + label {margin-top: 4.5%;}

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

    #page_landing_c .inp {font-size: 315%; text-align: center; line-height: 1; color: #111; min-height: 34px; padding: 3.355% 8.335%; box-sizing: border-box; margin-left: 0; line-height: 1; border-radius: 1.5rem; transition: 0s; font-family: 'Gmarket Sans'; background-color: #e5e5e5; border-radius: 30px;}
    #page_landing_c .inp::placeholder {color: #6d6d6d;}
    .wrap_form .table_box {margin-top: 4.655%; color: #464646; font-size: 474% !important; display: block; height: 100%; width: 100%; appearance: none; background: url("//static.savemkt.com/event/v_${eventSeq}/arrow.png") no-repeat right 10% center / 54px 47px;}
    #page_landing_c ul.table_box{width:90%;}
    #page_landing_c ul.table_box li{display: flex; margin-bottom:2%;}
    #page_landing_c ul.table_box li  > * {background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
    #page_landing_c ul.table_box li .th{width:20%;}
    #page_landing_c ul.table_box li .td{width: 78%; display:none; position: relative;}
    #page_landing_c ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
    #page_landing_c ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}

    #page_landing_c .wrap_curd .submit {width: 90%; margin: 0 auto; padding: 6%; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 70%;
        margin: 0 auto 0;
    }

    #page-1 .first {padding: 6%; border-radius: 0; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%;}
    #page-1 .first img,
    .db_btn, .submit input[type="image"] {animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite; width: 70%; margin: 0 auto;}
        
    @keyframes pulsating {
        50% {
            transform: scale(0.95);
        }
    }

    #page-3 .sub-txt {text-align: center; font-size: 17px; font-family: 'Elice DX Neolli'; font-weight: 200;}
    .notice-area {padding: 1%; background-color: #8e8e8e; text-align: center; text-align: center; font-weight: 200;}
    .notice-area > * {margin: 0.5% 0; font-family: 'S-Core Dream'; font-size: 12px;}

@media screen and (max-width: 820px){
    .timer-box #timer {font-size: 2.5rem;}
}
@media screen and (max-width: 768px){
    .subscribe {padding: 3% 2%; height: 80px;}
    .subscribe .content {padding: 0.25rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {width: 70%; margin: 0 auto 0.6875rem; padding: 2rem 0 0; font-size: 1.8rem;}

}
@media screen and (max-width: 480px){
    .video-box::after {font-size: 9px;}
    #page_landing_c .question_box .q_select label {font-size: 125%; border-radius: 12px;}

    #page_landing_c .img-area .btm_box .agBox {font-size: 70%; font-weight: 400;}
    #page_landing_c .btm_box .agBox label span {font-size: 80%;}
    #page_landing_c .description p {font-size: 80%;}
    #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 70%; word-break: keep-all;}
    #page_landing_c .agBox label span {font-size: 90%;}
    #page_landing_c .legend {font-size: 90%; height: 25px;}
    #page_landing_c .inp {font-size: 135%; border-radius: 1rem; border-width: 2px; padding: 2.488% 4.335% !important;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 5.1%;}

    .wrap_form .table_box.bottom {padding: 4.7% 4.335% 2.5%; font-size: 202% !important; border-radius: 1rem; border-width: 2px; width: 97%; background-size: 20px 15px; background-position: right 5% center; margin: 4.655% auto;}

    #page_landing_c .agBox {font-size: 90%; margin-top: 3%;}

    #page-1 .video-wrap + .img-area .inner {bottom: 27%;}

    .gage {margin: 4.295% 0 6%;}

    #page-3 .sub-txt {font-size: 9px; margin-bottom: 5px;}
    .notice-area > * {font-size: 9px;}

    #page-2 .inner, #page-3 .inner {width: 83%;}
    #page_landing_c .wrap_curd .count-area .count-box {top: 20.5%; left: 55%; width: 55px; font-size: 24px;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        
        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                <div class="formContents">
                    <section class="page" id="page-1">
                        <div class="video-wrap">
                            <div class="video-box"><video id="location" playsinline autoplay muted loop src="//static.savemkt.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video></div>
                            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                        </div>
                        <div class="img-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
                            <div class="inner">
                                <div class="poster_01">
                                    <p class="paging">
                                        <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                                    </p>
                                </div>
                                <div class="agBox">
                                    <label><input name="agBox" type="checkbox">혜택 제공을 위한 <a href="#" class="btn-agreement">개인정보 처리방침</a>에 동의해주세요</label>
                                </div>
                            </div>
                        </div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif"></div>
                        
                        <!-- <div class="subscribe_container">
                            <div class="title img-area">
                                <div class="img-area icon-img"><img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.gif"></div>
                                <div class="img-area text-img"><img src="//static.savemkt.com/event/v_${eventSeq}/sub_title.png"></div>
                            </div>
                            <div class="subscribe_bg">
                                <div class="subscribe" data-limit="10"></div>
                            </div>
                        </div> -->
                    </section>
                    
                    <section class="page" id="page-2">
                        <div class="img-area count-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg">
                            <span class="count-box"></span>
                        </div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/bg.jpg"></div>
                        <div class="inner">
                            <div class="img-area poster_02 gage"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                            <div class="img-area poster_03"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                            <div class="question_box">
                                <div class="q_select">
                                    <label><input type="radio" name="tadd1" value="1 ~ 2개">1 ~ 2개</label>
                                    <label><input type="radio" name="tadd1" value="3 ~ 4개">3 ~ 4개</label>
                                    <label><input type="radio" name="tadd1" value="5개 이상">5개 이상</label>
                                </div>
                            </div>
                            <p class="paging">
                                <button type="button" onclick="pageSelFuc(1, show3pg)" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png"></button>
                            </p>
                        </div>
                    </section>
                    
                    <section class="page" id="page-3">
                        <div class="img-area count-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg">
                            <span class="count-box"></span>
                        </div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/bg.jpg"></div>
                        <div class="inner">
                            <div class="img-area poster_02 gage"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                            <div class="img-area poster_03"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png"></div>
                            <div class="formGroup">
                                <div class="form_inner">
                                    <div class="question_container">
                                        <div class="question_box">
                                            <div class="user_name">
                                                <!-- <span class="legend">이 름</span> -->
                                                <input type="text" name="name" id="name" class="inp" required placeholder="성함" autocomplete="off">
                                            </div>
                                            <div class="user_age">
                                                <!-- <span class="legend">나 이</span> -->
                                                <input type="tel" name="age" id="age" class="inp" required="" placeholder="나이" autocomplete="off" maxlength="2">
                                            </div>
                                            <div class="user_phone">
                                                <!-- <span class="legend">연 락 처</span> -->
                                                <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                            </div>
                                        </div>   
                                    </div>
            
                                </div>
                                <p class="sub-txt">타인의 정보를 무단으로 도용할 시, 관련 법령에 따라 제재를 받을 수 있습니다.</p>
                                <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png" /></div>
                            </div>
                            <div class="description">
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br />상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            </div>
                        </div>
                    </section>
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
        
        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div> -->

        <div class="container">
            <div class="notice-area">
                <p id="event-period"></p>
                <span class="target">대상 : ${resVo.target}</span>
                <p>시술 결과는개인에 따라 상이할 수 있으며, 치료방법에 따라 수가가 변동될 수 있습니다.</p>
            </div>
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.png"></div>
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
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    let isAnimating = false;

    // ==========================
    // UI LOCK (핵심)
    // ==========================
    function lockUI() {
        $('body').addClass('ui-lock');
    }

    function unlockUI() {
        $('body').removeClass('ui-lock');
    }

    function isBlocked() {
        return isAnimating;
    }

    if (typeof window.sungmoAgreementWithText !== 'function') {
        window.sungmoAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        
        cleardcAgreement();

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

    let count = 15;
    let countStarted = false;
    let countTimer = null;

    function renderCount() {
        const boxes = document.querySelectorAll('.count-box');
        boxes.forEach(box => {
            box.textContent = count + '명';
        });
    }

    function startCountOnPage2Enter() {
        if (countStarted) return; // 이미 시작했으면 재실행 방지
        countStarted = true;

        count = 15;
        renderCount();

        function decreaseCount() {
            if (count <= 3) return;

            count--;
            renderCount();

            const delay = count >= 7 ? 1000 : 2500;
            countTimer = setTimeout(decreaseCount, delay);
        }

        countTimer = setTimeout(decreaseCount, 1000);
    }

    function syncPage1TopPadding() {
        const $topImg = $('#page-1 .top-img');
        if (!$topImg.length) return;

        const topImgHeight = $topImg.outerHeight() || 0;
        $('#page-1').css({'padding-top': topImgHeight + 'px'});
    }

    // 이미지 로딩/리사이즈 이후에 고정영역 높이를 다시 맞춘다.
    $(window).on('load resize orientationchange', syncPage1TopPadding);
    $('#page-1 .top-img img').on('load', syncPage1TopPadding);
    syncPage1TopPadding();

    // 리프레시 시 브라우저의 스크롤 복원으로 하단에서 시작하는 문제 방지.
    if ('scrollRestoration' in history) {
        history.scrollRestoration = 'manual';
    }
    $(window).on('pageshow', function () {
        window.scrollTo(0, 0);
    });

    $('input[name="tadd1"]').on('change', function () {
        const $tadd1Labels = $('input[name="tadd1"]').closest('label');
        $tadd1Labels.removeClass('on');

        if ($(this).val() === "그 외 지역") {
            $('.overlay, .popup_01').show();
        } else {
            $(this).closest('label').addClass('on');
        }
    });

    // 첫번째 페이지
    function show1pg() {
        const tl = gsap.timeline();

        tl.from('#page-1 .poster_01', {
            y: 50,
            opacity: 0,
            delay: 0.2,
            ease: "power1.out"
        });

        tl.from('#page-1 .paging', {
            y: 50,
            opacity: 0,
            ease: "power1.out"
        });
    }

    show1pg();

    // 두번째 페이지
    function show2pg() {
        if (isAnimating) return;
        isAnimating = true;
        lockUI();
        const isMobile = window.matchMedia("(max-width: 768px)").matches;
        const tl = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
                unlockUI();
            }
        });
        tl.to('#page-1', { opacity: 0, duration: 0.2 })
        .set('#page-1', { display: 'none' })
        .set('#page-2', { display: 'block', opacity: 1 });
        // 페이지2 진입 시 카운트 시작
        startCountOnPage2Enter();
        // count_box -> count-box 오타 수정
        tl.from('#page-2 .poster_03', {
            x: 200,
            opacity: 0,
            duration: 0.2
        });
        tl.from('#page-2 .poster_04', {
            x: 200,
            opacity: 0,
            duration: 0.2
        });
        tl.from('#page-2 .q_select label', {
            x: 200,
            opacity: 0,
            stagger: 0.1
        });
    }
    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return;
        isAnimating = true;
        lockUI();

        const tl = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
                unlockUI();
            }
        });

        tl.to('#page-2', { opacity: 0, duration: 0.2 })
        .set('#page-2', { display: 'none' })
        .set('#page-3', { display: 'block', opacity: 1 });

        tl.from('#page-3 .table_box, #page-3 .submit, #page-3 .description', {
            x: 200,
            opacity: 0,
            stagger: 0.1
        });
    }

    // 버튼 페이지 이동 함수 (설문)
    function pageSelFuc(num, nextFn) {
        if (isBlocked()) return;

        const questionName = 'tadd' + num;
        const checked = $('input[name="' + questionName + '"]:checked, input[name="' + questionName + '[]"]:checked');

        if (checked.length > 0) {
            if (typeof nextFn === 'function') {
                nextFn();
            }
        } else {
            alert("설문을 선택해주세요");
        }
    }

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

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.wrap_form').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);

        let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

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