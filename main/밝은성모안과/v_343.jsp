<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');

    #page_landing_c .wrap_curd label {gap: 0;}
    * {font-family: 'Gmarket Sans', 'Pretendard', sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    html{
        height: 100%;
    }
    main {position: relative;}
	.content {padding: 20px 10px;}
	.content * {padding: 8px 10px;}
    .wrap_form .agBox {margin: 7px auto;}
    .page:not(#page-1){display:none; background-color: #9f4859; padding: 50px 2.415% 50px !important;}
    .paging button {width: 100%; cursor: pointer; background-color: #fff; border-radius: 999px;}
    #page_landing_c .inner {background-color: #9f4859; padding: 50px 2.415% 50px !important;}
    #page_landing_c .page:not(#page-1) .inner {background: #fff; border-radius: 25px;}
    .gage {margin: 4.295% 0 8%;}
    .page:not(#page-1) .paging {width: 65.937%; margin: 0 auto;}

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
    /* .subscribe .content .date {text-align: right;} */

    #page_landing_c main {max-width: 1080px; background-color: #000;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

    #wrap{font-family: 'Gmarket Sans'; overflow: hidden;}
    .top-img {width: 100%; margin: 0 auto;}

    .img-area {position: relative;}
    .img-area .btm_box {position: absolute; bottom: 4%; left: 5%; width: 45.37037%; color: #fff;}
    #page_landing_c .btm_box .agBox label span {color: #fff;}
    #page_landing_c  .img-area .btm_box .agBox {margin: 0 auto 2%; color: #fff; transition: 0s;}
    #page_landing_c  .img-area .btm_box .agBox .btn-agreement {font-weight: 700;}
    #page_landing_c  .img-area .btm_box2 {bottom: 7%; left: 50%; transform: translateX(-50%); width: 67.592593%;}
    #page_landing_c  .img-area .btm_box2 .agBox {margin: 2% auto 0; color: #000;}
    #page_landing_c .btm_box2 .agBox label span {color: #000;}

    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
   
    #page_landing_c .wrap_form {padding: 0; border: none;}
    #page_landing_c .wrap_curd {background: transparent;}
    /* #page_landing_c .wrap_curd .question_container {padding: 10% 4.951% 0;} */
    /* user db입력칸 (이름) */
    /* #page_landing_c .wrap_curd .q_select {display: grid; grid-template-columns: repeat(3, 1fr); gap: 1%; font-size: 150%; flex-grow: 1;} */
    #page_landing_c .description p, #page_landing_c .description .ad_txt {text-align: center; font-family: 'Pretendard'; font-weight: 400;}
    
    #page-1 .poster_01 {position: relative;}
    #page-1 .paging {position: absolute; bottom: 5%; left: 50%; transform: translateX(-50%); width: 90%; text-align: center;}


    #page_landing_c .description {width: 100%; padding: 1.37% 3.9% 3.37%; text-align: center; font-family: 'Pretendard';}
    #page_landing_c .description p {color: #000; padding: 0; font-size: 150%; letter-spacing: -0.02em;}
    #page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}
    #page_landing_c .description .ad_txt,
    #page_landing_c .description .target {color: #000; font-size: 150%; padding: 0; letter-spacing: -0.02em;}

    #page_landing_c .question {position: relative;}
    #page_landing_c .question_box {width: 100%; margin: 6.635% auto 4%;}
    #page_landing_c .question_box  [class^="user_"] {display: flex; align-items: center; justify-content: center; column-gap: 32px;}
    #page_landing_c .question_box > div:not(.formContents),
    #page_landing_c .question_box > .legend {width: 100%; font-size: 150%;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 4.655%;}
    #page_landing_c .legend {flex-shrink: 0; position: relative; display: block; width: 25%; height: 35px; font-size: 167%; font-weight: 600; line-height: 1; letter-spacing: -1.78px; color: #000; text-align: justify;}
    #page_landing_c .legend::after {content: ''; display: inline-block; width: 100%;}
    #page_landing_c .agBox {text-align: center; color: #000; font-size: 180%; margin: 0% auto 1%; font-family: 'Pretendard';}
    #page_landing_c .agBox .legend {max-width: max-content;}
    #page_landing_c .agBox .btn-agreement {line-height: 1;}

    #page_landing_c input[type="checkbox"] + span {color: #000;}
    #page_landing_c input[type="checkbox"]:checked + span:after {border-color: #000;}
    #page_landing_c .agBox label {display: flex; align-items: center; justify-content: center;} 
    #page_landing_c .agBox label span {color: #000; line-height: 1;} 
    .wrap_form .agBox a {color: #000;}

    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* 설문값, 동의, 미동의 버튼 공통 */
    
    #page_landing_c .question_box .q_select label {display: inline-flex; width: 100%; align-items: center; justify-content: center; border-radius:0.5rem; font-size: 275%; text-align: center;  color: #0a151e; font-weight: 400; cursor: pointer; padding: 3% 2%; background-color: #f3f3f3; border-radius: 27px;}
    #page_landing_c .question_box .q_select label.on {background-color: #e1d3d3;}
    #page_landing_c .question_box .q_select label + label {margin-top: 2%;}
    /* #page_landing_c .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000;} */
    /* #page_landing_c .question_box .q_select label.on, label.add3{background-color: #8ed3ff; color:#00385c;} */

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

    .wrap_form .table_box, #page_landing_c .inp {font-size: 315%; text-align: center; line-height: 1; border: 5px solid #d90048; color: #111; min-height: 34px; padding: 3.355% 8.335%; box-sizing: border-box; margin-left: 0; line-height: 1; border-radius: 1.5rem; transition: 0s; font-family: 'Gmarket Sans';}
    #page_landing_c .inp::placeholder {color: #6d6d6d;}
    .wrap_form .table_box {margin-top: 4.655%; color: #464646; font-size: 474% !important; display: block; height: 100%; width: 100%; appearance: none; background: url("//static.savemkt.com/event/v_${eventSeq}/arrow.png") no-repeat right 10% center / 54px 47px;}
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

    #page_landing_c .wrap_curd .submit {width: 90%; margin: 0 auto; padding: 0;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 100%;
        margin: 0 auto 0;
    }

    #page-1 .first,
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
    .popup-box {z-index: 999; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); max-width: 945px; width: 73.541%; margin: 0 auto; padding: 9% 0 3.5%; box-sizing: border-box; display: none; background-color: #fff; border-radius: 25px;}
    .popup-box > .img-area {width: 45.715%; margin: 0 auto;}
    .popup-box.popup_02 > .img-area {width: 60%;}
    .popup-box .btn-box {text-align: center;}
    .popup-box .btn-box .btn-confirm {margin-top: 5%; padding: 0; cursor: pointer; box-sizing: border-box; transition: 0s; width: 33.122%; border-radius: 12px;}
    
    .fixed {
        position: fixed;
        z-index: 9;
        bottom: 0%;
        cursor: pointer;
    }

/* 비디오 영역 */
.video-area {position: relative;}
.video-area .video-box {position: absolute; bottom: 15.2%; left: 3.95%; width: calc(484 / 1080 * 100%); max-width: 484px; aspect-ratio: 484 / 286; overflow: hidden; }
.video-area .video-box.box02 {left: unset; right: 3.75%;}
.video-area .video-box video {display: block; width: 100%; height: 100%; object-fit: cover; margin-top: -0.5%;}

    
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
    .video-area .video-box video {margin-top: -0.2%;}
    #page_landing_c .agBox .btn-agreement {font-size: 90%;}

    .page:not(#page-1) {padding: 25px 2.415% 25px !important;}
    #page_landing_c .page:not(#page-1) .inner {border-radius: 12px; padding: 25px 2.415% 25px !important;}
    #page_landing_c .question_box .q_select label {font-size: 125%; border-radius: 12px;}

    .popup-box {border-radius: 12px; width: 90%;}
    .popup-box > .img-area {width: 67%;}
    .popup-box.popup_02 > .img-area {width: 78%;}
    .popup-box .btn-box .btn-confirm {width: 50%; margin-top: 7%;}

    #page_landing_c .img-area .btm_box .agBox {font-size: 70%; font-weight: 400;}
    #page_landing_c .btm_box .agBox label span {font-size: 80%;}
    #page_landing_c .description p {font-size: 80%;}
    #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 80%; word-break: keep-all;}
    #page_landing_c .agBox label span {font-size: 90%;}
    #page_landing_c .legend {font-size: 90%; height: 25px;}
    #page_landing_c .inp {font-size: 135%; border-radius: 1rem; border-width: 2px; padding: 2.488% 4.335% !important;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 5.1%;}

    .wrap_form .table_box.bottom {padding: 4.7% 4.335% 2.5%; font-size: 202% !important; border-radius: 1rem; border-width: 2px; width: 97%; background-size: 20px 15px; background-position: right 5% center; margin: 4.655% auto;}

    #page_landing_c .agBox {font-size: 90%;}

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
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.gif"></div>
                        <div class="img-area video-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg">
                            <div class="video-box box01">
                                <video id="location01" playsinline autoplay muted loop src="//static.savemkt.com/event/v_${eventSeq}/BEFORE.mp4" type="video/mp4"></video>
                                <script>setTimeout(function(){ $('#location01').trigger('play'); },500);</script>
                            </div>
                            <div class="video-box box02">
                                <video id="location02" playsinline autoplay muted loop src="//static.savemkt.com/event/v_${eventSeq}/AFTER.mp4" type="video/mp4"></video>
                                <script>setTimeout(function(){ $('#location02').trigger('play'); },500);</script>
                            </div>
                        </div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.gif"></div>
                        <div class="inner">
                            <div class="poster_01">
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png"></div>
                                <p class="paging">
                                    <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_next_01.png"></button>
                                </p>
                            </div>
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
                    </section>

                    <section class="page" id="page-2">
                        <div class="inner">
                            <div class="img-area poster_02"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                            <div class="img-area poster_03 gage"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                            <div class="question_box">
                                <div class="q_select">
                                    <label><input type="radio" name="tadd1" value="0.5 이하">0.5 이하</label>
                                    <label><input type="radio" name="tadd1" value="0.5 이상">0.5 이상</label>
                                </div>
                            </div>
                            <p class="paging">
                                <button type="button" onclick="pageSelFuc(1, show3pg)" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png"></button>
                            </p>
                        </div>
                    </section>

                    <div class="overlay"></div>
                    <div class="popup-box popup_01">
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/pop_txt_01.png"></div>	
                        <div class="btn-box">
                            <button type="button" class="btn-confirm"><img src="//static.savemkt.com/event/v_${eventSeq}/pop_btn.png"></button>
                        </div>
                    </div>

                    <section class="page" id="page-3">
                        <div class="inner">
                            <div class="img-area poster_02"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png"></div>
                            <div class="img-area poster_03 gage"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                            <div class="question_box">
                                <div class="q_select">
                                    <label><input type="radio" name="tadd2" value="서울">서울</label>
                                    <label><input type="radio" name="tadd2" value="경기">경기</label>
                                    <label><input type="radio" name="tadd2" value="그 외 지역">그 외 지역</label>
                                </div>
                            </div>
                            <p class="paging">
                                <button type="button" onclick="pageSelFuc(2, show4pg)" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png"></button>
                            </p>
                        </div>
                    </section>

                    <div class="overlay"></div>
                    <div class="popup-box popup_02">
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/pop_txt_02.png"></div>	
                        <div class="btn-box">
                            <button type="button" class="btn-confirm"><img src="//static.savemkt.com/event/v_${eventSeq}/pop_btn.png"></button>
                        </div>
                    </div>

                    <section class="page" id="page-4">
                        <div class="inner">
                            <div class="formGroup">
                                <div class="form_inner">
                                    <div class="question_container">
                                        <div class="q_text img-area">
                                            <img src="//static.savemkt.com/event/v_${eventSeq}/txt.png">
                                        </div>
                                        <div class="img-area poster_03 gage"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_03.png"></div>
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
                                
                                <div class="agBox">
                                    <label><input name="agBox" type="checkbox"><span>(필수) 개인정보 수집 및 이용 동의</span><a href="#" class="btn-agreement">[자세히 보기]</a></label>
                                </div>
            
                                <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>
                            </div>
                            <div class="description">
                                <p id="event-period"></p>
                                <span class="target">대상 : ${resVo.target}</span>
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
    </main>
</body>
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
        sungmoAgreementWithText(`
            개인정보처리방침

            밝은성모안과의원(이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

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

            - 위탁업체: ㈜비올린 / jinginam12@violinmkt.net
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
            이름 : 김승철
            직위 : 경영기획실장
            소속 : 밝은성모안과 경영기획팀
            전화 : 02-2202-1515
            메일 : n1240@naver.com

            ■ 개인정보 처리방침의 변경
            이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
            - 시행일자: 2011년 9월 30일

            ■ 권익침해 구제방법
            고객은 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
            - 개인정보침해신고센터 / privacy.kisa.or.kr / 국번없이 118
            - 대검찰청 사이버수사과 / www.spo.go.kr / 국번없이 1301
            - 경찰청 사이버안전국 / police.go.kr / 국번없이 182
        `)

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

    $('input[name="tadd1"]').on('change', function () {
        if ($(this).val() === "0.5 이상") {
            $('.overlay, .popup_01').show();
            $('input[name="tadd1"]').closest('label').removeClass('on');
        } else {
            $(this).closest('label').addClass('on');
        }
    });

    $('input[name="tadd2"]').on('change', function () {
        $('input[name="tadd2"]').closest('label').removeClass('on');
        if ($(this).val() === "그 외 지역") {
            $('.overlay, .popup_02').show();

        } else {
            $(this).closest('label').addClass('on');
        }
    });

    // popup-confirm > 확인 버튼
    $('.popup_01 .btn-confirm').on('click', function () {
        $('.overlay, .popup_01').hide();

        // ✅ 선택 초기화
        $('input[name="tadd1"]').prop('checked', false);
        $('#page-1 .q_select label').removeClass('on');
    });

    // popup-confirm > 확인 버튼
    $('.popup_02 .btn-confirm').on('click', function () {
        $('.overlay, .popup_02').hide();

        // ✅ 선택 초기화
        $('input[name="tadd2"]').prop('checked', false);
        $('#page-2 .q_select label').removeClass('on');
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

        tl.set('.count_box', {
            top: isMobile ? '35%' : '38%'
        });

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

        tl.from('#page-3 .poster_05', {
            x: 200,
            opacity: 0,
            duration: 0.2
        });

        tl.from('#page-3 .poster_06', {
            x: 200,
            opacity: 0,
            duration: 0.2
        });

        tl.from('#page-3 .q_select label', {
            x: 200,
            opacity: 0,
            stagger: 0.1
        });
    }

    // 마지막 페이지
    function show4pg() {
        if (isAnimating) return;
        isAnimating = true;
        lockUI();

        const tl = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
                unlockUI();
            }
        });

        tl.to('#page-3', { opacity: 0, duration: 0.2 })
        .set('#page-3', { display: 'none' })
        .set('#page-4', { display: 'block', opacity: 1 });

        tl.from('#page-4 .table_box, #page-4 .submit, #page-4 .description', {
            x: 200,
            opacity: 0,
            stagger: 0.1
        });
    }

    // 버튼 페이지 이동 함수 (설문)
    function pageSelFuc(num, nextFn) {
        if (isBlocked()) return;

        const checked = $('input[name="tadd' + num + '"]:checked');

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

        let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
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